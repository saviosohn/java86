package java86.DAO;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import java86.VO.CodeVO;
import java86.VO.FileVO;
import java86.VO.MemberVO;
import util.MyAppSqlConfig;

public class MemberDao {
	private SqlSession session;
	
	public MemberDao() {
		session = MyAppSqlConfig.getSqlSessionInstance();
	}

	/****************************************************************
	 * Member table 
	 ****************************************************************/
	public MemberVO loginMember (String id, String pass) {
		MemberVO mvo = new MemberVO();
		mvo.setMemId(id);
		mvo.setMemPassword(pass);
		return session.selectOne("java86.Dao.loginMember", mvo);
	}

	public int insertMember (MemberVO mvo) {
		int result = session.insert("java86.Dao.insertMember", mvo);
		session.commit();
		return result;
	}
	
	public int updateMember (MemberVO mvo) {
		int result = session.update("java86.Dao.updateMember", mvo);
		session.commit();
		return result;
	}
	
	public int updateMemberPassword (String id, String pass) {
		MemberVO mvo = new MemberVO();
		mvo.setMemId(id);
		mvo.setMemPassword(pass);
		int result = session.selectOne("java86.Dao.updateMemberPassword", mvo);
		session.commit();
		return result;
	}
	
	public int updateMemberLevel (String id, int level) {
		MemberVO mvo = new MemberVO();
		mvo.setMemId(id);
		mvo.setMemLevel(level);
		int result = session.selectOne("java86.Dao.updateMemberLevel", mvo);
		session.commit();
		return result;
	}
	
	public int deleteMember (String id) {
		int result = session.selectOne("java86.Dao.deleteMember", id);
		session.commit();
		return result;
	}
	
	/****************************************************************
	 * Code table
	 ****************************************************************/
	public List<CodeVO> getEmailDomain() {
		List<CodeVO> mailList = session.selectList("java86.Dao.getEmailDomain");
		return mailList;
	}
	
	/****************************************************************
	 * File table
	 ****************************************************************/
	public int insertMemberImage(FileVO fvo) {
		int result = session.insert("java86.Dao.insertFile", fvo);
		session.commit();
		return result;
	}
	
	public List<FileVO> getFileListByKey (String key) {
		return session.selectList("java86.Dao.selectFilesByKey", key);
	}
	
}
