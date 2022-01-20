package customer.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.MemberDao;
import customer.vo.Member;

public class LoginProcController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("LoginProcController");
		
		//로그인처리
		/*이거는 여기서 해줘야함*/
		
		String uid=request.getParameter("id");
		String pwd=request.getParameter("password");
		
		/*dao거쳐서 나온것 확인하긔*/
		
		MemberDao dao=new MemberDao();
		Member m=dao.getMember(uid);
		
		//System.out.println("m.pwd : "+m.getPwd());
		/*위에 주석처리 안하면 아래 노란줄 생김. 캡쳐 살펴보길바람 카톡내용 220104*/
		
		if(m==null) {
			System.out.println("아이디없음");
			request.setAttribute("error", "아이디틀림");
			request.getRequestDispatcher("loginForm.jsp").forward(request, response);
		}else if (!m.getPwd().equals(pwd)) {//비번틀림
			/*m.getPwd는 디비에 있는 비번임. pwd 사용자가 입력한 pwd*/
			request.setAttribute("error", "비번틀림");
			request.getRequestDispatcher("loginForm.jsp").forward(request, response);
		}else {
			//로그인성공 ->1. 아이디 세션에 담기. 2.notice.do로 전달
			request.getSession().setAttribute("uid", uid);
			/*겟세션으로 얻어서. 가져간다*/
			response.sendRedirect("../customer/notice.do");
		}
		
		/*request.getRequestDispatcher("loginForm.jsp").forward(request, response);*/
	}

}
