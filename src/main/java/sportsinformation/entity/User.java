package sportsinformation.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.beans.BeanUtils;
import sportsinformation.vo.UserVo;

import javax.persistence.*;

@Data
@Entity
@Table(name = "user")
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class User {

    @Id //主键属性
    @GeneratedValue(strategy = GenerationType.IDENTITY) //自增属性
    private Integer userId;     //用户id
    @Column(name = "jobNumber",unique = true,nullable = false)   //设置jobNumber属性为唯一且不为空
    private String jobNumber;      //工号
    @Column(name = "userName",nullable = false)
    private String userName;      //用户名
    @Column(name = "password",nullable = false)
    private String password;       //密码
    @OneToOne
    @JoinColumn(name = "classesId", foreignKey = @ForeignKey(name = "none", value = ConstraintMode.NO_CONSTRAINT))
    private Classes classes;        //班级
    private String email;         //邮箱
    private String telephone;     //电话
    private String sex;            //性别
    private String age;            //年龄
    private Double height;            //身高
    private Double weight;            //体重
    private String hobby;          //爱好
    @Column(name = "power",nullable = false)
    private int power;              // 用户权限，0为管理员，1位普通用户

}
