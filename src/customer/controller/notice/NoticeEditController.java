package customer.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.NoticeDao;
import customer.vo.Notice;

public class NoticeEditController implements Controller {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeEditController~");
		String seq=request.getParameter("c");
		System.out.println("seq :"+seq);
		NoticeDao dao=new NoticeDao();
		Notice n=dao.getNotice(seq);
		System.out.println("content :"+n.getContent());
		//get노티스 매소드 가보면 예외처리가 되어있어 그래서 쓰려면 여기서도 예외처리 받아줘야함
		
		
		//여기에서 다시 nocideDetail.jsp로 seq를 보내보자. 역으로
				/*Notice를 request에 저장해보쟈.***/
				request.setAttribute("nt", n);
				//위에 담은걸 noticeDetail.jsp로 보내면 request도 함께 포워딩~
				/*포워딩하면 자료를 살려서 보내줄수있다. 샌드는 자료가 없어져서 안돼고*/
				
				request.getRequestDispatcher("noticeEdit.jsp").forward(request, response);
		
	}
}