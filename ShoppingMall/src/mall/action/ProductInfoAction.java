package mall.action;

import javax.servlet.http.HttpServletRequest;

import mall.bean.ProductBean;
import mall.control.ActionForWard;
import mall.dao.ProductDao;

public class ProductInfoAction implements Action {
	private String path;
	private boolean redirect;
	private ProductDao dao = new ProductDao();

	public ProductInfoAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		ProductBean bean = dao.productInfo(request.getParameter("productNo"));
		request.setAttribute("productInfo", bean);
		return new ActionForWard(path, redirect);
	}

}
