package customer.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.NoticeDao;

public class NoticeDelProcController implements Controller {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeDelProcController~");

		response.setCharacterEncoding("utf-8");
		
		String seq=request.getParameter("c");
		
		NoticeDao dao=new NoticeDao();
		int de=dao.delete(seq);

		
/*		if (de>0) */
			//왜 이코드 넣으면 페이지가 안넘어가남유.. 왜 숫자가 리턴이 안되느지여..
			response.sendRedirect("notice.do");
		
		//else
			//out.write("삭제오류");

		
		
		/*request.getRequestDispatcher("noticeReg.jsp").forward(request, response);*/
		
	}
}