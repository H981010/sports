package sportsinformation.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Configuration;
import org.springframework.util.StreamUtils;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import sportsinformation.entity.User;
import sportsinformation.exception.CustomerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;
import java.util.Map;

/**
 * @ClassName: RouteInterceptor
 * @Description:
 * @Author:
 * @Date: 2021/3/8 11:41
 * @Version: 1.0
 **/
@Configuration
@Slf4j
public class RouteInterceptor extends HandlerInterceptorAdapter {


	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

//		log.info("当前拦截路径："+request.getRequestURI());
//		log.info("当前请求参数："+request.getQueryString());
//		log.info("当前请求方法："+request.getMethod());
//		log.info("当前请求参数："+request.getParameterMap());
//		Map<String, String[]> parameterMap = request.getParameterMap();
//		for (String key:parameterMap.keySet())
//			log.info(key + " --- "+ Arrays.toString(parameterMap.get(key)));
//		byte[] bodyBytes = StreamUtils.copyToByteArray(request.getInputStream());
//		String body = new String(bodyBytes, request.getCharacterEncoding());
//		log.info("当前请求参数："+body);
		// 获取登录人信息
//		Object object = request.getSession().getAttribute("user");
//		if (path.contains("admin")){
//			if (object == null)
//				throw new CustomerException("未登录，无操作权限");
//			User user = (User) object;
//			if (user.getPower() != 0)
//				throw new CustomerException("该用户无操作权限");
//			return true;
//		}
		return true;
	}
}
