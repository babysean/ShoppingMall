package mall.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import mall.control.ActionForWard;

public class GoCartAction implements Action {
	private String path;
	private boolean redirect;

	public GoCartAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		return new ActionForWard(path, redirect);
	}

}
