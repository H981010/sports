package sportsinformation.vo;

import lombok.Data;
import org.springframework.beans.BeanUtils;
import sportsinformation.entity.Classes;
import sportsinformation.entity.User;

import javax.persistence.*;
import java.util.List;

/**
 * @ClassName: UserVo
 * @Description:
 * @Author:
 * @Date: 2021/3/7 17:21
 * @Version: 1.0
 **/
@Data
public class UserVo {

	private Integer userId;     //用户id
	//设置jobNumber属性为唯一且不为空
	private String jobNumber;      //工号
	private String userName;      //用户名
	private String password;       //密码
	private Integer classesId;        //班级
	private String email;         //邮箱
	private String telephone;     //电话
	private String sex;            //性别
	private String age;            //年龄
	private Double height;            //身高
	private Double weight;            //体重
	private String hobby;          //爱好
	private int power;              // 用户权限，0为管理员，1位普通用户
	private List<Integer> userIds;

	public static void copy(User user,UserVo userVo){
		BeanUtils.copyProperties(userVo, user);
		Classes classes = new Classes();
		classes.setClassesId(userVo.classesId);
		user.setClasses(classes);
	}
}
