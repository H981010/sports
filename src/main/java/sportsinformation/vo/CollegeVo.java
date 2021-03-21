package sportsinformation.vo;

import lombok.Data;
import sportsinformation.entity.College;

import java.util.List;

/**
 * @ClassName: CollegeVo
 * @Description:
 * @Author:
 * @Date: 2021/3/8 11:28
 * @Version: 1.0
 **/
@Data
public class CollegeVo {

	private List<College> colleges;
}
