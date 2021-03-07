package sportsinformation.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import sportsinformation.entity.User;

@Repository
public interface UserRepository
        extends JpaRepository<User, Integer>, JpaSpecificationExecutor<User> {

	@Query("select u from User u where u.jobNumber = ?1")
	User findByJobNumber(String jobNumber);

	@Query("select u from User u where u.jobNumber = ?1 and u.password = ?2")
	User findByJobNumberAndPassword(String jobNumber,String password);
}
