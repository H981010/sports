package sportsinformation.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * @ClassName: CustomerExceptionHandler
 * @Description:
 * @Author:
 * @Date: 2021/3/6 14:10
 * @Version: 1.0
 **/
@ControllerAdvice
public class CustomerExceptionHandler {

	@ExceptionHandler(value = CustomerException.class)
	@ResponseBody
	public Object handler(CustomerException ce) {
		Map<String, Object> map = new HashMap<>();
		map.put("code", ce.getCode());
		map.put("message", ce.getMessage());
		return map;
	}
}
