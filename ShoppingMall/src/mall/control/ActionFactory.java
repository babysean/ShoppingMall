package mall.control;

import mall.action.Action;
import mall.action.ProductListAction;

public class ActionFactory {

	public static Action getAction(String cmd) {
		Action action = null;
		if (cmd.equals("productList")) {
			action = new ProductListAction("productList.jsp", false);
		}
		return action;

	}// method

}
