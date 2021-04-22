package sportsinformation.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import sportsinformation.dao.ClassesRepository;
import sportsinformation.dao.EventRepository;
import sportsinformation.dao.GroupRouteRepository;
import sportsinformation.dao.UserRepository;
import sportsinformation.entity.Classes;
import sportsinformation.entity.Event;
import sportsinformation.entity.User;
import sportsinformation.exception.CustomerException;
import sportsinformation.service.EventService;
import sportsinformation.service.UserService;
import sportsinformation.util.Page;

import javax.persistence.EntityManager;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.JoinType;
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
public class EventServiceImpl implements EventService {


	@Autowired
	private EntityManager entityManager;

	@Autowired
	private EventRepository eventRepository;

	@Autowired
	private GroupRouteRepository groupRouteRepository;


	@Override public void add(Event event) {

	}

	@Override public Event update(Event event) {
		return null;
	}

	@Override public Event delete(Integer id) {
		return null;
	}

	@Override
	public org.springframework.data.domain.Page<Event> get(Event event, Page page) {
		// 构造条件
		Specification<Event> specification = (Specification<Event>) (root, criteriaQuery, criteriaBuilder) -> {
			List<Predicate> predicateTagList = new ArrayList<>();
			if (!StringUtils.isEmpty(event.getStartTime()))
				predicateTagList.add(criteriaBuilder.between(root.get("startTime"), event.getStartTime(),event.getEndTime()));
			Predicate p1 = criteriaBuilder.and(predicateTagList.toArray(new Predicate[predicateTagList.size()]));
			return criteriaQuery.where(p1).getRestriction();
		};
		PageRequest of = null;
		if (StringUtils.isEmpty(page.getSortBy()))
			of = PageRequest.of(page.getPage()-1, page.getSize());
		else
			of = PageRequest.of(page.getPage()-1, page.getSize(),Sort.Direction.DESC, page.getSortBy());

		return eventRepository.findAll(specification,of);
	}

	@Override public List<Event> findAllByWhere(Event event, Page page) {
		// 构造条件
		Specification<Event> specification = (Specification<Event>) (root, criteriaQuery, criteriaBuilder) -> {
			List<Predicate> predicateTagList = new ArrayList<>();
			if (!StringUtils.isEmpty(event.getType()))
				predicateTagList.add(criteriaBuilder.equal(root.get("type"), event.getType()));
			if (!StringUtils.isEmpty(event.getXianZhi()))
				predicateTagList.add(criteriaBuilder.equal(root.get("xianZhi"), event.getXianZhi()));
			if (!StringUtils.isEmpty(event.getSignStatus()))
				predicateTagList.add(criteriaBuilder.equal(root.get("signStatus"), event.getSignStatus()));
			if (!StringUtils.isEmpty(event.getEventName()))
				predicateTagList.add(criteriaBuilder.like(root.get("eventName"), "%"+event.getEventName()+"%"));
			if (!StringUtils.isEmpty(event.getCollegeId()))
				predicateTagList.add(criteriaBuilder.equal(root.get("collegeId"),event.getCollegeId()));
			predicateTagList.add(criteriaBuilder.equal(root.get("state"), 0));
			Predicate p1 = criteriaBuilder.and(predicateTagList.toArray(new Predicate[predicateTagList.size()]));
			return criteriaQuery.where(p1).getRestriction();
		};
		PageRequest of = null;
		if (StringUtils.isEmpty(page.getSortBy()))
			of = PageRequest.of(page.getPage()-1, page.getSize());
		else
			of = PageRequest.of(page.getPage()-1, page.getSize(),Sort.Direction.DESC, page.getSortBy());
		List<Event> contents = eventRepository.findAll(specification, of).getContent();
		// 找到分组组数
		if (contents != null){
			if (!StringUtils.isEmpty(event.getSignStatus()) && event.getSignStatus()==2){
				for (Event content:contents){
					Integer maxGroup = groupRouteRepository.findMaxGroup(content.getEventId());
					content.setGroupRouteCount(maxGroup);
				}
			}
		}
		return contents;
	}

}
