package sportsinformation.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import sportsinformation.entity.College;
import sportsinformation.entity.User;

import java.util.List;

@Repository
public interface CollegeRepository
        extends JpaRepository<College, Integer>, JpaSpecificationExecutor<College> {

}
