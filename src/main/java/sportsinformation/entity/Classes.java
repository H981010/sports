package sportsinformation.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.hibernate.annotations.Proxy;

import javax.persistence.*;

@Data
@Entity
@Table(name = "classes")
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Proxy(lazy = false)
public class Classes {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer classesId;        //班级id

    private String className;      //班级名称

    @OneToOne
    @JoinColumn(name = "collegeId", foreignKey = @ForeignKey(name = "none", value = ConstraintMode.NO_CONSTRAINT))
    private College college;        //学院

}
