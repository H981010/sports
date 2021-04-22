package sportsinformation.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import sportsinformation.entity.GroupRoute;
import sportsinformation.entity.User;

import java.util.List;

@Repository
public interface GroupRouteRepository
        extends JpaRepository<GroupRoute, Integer>, JpaSpecificationExecutor<GroupRoute> {

	List<GroupRoute> findAllByEventId(Integer eventId);

	@Query("select max(g.groupsId) from GroupRoute g where g.eventId = ?1")
	Integer findMaxGroup(Integer eventId);

}
