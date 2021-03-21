package sportsinformation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import sportsinformation.dao.ClassesRepository;
import sportsinformation.dao.CollegeRepository;
import sportsinformation.dao.UserRepository;
import sportsinformation.data.Message;
import sportsinformation.data.ResultVo;
import sportsinformation.entity.User;
import sportsinformation.service.UserService;
import sportsinformation.util.Page;
import sportsinformation.vo.ClassesVo;
import sportsinformation.vo.CollegeVo;
import sportsinformation.vo.UserVo;

/**
 * @ClassName: UserController
 * @Description:
 * @Author:
 * @Date: 2021/3/6 14:54
 * @Version: 1.0
 **/
@RestController
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private UserService userService;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private CollegeRepository collegeRepository;

	@Autowired
	private ClassesRepository classesRepository;

	@GetMapping("/infos")
	public ResultVo getInfos(User user, Page page){
		if (user == null)
			return new ResultVo(userService.get(new User(),new Page()));
		// 分页条件查询信息
		return new ResultVo(userService.get(user,page));
	}

	/**
	 * 修改用户权限
	 */
	@PutMapping("/power")
	public void updatePower(UserVo vo){
		if (vo.getUserIds()!=null && vo.getUserIds().size()>0)
			userService.updatePower(vo.getUserIds());
	}

	/**
	 * 新增学院
	 */
	@PostMapping("/add/college")
	public ResultVo addCollege(CollegeVo collegeVo){
		if (collegeVo.getColleges() != null && collegeVo.getColleges().size()>0)
			collegeRepository.saveAll(collegeVo.getColleges());
		return new ResultVo(Message.MESSAGE.success);
	}

	/**
	 * 修改学院信息
	 */
	@PutMapping("/update/college")
	public ResultVo updateCollege(CollegeVo collegeVo){
		if (collegeVo.getColleges() != null && collegeVo.getColleges().size()>0)
			collegeRepository.saveAll(collegeVo.getColleges());
		return new ResultVo(Message.MESSAGE.success);
	}

	/**
	 * 删除学院
	 */
	@DeleteMapping("/delete/college")
	public ResultVo deleteCollege(CollegeVo collegeVo){
		if (collegeVo.getColleges() != null && collegeVo.getColleges().size()>0)
			collegeRepository.deleteAll(collegeVo.getColleges());
		return new ResultVo(Message.MESSAGE.success);
	}

	/**
	 * 新增班级
	 */
	@PostMapping("/add/classes")
	public ResultVo addClasses(ClassesVo classesVo){
		if (classesVo.getClassesList() != null && classesVo.getClassesList().size()>0)
			classesRepository.saveAll(classesVo.getClassesList());
		return new ResultVo(Message.MESSAGE.success);
	}

	/**
	 * 修改班级信息
	 */
	@PutMapping("/update/classes")
	public ResultVo updateClasses(ClassesVo classesVo){
		if (classesVo.getClassesList() != null && classesVo.getClassesList().size()>0)
			classesRepository.saveAll(classesVo.getClassesList());
		return new ResultVo(Message.MESSAGE.success);
	}

	/**
	 * 删除班级
	 */
	@DeleteMapping("/delete/classes")
	public ResultVo deleteClasses(ClassesVo classesVo){
		if (classesVo.getClassesList() != null && classesVo.getClassesList().size()>0)
			classesRepository.deleteAll(classesVo.getClassesList());
		return new ResultVo(Message.MESSAGE.success);
	}

}
