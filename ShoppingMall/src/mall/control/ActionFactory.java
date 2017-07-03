package mall.control;

import mall.action.Action;
import mall.action.LoginAction;
import mall.action.ProductInfoAction;
import mall.action.BagListAction;

public class ActionFactory {

	public static Action getAction(String cmd) {
		Action action = null;
		if (cmd.equals("bagList")) {
			action = new BagListAction("bagList.jsp", false);
		}else if(cmd.equals("login")) {
			action = new LoginAction("home.jsp",false);
		}else if(cmd.equals("productInfo")) {
			action = new ProductInfoAction("productInfo.jsp",false);
		}
		return action;

	}// method

}
