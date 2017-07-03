package mall.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import mall.bean.ProductBean;
import mall.control.ActionForWard;
import mall.dao.ProductDao;

public class ProductListAction implements Action {
	private String path;
	private boolean redirect;
	private ProductDao dao = new ProductDao();

	public ProductListAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		List<ProductBean> list = dao.productListAll();
		request.setAttribute("productList", list);
		return new ActionForWard(path, redirect);
	}

}
