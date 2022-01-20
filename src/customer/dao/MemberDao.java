package customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import customer.db.DBCon;
import customer.vo.Member;

public class MemberDao {

	public Member getMember(String uid) throws Exception {

		String sql="select * from member where id=?";
		
		Connection con=DBCon.getConnection();
		
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, uid);
		
		ResultSet rs=pstmt.executeQuery();
		
		Member m=null;
		/*m을 이프문 안에 쓰면 리턴을 못함 이프문 바깥에다 해줘야함 변수 생성해서 위 코드의 목적은 리턴할수있도록 담아줌*/
		
		if (rs.next()) {
			//목적 리턴해줄 멤버를 넣어주긔
			m=new Member();
			m.setId(rs.getString("id"));
			m.setPwd(rs.getString("pwd"));
			System.out.println("m.id : "+m.getId());
			/*m을 이프문 안에 쓰면 리턴을 못함 이프문 바깥에다 해줘야함 변수 생성해서*/
		}
		
		return m;
	}
	
}
