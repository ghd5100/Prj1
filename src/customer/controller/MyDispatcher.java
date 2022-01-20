package customer.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.member.LoginController;
import customer.controller.member.LoginProcController;
import customer.controller.member.LogoutProcController;
import customer.controller.notice.NoticeController;
import customer.controller.notice.NoticeDelProcController;
import customer.controller.notice.NoticeDetailController;
import customer.controller.notice.NoticeEditController;
import customer.controller.notice.NoticeEditProcController;
import customer.controller.notice.NoticeRegController;
import customer.controller.notice.NoticeRegProcController;

public class MyDispatcher extends HttpServlet {
	/* 디스패쳐 :중재자 */
	/* 목적 컨트롤러로 다 신호를 들어오게해서 조작하게하려고함 */

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("신호신호");
		/* .Do로 들어오면 여기로 무조건들어옴 http에대한 신호는 여기로 다 들어옴 */
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());
		// 어디서 실행해서 .do해서 들어오냐에 따라 uri와 conpath가 달라짐
		/*
		 * 나는지금 notice.jsp에서 들어와서 경로가 이렇게 나오는것임. uri:/jspwebm10/customer/notice.do
		 * conpath:/jspwebm10
		 */
		
		System.out.println("uri:" + uri);
		System.out.println("conpath:" + conPath);
		System.out.println("com :" + com);

		//모두 인터페이스 상속받았으니까 무도 타입으로 넣어주기
		Controller controller=null;
		
/*		NoticeDetailController controller1 = new NoticeDetailController();
		NoticeEditController controller2 = new NoticeEditController();*/

/*		응답 클래스가 모두
		컨트롤러 인터페이스  공통 상속을 받으니까 
		그래서 간력하게 구성을 짜임세 있게 멩금
		*/
		
		try {
			if (com.equals("/customer/noticeDetail.do")) {
				controller=new NoticeDetailController();
			} else if (com.equals("/customer/noticeEdit.do")) {
				controller=new NoticeEditController();
			} else if (com.equals("/customer/noticeEditProc.do")) {
				controller=new NoticeEditProcController();
			} else if (com.equals("/customer/noticeReg.do")) {
				controller=new NoticeRegController();
			} else if (com.equals("/customer/noticeRegProc.do")) {
				controller=new NoticeRegProcController();
			} else if (com.equals("/customer/noticeDelProc.do")) {
				controller=new NoticeDelProcController();
			} else if (com.equals("/customer/notice.do")) {
				controller=new NoticeController();
			} else if (com.equals("/login/login.do")) {
				controller=new LoginController();
			} else if (com.equals("/login/loginProc.do")) {
				controller=new LoginProcController();
			}  else if (com.equals("/login/logoutProc.do")) {
				controller=new LogoutProcController();
			}
			
			
			controller.execute(request, response);
		} catch (Exception e) {

		}
	}
/*http: 가 신호임. 서로 약속한거임.서버와의 약속. 
uri신호로 부터 context root로 부터. 이거는 중복되니까 뺴고 차별이되는 주소부분만 추출함*/
}
