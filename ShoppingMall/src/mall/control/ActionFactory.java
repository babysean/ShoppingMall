package mall.control;

import mall.action.Action;
import mall.action.LoginAction;
import mall.action.LogoutAction;
import mall.action.ProductCartAction;
import mall.action.ProductCartDeleteAction;
import mall.action.ProductInfoAction;
import mall.action.BagListAction;
import mall.action.GoCartAction;
import mall.action.HomeAction;

public class ActionFactory {

	public static Action getAction(String cmd) {
		Action action = null;
		if (cmd.equals("bagList")) {
			action = new BagListAction("bagList.jsp", false);
		} else if (cmd.equals("login")) {
			action = new LoginAction("jsp/bangSa.jsp", true);
		} else if (cmd.equals("home")){
			action = new HomeAction("bangSa.jsp", true);
		} else if (cmd.equals("productCart")) {
			action = new ProductCartAction("bagCart.jsp", true);
		} else if(cmd.equals("productInfo")){
			action = new ProductInfoAction("bagInfo.jsp",false);
		} else if(cmd.equals("goCart")){
			action = new GoCartAction("bagCart.jsp",true);
		} else if (cmd.equals("productCartDelete")) {
			action = new ProductCartDeleteAction("",true);
		} else if(cmd.equals("logout")) {
			action = new LogoutAction("../login.jsp",true);
		}
		return action;

	}// method

}
