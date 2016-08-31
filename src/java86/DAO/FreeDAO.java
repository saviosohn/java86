package java86.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import java86.VO.FreeFile;
import java86.VO.FreeVO;
import util.MyAppSqlConfig;

public class FreeDAO {
	
	private static SqlSession session = null;
	
	public FreeDAO() {
		session = MyAppSqlConfig.getSqlSessionInstance();
		
	}
	public int updateClicks(int findNo) {
		int cnt = session.update("free.FreeDAO.updateclicks", findNo);
		session.commit();
		return cnt;
	}
	
	
	public int insertFree(FreeVO free) {
		session.insert("free.FreeDAO.insertFree", free);
		session.commit();
		return free.getFreeNo();
	}
	
	public int updateFree(FreeVO free) {
		int cnt = session.update("free.FreeDAO.updateFree", free);
		session.commit();
		return cnt;
	}
	
	public int deleteFree(int delNo) {
		int cnt = session.delete("free.FreeDAO.deleteFree", delNo);
		session.commit();
		return cnt;
	}
	
	public List<FreeVO> selectFree(){
		return session.selectList("free.FreeDAO.selectFree");
	
	}
	
	public FreeVO selectFreeByNo(int findNo) {
		return session.selectOne("free.FreeDAO.selectFreeByNo", findNo);
	}
	
	public int insertFreeFile(FreeFile freeFile) {
		session.insert("free.FreeDAO.insertFreeFile", freeFile);
		session.commit();
		return freeFile.getFileNo();
	}
	
	public FreeFile selectBoardFileByNo(int findNo) {
		return session.selectOne("free.FreeDAO.selectFreeFileByNo", findNo);
	}
	
	public List<FreeVO> selectFT(String title){
		return session.selectList("free.FreeDAO.selectFt", title);
	}
	public List<FreeVO> selectFW(String writer){
		return session.selectList("free.FreeDAO.selectFw", writer);
	}
	
}
