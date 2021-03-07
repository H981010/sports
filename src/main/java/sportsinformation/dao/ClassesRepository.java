package sportsinformation.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import sportsinformation.entity.Classes;
import sportsinformation.entity.College;

import java.util.List;

@Repository
public interface ClassesRepository
        extends JpaRepository<Classes, Integer>, JpaSpecificationExecutor<Classes> {

	@Query("select c from Classes c where c.collegeId = ?1")
	List<Classes> findAllByCollegeId(Integer id);
}
