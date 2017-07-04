package mall.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import mall.control.ActionForWard;

public class LogoutAction implements Action {
	private String path;
	private boolean redirect;

	public LogoutAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return new ActionForWard(path, redirect);
	}

}
