package sportsinformation.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;

@Data
@Entity
@Table(name = "college")
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class College {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer collegeId;          //学院id
    private String collegeName;     //学院名称
}
