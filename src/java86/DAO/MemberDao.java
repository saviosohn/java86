package java86.DAO;

import org.apache.ibatis.session.SqlSession;

import java86.VO.MemberVO;
import util.MyAppSqlConfig;

public class MemberDao {
	private SqlSession session;
	
	public MemberDao() {
		session = MyAppSqlConfig.getSqlSessionInstance();
	}

	public MemberVO loginMember (String id, String pass) {
		MemberVO mvo = new MemberVO();
		mvo.setMemId(id);
		mvo.setMemPassword(pass);
		return session.selectOne("java86.Dao.loginMember", mvo);
	}
}
