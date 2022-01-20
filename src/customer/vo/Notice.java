package customer.vo;

import java.util.Date;

public class Notice {
	/*노티스를 모델이라고 보면된다...디비에서 노티스테이블 컨트롤 쉬프트 와이*/
	private String seq; /*seq가 문자타입이라서 스트링으로해쥼*/
	private String title;
	private String writer;
	private Date regdate;
	private int hit;
	private String content;
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
