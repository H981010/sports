package sportsinformation.controller;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import sportsinformation.dao.EventRepository;
import sportsinformation.data.ResultVo;
import sportsinformation.entity.Event;
import sportsinformation.entity.User;
import sportsinformation.exception.CustomerException;
import sportsinformation.service.EventService;
import sportsinformation.service.UserService;
import sportsinformation.service.impl.EventServiceImpl;
import sportsinformation.util.Page;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * @ClassName: UserController
 * @Description:
 * @Author:
 * @Date: 2021/3/7 17:57
 * @Version: 1.0
 **/
@RestController
@RequestMapping("/event")
public class EventController {

	@Autowired
	private EventRepository eventRepository;

	@Autowired
	private HttpSession session;

	@Autowired
	private EventService eventService;

	/**
	 * 新增赛事
	 */
	@PostMapping("/add")
	public ResultVo addEvent(Event event){
		Object object = session.getAttribute("user");
		if (object == null)
			throw new CustomerException("未登录，请先登录");
		User user = (User) object;
		if (user.getPower() != 0)
			throw new CustomerException("无权限编辑");
		if (StringUtils.isEmpty(event.getEventName()))
			throw new CustomerException("比赛名称不能为空");
		if (StringUtils.isEmpty(event.getPlace()))
			throw new CustomerException("比赛场地不能为空");
		if (event.getType() == null)
			throw new CustomerException("比赛类型不能为空");
		event.setState(0);
		event.setSignStatus(0);
		eventRepository.save(event);
		return new ResultVo();
	}

	/**
	 *  根据id获取赛事信息
	 */
	@GetMapping("/{id}")
	public ResultVo getEvent(@PathVariable Integer id){
		Event event = eventRepository.findById(id).orElse(null);
		return new ResultVo(event);
	}

	/**
	 * 开通报名
	 */
	@PostMapping("/pub")
	public ResultVo pubEvent(@RequestParam(name = "ids[]") Integer[] ids){
		Object object = session.getAttribute("user");
		if (object == null)
			throw new CustomerException("未登录，请先登录");
		User user = (User) object;
		if (user.getPower() != 0)
			throw new CustomerException("无权限编辑");
		List<Event> events = new ArrayList<>();
		for (Integer id:ids){
			Event event = eventRepository.findById(id).orElse(null);
			if (event == null)
				throw new CustomerException("比赛信息不存在");
			if (event.getState() >= 1)
				throw new CustomerException("比赛正在进行中，无法开通报名");
			if (event.getSignStatus() == 2)
				throw new CustomerException("比赛已结束报名，无法开启报名通道");
			event.setSignStatus(1);
			events.add(event);
		}
		eventRepository.saveAll(events);
		return new ResultVo();
	}

	/**
	 * 关闭报名
	 */
	@PostMapping("/pub/no")
	public ResultVo noPubEvent(@RequestParam(name = "ids[]") Integer[] ids){
		Object object = session.getAttribute("user");
		if (object == null)
			throw new CustomerException("未登录，请先登录");
		User user = (User) object;
		if (user.getPower() != 0)
			throw new CustomerException("无权限编辑");
		List<Event> events = new ArrayList<>();
		for (Integer id:ids){
			Event event = eventRepository.findById(id).orElse(null);
			if (event == null)
				throw new CustomerException("比赛信息不存在");
			if (event.getState() >= 1)
				throw new CustomerException("比赛未发布，无法取消");
			event.setSignStatus(2);
			events.add(event);
		}
		eventRepository.saveAll(events);
		return new ResultVo();
	}

	/**
	 *  报名或者取消报名
	 */
	@PutMapping("/{type}")
	public ResultVo update(int eventId,@PathVariable(name = "type")String type){
		// 报名修改
		Object object = session.getAttribute("user");
		if (object == null){
			throw new CustomerException("未登录，请先登录");
		}else{
			User user = (User) object;
			// 报名
			Event event1 = eventRepository.findById(eventId).orElse(null);
			if (event1 == null)
				throw new CustomerException("未找到该比赛");
			if (type.equalsIgnoreCase("in")){
				if (event1.getUsers() != null){
					if (event1.getUsers().stream().map(User::getUserId).collect(Collectors.toList()).contains(user.getUserId()))
						throw new CustomerException("已报名该比赛");
				}
				List<User> users = event1.getUsers() != null ? event1.getUsers() : new ArrayList<>();
				users.add(user);
				event1.setUsers(users);
				eventRepository.save(event1);
			}
			// 退出
			if (type.equalsIgnoreCase("out")){
				if (event1.getUsers() == null){
					throw new CustomerException("未报名该比赛");
				}
				if (!event1.getUsers().stream().map(User::getUserId).collect(Collectors.toList()).contains(user.getUserId()))
					throw new CustomerException("未报名该比赛");
				List<User> users = event1.getUsers();
				for (User user1:users){
					if (user1.getUserId().equals(user.getUserId())){
						users.remove(user1);
					}
				}
				event1.setUsers(users);
				eventRepository.save(event1);
			}
		}
		return new ResultVo();
	}

	/**
	 *  修改比赛信息
	 */
	@PutMapping("/update")
	public ResultVo update(Event event){
		Event exitEvent = eventRepository.findById(event.getEventId()).orElse(null);
		if (exitEvent == null)
			throw new CustomerException("比赛不存在");
		User user = (User) session.getAttribute("user");
		if (user == null || user.getPower() != 0)
			throw new CustomerException("未登录或无权限修改");
		if (event.getState() != 0)
			throw new CustomerException("比赛已开始，不能修改信息");
		if (StringUtils.isEmpty(event.getEventName()))
			throw new CustomerException("比赛名称不能为空");
		if (StringUtils.isEmpty(event.getPlace()))
			throw new CustomerException("比赛场地不能为空");
		if (event.getType() == null)
			throw new CustomerException("比赛类型不能为空");
		if (event.getStartTime() == null)
			throw new CustomerException("比赛时间不能为空");
		exitEvent.setEventName(event.getEventName());
		exitEvent.setPlace(event.getPlace());
		exitEvent.setType(event.getType());
		exitEvent.setStartTime(event.getStartTime());
		exitEvent.setDescription(event.getDescription());
		exitEvent.setReShu(event.getReShu());
		exitEvent.setXianZhi(event.getXianZhi());
		exitEvent.setRule(event.getRule());
		exitEvent.setSignStatus(event.getSignStatus());
		eventRepository.save(exitEvent);
		return new ResultVo();
	}

	/**
	 * 删除赛事
	 */
	@DeleteMapping("/{eventId}")
	public ResultVo deleteEvent(@PathVariable Integer eventId){
		eventRepository.deleteById(eventId);
		return new ResultVo();
	}

	/**
	 * 批量删除赛事
	 */
	@DeleteMapping("/delete")
	public ResultVo deleteEvent(@RequestParam(name = "eventIds[]") Integer[] eventIds){
		eventRepository.deleteByEventIds(Arrays.asList(eventIds));
		return new ResultVo();
	}


	/**
	 * 获取赛事信息（状态排序）
	 */
	@GetMapping("/get/ready/info")
	public ResultVo getEvents(){
		return new ResultVo(eventRepository.findAllOrOrderByState());
	}


	/**
	 * 获取赛事信息  分页
	 */
	@GetMapping("/get/where/info")
	public ResultVo getEvents(Event event,Page page){
		return new ResultVo(eventService.findAllByWhere(event, page));
	}


	/**
	 * 获取赛事信息 分页
	 */
	@GetMapping("/get/info")
	public ResultVo getEventInfo(Event event,Page page){
		return new ResultVo(eventService.get(event, page));
	}
}
