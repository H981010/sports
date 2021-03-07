package sportsinformation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import sportsinformation.entity.User;
import sportsinformation.exception.CustomerException;
import sportsinformation.service.UserService;

import javax.servlet.http.HttpSession;

/**
 * @ClassName: LoginController
 * @Description:
 * @Author:
 * @Date: 2021/3/6 14:44
 * @Version: 1.0
 **/

@Controller
@RequestMapping("/login")
public class LoginController {

	@Autowired
	private HttpSession session;

	@Autowired
	private UserService userService;

	/**
	 * 登录
	 */
	@GetMapping("/in")
	public CustomerException in(String jobNumber,String password){
		User user = userService.get(jobNumber, password);
		if (user == null)
			throw new CustomerException("密码错误");

		session.setAttribute("user", user);
		return new CustomerException("1","登录成功");
	}

	/**
	 * 登出
	 */
	@GetMapping("/out")
	public String out(){
		if (session.getAttribute("user") != null)
			session.removeAttribute("user");
		return "redirect:/index/";
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
