package customer.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.NoticeDao;
import customer.vo.Notice;

public class NoticeEditProcController implements Controller {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NoticeEditProcController~");
		String seq=request.getParameter("c");
		String title=request.getParameter("title");
		String content=request.getParameter("content");

		Notice n=new Notice();
		n.setSeq(seq);
		n.setTitle(title);
		n.setContent(content);
		
		
		NoticeDao dao=new NoticeDao();
		//위에서 담은것을 업데이트해주는 매소드
		int af=dao.update(n);
		
		//시간이랑 다른애들표기 안되는것도 넣어주려공..위에서 업데이트한것을 다시 불러와야한다.
		n=dao.getNotice(seq);
		
		//get노티스 매소드 가보면 예외처리가 되어있어 그래서 쓰려면 여기서도 예외처리 받아줘야함
		
		
		//여기에서 다시 nocideDetail.jsp로 seq를 보내보자. 역으로
				/*Notice를 request에 저장해보쟈.***/
				request.setAttribute("n", n);
				//위에 담은걸 noticeDetail.jsp로 보내면 request도 함께 포워딩~
				/*포워딩하면 자료를 살려서 보내줄수있다. 샌드는 자료가 없어져서 안돼고*/
				
				request.getRequestDispatcher("noticeDetail.jsp").forward(request, response);
		
	}
}