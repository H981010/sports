package sportsinformation.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import sportsinformation.dao.UserRepository;
import sportsinformation.entity.User;
import sportsinformation.exception.CustomerException;
import sportsinformation.service.UserService;

/**
 * @ClassName: UserServiceImpl
 * @Description:
 * @Author:
 * @Date: 2021/3/6 14:01
 * @Version: 1.0
 **/
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;


	@Override
	public void add(User user) {
		if (StringUtils.isEmpty(user.getUserName()))
			throw new CustomerException("用户名不能为空");
		if (StringUtils.isEmpty(user.getJobNumber()))
			throw new CustomerException("工号不能为空");
		if (StringUtils.isEmpty(user.getPassword()))
			throw new CustomerException("登录密码不能为空");
		// 查询是否有同名
		User exitUser = userRepository.findByJobNumber(user.getJobNumber());
		if (exitUser != null&& exitUser.getUserId()!=null)
			throw new CustomerException("该工号已存在，请修改");
		// 注册用户
		userRepository.save(user);
	}

	@Override
	public User update(User user) {
		return null;
	}

	@Override
	public User delete(Integer id) {
		return null;
	}

	@Override
	public User get(String jobNumber,String password) {
		User user = userRepository.findByJobNumber(jobNumber);
		if (user == null)
			throw new CustomerException("不存在该用户,请先注册");
		return userRepository.findByJobNumberAndPassword(jobNumber, password);
	}
}
