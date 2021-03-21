package sportsinformation.config;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @ClassName: InterceptorConfiguration
 * @Description: 接口访问拦截器
 * @Author:
 * @Date: 2021/3/8 11:43
 * @Version: 1.0
 **/
@Component
public class InterceptorConfiguration implements WebMvcConfigurer {


	@Override
	public void addInterceptors(InterceptorRegistry registry) {

		// 注册拦截器
		registry.addInterceptor(new RouteInterceptor())
				.addPathPatterns("/admin/**").addPathPatterns("/login/**")
				.addPathPatterns("/register/**").addPathPatterns("/user/**");

	}


}
