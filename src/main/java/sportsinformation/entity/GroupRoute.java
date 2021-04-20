package sportsinformation.entity;
import com.alibaba.fastjson.annotation.JSONField;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import java.util.Date;

/**
 * @ClassName: GroupRoute
 * @Description:
 * @Author:
 * @Date: 2021/4/5 17:24
 * @Version: 1.0
 **/
@Data
@Entity
@Table(name = "group_route")
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class GroupRoute {

	@Id //主键属性
	@GeneratedValue(strategy = GenerationType.IDENTITY) //自增属性
	private Integer id;     //记录id

	private Integer eventId;  //比赛编号

	private Integer groupsId;   //组号

	private Integer routId;    //跑道号

	@OneToOne
	@JoinColumn(name = "userId",foreignKey = @ForeignKey(name = "none", value = ConstraintMode.NO_CONSTRAINT))
	private User user;		  //用户编号

	@OneToOne
	@JoinColumn(name = "groupId",foreignKey = @ForeignKey(name = "none", value = ConstraintMode.NO_CONSTRAINT))
	private Group group;	  //团队编号

}
