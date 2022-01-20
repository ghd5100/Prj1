package customer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Controller {
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws Exception;

	/*각각개체를  미리 먼저 생성해놓기 그래서 컨트롤러1, 컨틀로러2 
	해당 조건주소로 들어왔을떄 그제 서야 객체 필요한것만 생성함
	
	내가 헷갈리는것.. 인터페이스에 왜 함수를 넣어줘야하는건가? 상속해서 그런건가? 이 함수는 여기서는 실질적으로 사용되지않음.*/
}
