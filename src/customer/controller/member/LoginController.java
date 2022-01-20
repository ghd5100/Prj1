package customer.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;

public class LoginController implements Controller {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("LoginController~");
		//로긴폼만 만들어주면됌
		/*그거는 이미 만들어진 jsp있으니까 위치를 거기로만 보내기*/
		
		request.getRequestDispatcher("loginForm.jsp").forward(request, response);
		
	}
}


