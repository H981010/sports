package sportsinformation.service;

import sportsinformation.entity.User;

/**
 * @ClassName: UserService
 * @Description:
 * @Author:
 * @Date: 2021/3/6 13:55
 * @Version: 1.0
 **/
public interface UserService {

	/**
	 *  用户添加
	 */
	void add(User user);

	/**
	 *  用户信息修改
	 */
	User update(User user);

	/**
	 *  删除用户
	 */
	User delete(Integer id);

	/**
	 *  获取用户信息
	 */
	User get(String jobNumber,String password);

}
