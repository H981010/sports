package sportsinformation.entity; /*
 * Title: 	  TRS海思智媒云服务
 * Copyright: Copyright (c) 2004-2021, 拓尔思信息技术股份有限公司. All rights reserved.
 * License:   see the license file.
 * Company:   拓尔思信息技术股份有限公司(www.trs.com.cn)
 *
 * Created: hu.taoquan@2021/3/28 14:13
 */

import com.alibaba.fastjson.annotation.JSONField;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import java.util.Date;

/**
 * @ClassName: MaxScore
 * @Description:
 * @Author:
 * @Date: 2021/3/28 14:13
 * @Version: 1.0
 **/
@Data
@Entity
@Table(name = "maxscore")
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class MaxScore {

	@Id //主键属性
	@GeneratedValue(strategy = GenerationType.IDENTITY) //自增属性
	private Integer id;         //记录id

	private String eventName;   //项目名称

	private String score;       // 成绩

	@JSONField(format = "yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date date;		    // 时间

	@OneToOne
	@JoinColumn(name = "userId",foreignKey = @ForeignKey(name = "none", value = ConstraintMode.NO_CONSTRAINT))
	private User user;          //破纪录人的信息



}

