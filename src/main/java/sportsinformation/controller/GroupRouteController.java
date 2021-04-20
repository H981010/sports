package sportsinformation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import sportsinformation.dao.EventRepository;
import sportsinformation.dao.GroupRouteRepository;
import sportsinformation.data.ResultVo;
import sportsinformation.entity.*;
import sportsinformation.exception.CustomerException;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * @ClassName: GroupRouteController
 * @Description:
 * @Author:
 * @Date: 2021/4/5 18:12
 * @Version: 1.0
 **/
@RestController
@RequestMapping("/group/route")
public class GroupRouteController {

	@Autowired
	private EventRepository eventRepository;

	@Autowired
	private GroupRouteRepository groupRouteRepository;

	@PostMapping
	public ResultVo doGroupRoute(int eventId){
		Event event = eventRepository.findById(eventId).orElse(null);
		if (event == null)
			throw new CustomerException("比赛信息不存在");
		// 个人赛分组编道
		Map<Integer,List<GroupRoute>> groupRouteMap = new HashMap<>();
		if (event.getType() == 0){
			if (event.getUsers() != null && event.getUsers().size()>0){
				List<User> users = new ArrayList<>(event.getUsers());
				int average = getAverage(users.size());
				// 分组
				int groups = users.size() % average == 0 ? users.size()/average:users.size()/average+1;
				for (int i=0;i<groups;i++){
					List<GroupRoute> groupRoutes = new ArrayList<>();
					for (int j=0;j<users.size();){
						if (groupRoutes.size() == average)
							break;
						GroupRoute groupRoute = new GroupRoute();
						groupRoute.setEventId(eventId);
						groupRoute.setGroupsId(i+1);
						groupRoute.setRoutId(groupRoutes.size()+1);
						groupRoute.setUser(users.get(j));
						if (groupRoutes.size() != 0){
							// 判断是否存在同班级的
							int classId = users.get(j).getClasses().getClassesId();
							List<GroupRoute> classmate = groupRoutes.stream()
									.filter(f -> f.getUser().getClasses().getClassesId().equals(classId))
									.collect(Collectors.toList());
							if (classmate.size() >= 2){
								j++;
								continue;
							}
						}
						groupRoutes.add(groupRoute);
						users.remove(users.get(j));
					}
					groupRouteMap.put(i+1, groupRoutes);
				}
			}
		}else{
			// 团队赛分组编道  常规6组，
			List<Group> userGroups = new ArrayList<>(event.getGroups());
			int average = getAverage(userGroups.size());
			// 分组
			int groups = userGroups.size() % average == 0 ? userGroups.size()/average:userGroups.size()/average+1;
			for (int i=0;i<groups;i++){
				List<GroupRoute> groupRoutes = new ArrayList<>();
				for (int j=0;j<userGroups.size();){
					if (groupRoutes.size() == average)
						break;
					GroupRoute groupRoute = new GroupRoute();
					groupRoute.setEventId(eventId);
					groupRoute.setGroupsId(i+1);
					groupRoute.setRoutId(groupRoutes.size()+1);
					groupRoute.setGroup(userGroups.get(j));
					groupRoutes.add(groupRoute);
					userGroups.remove(userGroups.get(j));
				}
				groupRouteMap.put(i+1, groupRoutes);
			}
		}
		// 分组保存
		for (Integer key:groupRouteMap.keySet()){
			List<GroupRoute> groupRoutes = groupRouteMap.get(key);
			groupRouteRepository.saveAll(groupRoutes);
		}
		return new ResultVo(groupRouteRepository.findAllByEventId(eventId));
	}


	private int getAverage(int size){
		int average = 6;
		// 固定6个赛道，平均6个人分为一组，其他情况时可按照其他情况分组
		// 按照6个人分组时出现多余人数，可进行 5 4 人分组
		int differ_four = 4 - size%4 == 4 ? 0:size%4;
		int differ_five = 5 - size%5 == 5 ? 0:size%5;
		int differ_six =  6 - size%6 == 6 ? 0:size%6;
		if ( differ_six >0 && differ_six < 3){
			if (differ_five == 0)
				average = 5;
			else if (differ_four == 0)
				average = 4;
			else if (differ_five == differ_four)
				average = 4;
			else if (differ_five == 3 || differ_five == 4)
				average = 5;
			else
				average = 4;
		}
		return average;
	}
}
