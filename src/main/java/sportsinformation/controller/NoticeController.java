package sportsinformation.controller;
/*
 * Title: 	  TRS海思智媒云服务
 * Copyright: Copyright (c) 2004-2021, 拓尔思信息技术股份有限公司. All rights reserved.
 * License:   see the license file.
 * Company:   拓尔思信息技术股份有限公司(www.trs.com.cn)
 *
 * Created: hu.taoquan@2021/4/5 19:00
 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import sportsinformation.dao.NoticeRepository;
import sportsinformation.data.ResultVo;
import sportsinformation.entity.Notice;
import sportsinformation.entity.User;
import sportsinformation.exception.CustomerException;

import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * @ClassName: NoticeController
 * @Description:
 * @Author:
 * @Date: 2021/4/5 19:00
 * @Version: 1.0
 **/
@RestController
@RequestMapping("/notice")
public class NoticeController {

	@Autowired
	private NoticeRepository noticeRepository;

	@Autowired
	private HttpSession session;

	/**
	 *  新增公告
	 */
	@PostMapping("/add")
	public ResultVo add(Notice notice){
		Object object = session.getAttribute("user");
		if (object == null)
			throw new CustomerException("未登录，请先登录");
		User user = (User) object;
		if (user.getPower() != 0)
			throw new CustomerException("无权限编辑");
		if (StringUtils.isEmpty(notice.getTitle()))
			throw new CustomerException("标题不能为空");
		if (StringUtils.isEmpty(notice.getContent()))
			throw new CustomerException("内容不能为空");
		notice.setUser(user);
		notice.setStatus(0);
		noticeRepository.save(notice);
		return new ResultVo();
	}

	/**
	 *  修改公告,仅限于未发布
	 */
	@PutMapping("/update")
	public ResultVo update(Notice notice){
		Object object = session.getAttribute("user");
		if (object == null)
			throw new CustomerException("未登录，请先登录");
		User user = (User) object;
		if (user.getPower() != 0)
			throw new CustomerException("无权限编辑");
		Notice exitNotice = noticeRepository.findById(notice.getId()).orElse(null);
		if (exitNotice == null)
			throw new CustomerException("发布信息不存在");
		if (exitNotice.getStatus().equals(1))
			throw new CustomerException("该公告已发布");
		if (StringUtils.isEmpty(notice.getTitle()))
			throw new CustomerException("标题不能为空");
		if (StringUtils.isEmpty(notice.getContent()))
			throw new CustomerException("内容不能为空");
		exitNotice.setTitle(notice.getTitle());
		exitNotice.setTitle(notice.getContent());
		noticeRepository.save(exitNotice);
		return new ResultVo();
	}

	/**
	 *  发布
	 */
	@PutMapping("/publish")
	public ResultVo publish(int id){
		Object object = session.getAttribute("user");
		if (object == null)
			throw new CustomerException("未登录，请先登录");
		User user = (User) object;
		if (user.getPower() != 0)
			throw new CustomerException("无权限编辑");
		Notice exitNotice = noticeRepository.findById(id).orElse(null);
		if (exitNotice == null)
			throw new CustomerException("发布信息不存在");
		if (exitNotice.getStatus().equals(1))
			throw new CustomerException("该公告已发布");
		exitNotice.setStatus(1);
		exitNotice.setDate(new Date());
		noticeRepository.save(exitNotice);
		return new ResultVo();
	}

	/**
	 *  取消发布
	 */
	@PutMapping("/no/publish")
	public ResultVo unPublish(int id){
		Object object = session.getAttribute("user");
		if (object == null)
			throw new CustomerException("未登录，请先登录");
		User user = (User) object;
		if (user.getPower() != 0)
			throw new CustomerException("无权限编辑");
		Notice exitNotice = noticeRepository.findById(id).orElse(null);
		if (exitNotice == null)
			throw new CustomerException("发布信息不存在");
		if (exitNotice.getStatus().equals(0))
			throw new CustomerException("该公告未发布无法取消");
		exitNotice.setStatus(0);
		noticeRepository.save(exitNotice);
		return new ResultVo();
	}

	/**
	 *  删除公告
	 */
	@DeleteMapping("/delete")
	public ResultVo delete(int id){
		Object object = session.getAttribute("user");
		if (object == null)
			throw new CustomerException("未登录，请先登录");
		User user = (User) object;
		if (user.getPower() != 0)
			throw new CustomerException("无权限编辑");
		Notice exitNotice = noticeRepository.findById(id).orElse(null);
		if (exitNotice == null)
			throw new CustomerException("发布信息不存在");
		noticeRepository.delete(exitNotice);
		return new ResultVo();
	}
}
