package sportsinformation.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;

/**
 * @ClassName: Score
 * @Description:
 * @Author:
 * @Date: 2021/4/8 17:19
 * @Version: 1.0
 **/
@Data
@Entity
@Table(name = "score")
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Score {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;       //自增id

	private Integer eventId;  //比赛id

	@OneToOne
	@JoinColumn(name = "userId",foreignKey = @ForeignKey(name = "none", value = ConstraintMode.NO_CONSTRAINT))
	private User user;		  //用户编号

	@OneToOne
	@JoinColumn(name = "groupId",foreignKey = @ForeignKey(name = "none", value = ConstraintMode.NO_CONSTRAINT))
	private Group group;	  //团队编号


}
