package sportsinformation.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import sportsinformation.entity.User;

import java.util.List;

@Repository
public interface UserRepository
        extends JpaRepository<User, Integer>, JpaSpecificationExecutor<User> {

	@Query("select u from User u where u.jobNumber = ?1")
	User findByJobNumber(String jobNumber);

	@Query("select u from User u where u.jobNumber = ?1 and u.password = ?2")
	User findByJobNumberAndPassword(String jobNumber,String password);

	@Query("select u from User u where u.jobNumber = ?1 and u.password = ?2 and u.power=?3")
	User findByJobNumberAndPassword(String jobNumber,String password,Integer identity);
}
