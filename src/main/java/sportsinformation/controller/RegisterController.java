package sportsinformation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import sportsinformation.dao.ClassesRepository;
import sportsinformation.dao.CollegeRepository;
import sportsinformation.data.ResultVo;
import sportsinformation.entity.Classes;
import sportsinformation.entity.College;
import sportsinformation.entity.User;
import sportsinformation.exception.CustomerException;
import sportsinformation.service.UserService;
import sun.reflect.generics.repository.ClassRepository;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @ClassName: RegisterController
 * @Description:
 * @Author:
 * @Date: 2021/3/6 17:11
 * @Version: 1.0
 **/
@RestController
@RequestMapping("/register")
public class RegisterController {

	@Autowired
	private HttpSession session;

	@Autowired
	private UserService userService;

	@Autowired
	private CollegeRepository collegeRepository;

	@Autowired
	private ClassesRepository classesRepository;


	@GetMapping("/college")
	public ResultVo getColleges(){
		List<College> colleges = collegeRepository.findAll();
		if (colleges == null || colleges.size() == 0)
			throw new CustomerException("无学院信息");
		System.out.println(colleges);
		return new ResultVo(colleges);
	}

	@GetMapping("/classes")
	public ResultVo getClasses(Integer id){
		List<Classes> classes = classesRepository.findAllByCollegeId(id);
		return new ResultVo(classes);
	}

	/**
	 * 注册
	 */
	@PostMapping("/register")
	public boolean  register(User user){
		userService.add(user);
		return true;
	}

}
