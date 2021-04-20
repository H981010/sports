package sportsinformation.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import sportsinformation.dao.ClassesRepository;
import sportsinformation.dao.UserRepository;
import sportsinformation.entity.Classes;
import sportsinformation.entity.User;
import sportsinformation.exception.CustomerException;
import sportsinformation.service.UserService;
import sportsinformation.util.Page;

import javax.persistence.EntityManager;
import javax.persistence.criteria.Predicate;
import java.util.ArrayList;
import java.util.List;

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

	@Autowired
	private EntityManager entityManager;

	@Autowired
	private ClassesRepository classesRepository;


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
		user.setPower(1);
		Classes classes = classesRepository.getOne(user.getClasses().getClassesId());
		System.out.println(classes.toString());
		if (classes.getClassName() != null){
			user.setClasses(classes);
			userRepository.save(user);
		}

	}

	@Override
	public User update(User user) {
		User exitUser = userRepository.findById(user.getUserId()).get();
		exitUser.setUserName(user.getUserName());
		exitUser.setEmail(user.getEmail());
		exitUser.setAge(user.getAge());
		exitUser.setHeight(user.getHeight());
		exitUser.setHobby(user.getHobby());
		exitUser.setPassword(user.getPassword());
		exitUser.setSex(user.getSex());
		exitUser.setWeight(user.getHeight());
		exitUser.setTelephone(user.getTelephone());
		return userRepository.save(exitUser);
	}

	@Override
	public User delete(Integer id) {
		return null;
	}

	@Override
	public User get(String jobNumber,String password,Integer identity) {
		User user = userRepository.findByJobNumberAndPassword(jobNumber,password,identity);
		if (user == null)
			throw new CustomerException("不存在该用户,请先注册");
		return user;
	}

	@Override
	public org.springframework.data.domain.Page<User> get(User user, Page page) {
		// 构造条件
		Specification<User> specification = (Specification<User>) (root, criteriaQuery, criteriaBuilder) -> {
			List<Predicate> predicateTagList = new ArrayList<>();
			if (!StringUtils.isEmpty(user.getClasses().getCollege().getCollegeId()))
				predicateTagList.add(criteriaBuilder.equal(root.get("collegeId"), user.getClasses().getCollege().getCollegeId()));
			if (!StringUtils.isEmpty(user.getClasses().getClassesId()))
				predicateTagList.add(criteriaBuilder.equal(root.get("classesId"), user.getClasses().getClassesId()));
			if (!StringUtils.isEmpty(user.getUserName()))
				predicateTagList.add(criteriaBuilder.like(root.get("username"), "%"+user.getUserName()+"%"));
			if (!StringUtils.isEmpty(user.getJobNumber()))
				predicateTagList.add(criteriaBuilder.equal(root.get("jobNumber"), user.getJobNumber()));
			Predicate p1 = criteriaBuilder.and(predicateTagList.toArray(new Predicate[predicateTagList.size()]));
			return criteriaQuery.where(p1).getRestriction();
		};
		PageRequest of = null;
		if (StringUtils.isEmpty(page.getSortBy()))
			of = PageRequest.of(page.getPage(), page.getSize());
		else
			of = PageRequest.of(page.getPage(), page.getSize(),Sort.Direction.DESC, page.getSortBy());

		return userRepository.findAll(specification,of);
	}

	@Override
	public void updatePower(List<Integer> userIds) {
		List<User> users = userRepository.findAllById(userIds);
		for (User user:users)
			user.setPower(0);
		userRepository.saveAll(users);
	}
}
