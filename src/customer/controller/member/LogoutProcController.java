package customer.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;

public class LogoutProcController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("LogoutProcController");
		
		//로그아웃처리
		//세션 모두 해제
		request.getSession().invalidate();
		response.sendRedirect("../customer/notice.do");
	}

}