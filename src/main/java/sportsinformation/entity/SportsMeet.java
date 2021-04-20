package sportsinformation.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import java.util.Date;

/**
 * @ClassName: SportsMeet
 * @Description: 运动会(第几届)
 * @Author:
 * @Date: 2021/4/8 17:21
 * @Version: 1.0
 **/
@Data
@Entity
@Table(name = "sports_meet")
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class SportsMeet {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;       //自增id

	private String name;	  //运动会名字

	private Integer type;     //类型，院级或者是校级，0表示院级，1表示校级

	private Date startDate;   //开始时间

	private Date endDate;     //结束时间

}
