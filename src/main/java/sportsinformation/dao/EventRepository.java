package sportsinformation.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import sportsinformation.entity.College;
import sportsinformation.entity.Event;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public interface EventRepository
        extends JpaRepository<Event, Integer>, JpaSpecificationExecutor<Event> {

	@Modifying
	@Transactional
	@Query("delete from Event e where e.eventId = ?1 and e.state = 0")
	void deleteByEventId(Integer eventId);

	@Modifying
	@Transactional
	@Query("delete from Event e where e.eventId in ?1 and e.state = 0")
	void deleteByEventIds(List<Integer> eventIds);

	@Query("select e from Event e order by e.state asc ")
	List<Event> findAllOrOrderByState();
}
