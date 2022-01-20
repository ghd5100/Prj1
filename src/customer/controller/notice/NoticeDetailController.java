package customer.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.NoticeDao;
import customer.vo.Notice;

public class NoticeDetailController implements Controller {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("NoticeDetailController~");
		String seq=request.getParameter("c");
		String hit=request.getParameter("h");
/*		System.out.println("seq :"+seq);
		System.out.println("hit: "+hit);
*/
	//콘솔창에 찍히려면..신호가 이쪽으로 안옴.. 노티스디테일 jsp로 들어오기떄문에
		/*노티스 jsp에서 넣어주면 신호옴*/
		
		NoticeDao dao=new NoticeDao();
		Notice n=dao.getNotice(seq,hit);
		
		System.out.println("title :"+n.getTitle());
		System.out.println("hit :"+n.getHit());
		
		//여기에서 다시 nocideDetail.jsp로 seq를 보내보자. 역으로
		/*Notice를 request에 저장해보쟈.***/
		request.setAttribute("n", n);
		//위에 담은걸 noticeDetail.jsp로 보내면 request도 함께 포워딩~
		/*포워딩하면 자료를 살려서 보내줄수있다. 샌드는 자료가 없어져서 안돼고*/
		
		request.getRequestDispatcher("noticeDetail.jsp").forward(request, response);
	}
}


