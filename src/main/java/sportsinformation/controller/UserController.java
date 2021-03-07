package sportsinformation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import sportsinformation.entity.User;
import sportsinformation.service.UserService;

import javax.servlet.http.HttpSession;

/**
 * @ClassName: UserController
 * @Description:
 * @Author:
 * @Date: 2021/3/7 17:57
 * @Version: 1.0
 **/
@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private HttpSession session;


	/**
	 * 修改用户信息
	 */
	@PutMapping("/update")
	public void updatePower(User user){
		User update = userService.update(user);
		session.setAttribute("user", update);
	}
}
