package sportsinformation.controller; /*
 * Title: 	  TRS海思智媒云服务
 * Copyright: Copyright (c) 2004-2021, 拓尔思信息技术股份有限公司. All rights reserved.
 * License:   see the license file.
 * Company:   拓尔思信息技术股份有限公司(www.trs.com.cn)
 *
 * Created: hu.taoquan@2021/3/28 14:23
 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import sportsinformation.dao.MaxScoreRepository;
import sportsinformation.data.ResultVo;

/**
 * @ClassName: MaxScoreController
 * @Description:
 * @Author:
 * @Date: 2021/3/28 14:23
 * @Version: 1.0
 **/
@RestController
@RequestMapping("/max/score")
public class MaxScoreController {

	@Autowired
	private MaxScoreRepository maxScoreRepository;

	@GetMapping
	public ResultVo getMaxScore(String sex){
		return new ResultVo(maxScoreRepository.findAllByUserSex(sex));
	}



}
