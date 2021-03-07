package sportsinformation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import sportsinformation.dao.UserRepository;
import sportsinformation.data.ResultVo;
import sportsinformation.entity.User;
import sportsinformation.service.UserService;
import sportsinformation.util.Page;
import sportsinformation.vo.UserVo;

/**
 * @ClassName: UserController
 * @Description:
 * @Author:
 * @Date: 2021/3/6 14:54
 * @Version: 1.0
 **/
@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private UserService userService;

	@Autowired
	private UserRepository userRepository;

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
}
