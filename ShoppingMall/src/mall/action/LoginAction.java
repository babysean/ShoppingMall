package mall.action;

import javax.servlet.http.HttpServletRequest;

import mall.control.ActionForWard;
import mall.dao.MemberDao;

public class LoginAction implements Action{
	private String path;
	private boolean redirect;
	private MemberDao dao = new MemberDao();

	public LoginAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		String id = request.getParameter("id");
		if(dao.idCheck(id, request.getParameter("pw"))){
			request.setAttribute("id", id);
		}else{
			path="index.jsp";
		}
		return new ActionForWard(path, redirect);
	}

}
