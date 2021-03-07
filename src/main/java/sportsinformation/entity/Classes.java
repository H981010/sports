package sportsinformation.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;

@Data
@Entity
@Table(name = "classes")
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Classes {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int classesId;        //班级id
    private int collegeId;        //学院id
    private String className;      //班级名称

}
