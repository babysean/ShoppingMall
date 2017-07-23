package mall.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import mall.control.ActionForWard;
import mall.dao.MemberDao;
import mall.dao.ProductDao;

public class LoginAction implements Action {
	private String path;
	private boolean redirect;
	private MemberDao dao = new MemberDao();
	private ProductDao product = new ProductDao();
	
	public LoginAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		String id = request.getParameter("id");
		HttpSession session = request.getSession();
		if (dao.idCheck(id, request.getParameter("pw"))) {
			session.setAttribute("id", id);
		} else {
			path = "login.jsp";
		}
		return new ActionForWard(path, redirect);
	}

}
