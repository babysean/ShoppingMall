package mall.action;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import mall.bean.PageBean;
import mall.bean.ProductBean;
import mall.control.ActionForWard;
import mall.dao.ProductDao;

public class BagListAction implements Action {
	private String path;
	private boolean redirect;
	private ProductDao dao = new ProductDao();

	public BagListAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	public void paging(HttpServletRequest request) throws Exception {
		HashMap<Object, Integer> map = new HashMap<Object, Integer>();
		int currentPage = 0;
		int pageScale = 5;
		int totalRow = 0;
		try {
			totalRow = dao.getTotalRow();
			currentPage = Integer.parseInt(request.getParameter("page"));
		} catch (Exception e) {
			currentPage = 1;
		}
		int totalPage = totalRow % pageScale == 0 ? totalRow / pageScale : totalRow / pageScale + 1;
		if (totalRow == 0)
			totalPage = 1;
		int start = 1 + (currentPage - 1) * pageScale;
		int end = pageScale + (currentPage - 1) * pageScale;

		int currentBlock = currentPage % pageScale == 0 ? (currentPage / pageScale) : (currentPage / pageScale) + 1;
		int startPage = 1 + (currentBlock - 1) * pageScale;
		int endPage = pageScale + (currentBlock - 1) * pageScale;
		if (totalPage <= endPage)
			endPage = totalPage;

		map.put("start", start);
		map.put("end", end);
		
		List<ProductBean> list = dao.productListAll(map);
		
		request.setAttribute("productList", list);
		request.setAttribute("pageBean", new PageBean(currentPage, totalPage, startPage, endPage, currentBlock));
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		try {
			List<ProductBean> list = dao.productListAll(null);
			request.setAttribute("productList", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ActionForWard(path, redirect);
	}

}
