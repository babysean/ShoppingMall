package mall.action;

import javax.servlet.http.HttpServletRequest;
import mall.control.ActionForWard;

public interface Action{
	public ActionForWard execute(HttpServletRequest request);

}
