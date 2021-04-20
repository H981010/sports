package sportsinformation.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import sportsinformation.entity.Event;
import sportsinformation.entity.MaxScore;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public interface MaxScoreRepository
        extends JpaRepository<MaxScore, Integer>, JpaSpecificationExecutor<MaxScore> {

	@Query("select e from MaxScore e join User u on e.user = u.userId where u.sex = ?1")
	List<MaxScore> findAllByUserSex(String sex);
}
