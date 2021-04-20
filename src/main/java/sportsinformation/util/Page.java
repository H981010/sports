package sportsinformation.util;

import lombok.Data;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

/**
 * @ClassName: Page
 * @Description:
 * @Author:
 * @Date: 2021/3/7 16:59
 * @Version: 1.0
 **/
@Data
public class Page {

	private Integer page = 1;

	private Integer size = 10;

	private String sortBy;

	private Integer sortMode;

	public static Pageable getPageAble(Page page){

		return PageRequest.of(page.page - 1, page.size,
				page.sortMode == 0 ? Sort.Direction.DESC : Sort.Direction.ASC, page.sortBy);

	}
}
