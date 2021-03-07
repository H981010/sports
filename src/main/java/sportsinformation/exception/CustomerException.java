package sportsinformation.exception;

import lombok.Data;
/**
 * @ClassName: CustomerException
 * @Description:
 * @Author:
 * @Date: 2021/3/6 14:08
 * @Version: 1.0
 **/
@Data
public class CustomerException extends RuntimeException{

	private String code = "-1";
	private String message;

	public CustomerException(String code,String message){
		this.code = code;
		this.message = message;
	}

	public CustomerException(String message){
		this.message = message;
	}

}
