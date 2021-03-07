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
    private int integralId;          //积分id
    private int eventId;             //比赛项目id
    private int classesId;          //班级id
    private int collegeId;         //学院id
    private int integralScore;    //积分分数
}
