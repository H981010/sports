package sportsinformation.data; 

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @ClassName: ResultVo
 * @Description:
 * @Author:
 * @Date: 2021/3/6 17:31
 * @Version: 1.0
 **/

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class ResultVo {
	
	private String code = "1";
	private String message;
	private Object data;

	public ResultVo(Object data){
		this.data = data;
	}
}
