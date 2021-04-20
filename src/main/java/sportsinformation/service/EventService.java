package sportsinformation.service;

import sportsinformation.entity.Event;
import sportsinformation.entity.User;
import sportsinformation.util.Page;

import java.util.List;

/**
 * @ClassName: UserService
 * @Description:
 * @Author:
 * @Date: 2021/3/6 13:55
 * @Version: 1.0
 **/
public interface EventService {

	/**
	 *  赛事添加
	 */
	void add(Event event);

	/**
	 *  赛事信息修改
	 */
	Event update(Event event);

	/**
	 *  删除赛事
	 */
	Event delete(Integer id);


	/**
	 *  获取赛事信息,分页条件查询
	 */
	org.springframework.data.domain.Page<Event> get(Event event, Page page);

	/**
	 *  根据条件查询比赛信息列表
	 */
	List<Event> findAllByWhere(Event event, Page page);


}
