package sportsinformation.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;

@Data
@Entity
@Table(name = "journalism")
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Journalism {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer journalismId;        //新闻id
    private String title;                //标题
    private String content;              //内容
    private String picture;              //图片
    private String publisher;            //发布人
    private String releaseTime;          //发布时间

}
