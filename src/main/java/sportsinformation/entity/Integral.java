package sportsinformation.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;

@Data
@Entity
@Table(name = "integral")
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Integral {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer integralId;          //积分id
    private Integer eventId;             //比赛项目id
    private Integer classesId;           //班级id
    private Integer collegeId;           //学院id
    private Integer integralScore;       //积分分数
}
