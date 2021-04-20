package sportsinformation.entity;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "event")
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Event {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer eventId;       //比赛项目编号
    private String eventName;      //比赛项目名称

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
    @JSONField(format = "yyyy-MM-dd HH:mm")
    private Date startTime;        //比赛开始时间
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
    @JSONField(format = "yyyy-MM-dd HH:mm")
    private Date endTime;          //比赛结束时间
    private Integer xianZhi;       //比赛限制 0表示女子、1表示男子
    private Integer reShu;		   //比赛人数
    private String times;          //场次
    private String place;          //比赛地点
    private String description;    //比赛描述
    private String rule;           //比赛规则
    private Integer state;         //比赛状态 0,1,2  未开始、进行中、已完成
    private Integer signStatus;    //报名状态 0,1,2  未开始、报名中、报名结束
    private Integer type;          //比赛类型 0,1 田赛、经赛
//    private String arrangement;    //比赛安排

//    @OneToOne
//    @JoinColumn(name = "sportsMeetId",foreignKey = @ForeignKey(name = "none", value = ConstraintMode.NO_CONSTRAINT))
//    private SportsMeet sportsMeet;  //运动会编号

    @ManyToMany
    @JoinTable(name = "link_event_group", joinColumns = { @JoinColumn(name = "eventId") }, inverseJoinColumns = {
            @JoinColumn(name = "groupId") }, foreignKey = @ForeignKey(name = "none", value = ConstraintMode.NO_CONSTRAINT), inverseForeignKey = @ForeignKey(name = "none", value = ConstraintMode.NO_CONSTRAINT))
    private List<Group> groups;     //参赛团体

    @ManyToMany
    @JoinTable(name = "link_event_user", joinColumns = { @JoinColumn(name = "eventId") }, inverseJoinColumns = {
            @JoinColumn(name = "userId") }, foreignKey = @ForeignKey(name = "none", value = ConstraintMode.NO_CONSTRAINT), inverseForeignKey = @ForeignKey(name = "none", value = ConstraintMode.NO_CONSTRAINT))
    private List<User> users;        //参赛人员

}
