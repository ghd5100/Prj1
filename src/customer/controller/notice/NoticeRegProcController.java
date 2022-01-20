package customer.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.NoticeDao;
import customer.vo.Notice;

public class NoticeRegProcController implements Controller {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		request.setCharacterEncoding("utf-8");
		System.out.println("NoticeRegProcController~");
		
		
		//받아오기
		String uid=request.getParameter("uid");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		
		Notice n=new Notice();
		n.setTitle(title);
		n.setContent(content);
		n.setWriter(uid);
		/*작성자가 = uid임*/

		NoticeDao dao=new NoticeDao();
		int af=dao.write(n);
		
		
		if(af>0)  /* 업데이트 됬을때 의미함 */
			response.sendRedirect("notice.do");	
			//else
				//out.println("글쓰기 오류");
		
	}
}