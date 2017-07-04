package mall.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import mall.bean.ProductBean;
import mall.control.ActionForWard;

public class ProductCartDeleteAction implements Action {
	private String path;
	private boolean redirect;

	public ProductCartDeleteAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String productNo = request.getParameter("productNo");
		ArrayList<ProductBean> cart = (ArrayList<ProductBean>) session.getAttribute("cart");
		if (cart == null) {
			cart = new ArrayList<ProductBean>();
		}
		for (int i = 0; i < cart.size(); i++) {
			ProductBean bean = cart.get(i);
			if (bean.getProductNo().equals(productNo)) {
				cart.remove(i);
			}
		}
		session.setAttribute("cart", cart);
		if (cart.size() == 0) {
			path = "bagList.do?cmd=bagList";
		}
		return new ActionForWard(path, redirect);
	}

}
