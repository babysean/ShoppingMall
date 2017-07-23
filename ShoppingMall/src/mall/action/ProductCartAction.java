package mall.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import mall.bean.ProductBean;
import mall.control.ActionForWard;
import mall.dao.ProductDao;

public class ProductCartAction implements Action {
	private String path;
	private boolean redirect;
	private ProductDao dao = new ProductDao();

	public ProductCartAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		ProductBean bean = null;
		ArrayList<ProductBean> cart = null;
		String path = "";
		HttpSession session = request.getSession();
		boolean state = false;
		String productNo = request.getParameter("productNo");
		try {
			bean = dao.productInfo(productNo);
			cart = (ArrayList<ProductBean>) session.getAttribute("cart");
			if(cart == null){
				cart = new ArrayList<ProductBean>();
			}
			for(int i=0 ; i<cart.size() ; i++){
				if(cart.get(i).getProductNo().equals(productNo)){
					state = true;
				}
			}
			if(!state){
				cart.add(bean);
			}
			session.setAttribute("cart", cart);
			path = request.getHeader("referer");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return new ActionForWard(path, redirect);
	}

}
