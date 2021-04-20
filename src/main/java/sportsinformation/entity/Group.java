package sportsinformation.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
@Table(name = "`group`")
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Group {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int groupId;     //团队id（学院id或班级id）

    @ManyToMany
    @JoinTable(name = "link_group_user", joinColumns = { @JoinColumn(name = "groupId") }, inverseJoinColumns = {
            @JoinColumn(name = "userId") }, foreignKey = @ForeignKey(name = "none", value = ConstraintMode.NO_CONSTRAINT), inverseForeignKey = @ForeignKey(name = "none", value = ConstraintMode.NO_CONSTRAINT))
    private List<User> users;        //参赛人员

}
