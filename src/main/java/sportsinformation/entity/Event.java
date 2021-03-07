package sportsinformation.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;

@Data
@Entity
@Table(name = "event")
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Event {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int eventId;             //比赛项目编号
    private String eventName;        //比赛项目名称
    private String startTime;        //比赛开始时间
    private String endTime;          //比赛结束时间
    private String place;            //比赛地点
    private String description;        //比赛描述
    private String rule;            //比赛规则
    private String state;           //比赛状态
    private String type;            //比赛类型
    private String arrangement;    //比赛安排

}
