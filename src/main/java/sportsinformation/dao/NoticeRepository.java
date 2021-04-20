package sportsinformation.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import sportsinformation.entity.Event;
import sportsinformation.entity.Notice;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public interface NoticeRepository
        extends JpaRepository<Notice, Integer>, JpaSpecificationExecutor<Notice> {


}
