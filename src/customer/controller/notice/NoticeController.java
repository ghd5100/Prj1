package customer.controller.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.NoticeDao;
import customer.vo.Notice;

public class NoticeController implements Controller {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("NoticeController~");
		//db에서 notice의 테이블에 있는 내용 모두를 조회 해서 -> 이곳에 가져오기
		
		String field=request.getParameter("f");
		System.out.println("field: "+field);
		
	//처음게시판 들어가면.. field와 query가 널이들어와서 문제생김 -->
	//쿼리가 완성안됌.
		if(field==null||field.equals("")) {
			field="title";
		}
		
		
		String query=request.getParameter("q");
		System.out.println("query:"+query);
		if(query==null) {
			query="";
		}
		
		
		NoticeDao dao=new NoticeDao();
		 List<Notice> list=dao.noticeSelAll(field,query);
		
		 /*
		 외부 매개변수를 가져가는지 아닌지는 함수내용을 보면됨
		 안에내용이 받아서 그걸 조작해서 리턴해야되는것우는 외부에서 값을 전달받아야하고
		 그게 아닌 단순한 함수안에서 알아서 해결되서 리턴되는경우는 매개변수 갖고 안들어가도됨
		 */
		 
		//여기에서 다시 nocideDetail.jsp로 seq를 보내보자. 역으로
		 
		 
		 
		 
		/*List<Notice>를 request에 저장해보쟈.***/
		//목적은: 검색하고나면 검색기록이 안사라지도록 하기위함이다.
		request.setAttribute("list", list);
		request.setAttribute("query", query);
		
		//리스트라는 이름표로 리스트 내용물을 보내준다
		//위에 담은걸 notice.jsp로 보내면 request도 함께 포워딩~
		
		
		/*포워딩하면 자료를 살려서 보내줄수있다. 샌드는 자료가 없어져서 안돼고*/
		request.getRequestDispatcher("notice.jsp").forward(request, response);
		/*포워드 해주는 것들에는 list .query 가있따. 담아준만큼 다 보내준다*/
	}
}


