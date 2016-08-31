package java86.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import java86.VO.FineVO;
import java86.VO.MemberVO;
import util.MyAppSqlConfig;

public class FineDAO {
	public static SqlSession sqlMapping;
	public FineDAO () {
		sqlMapping = MyAppSqlConfig.getSqlSessionInstance();
	}

	public void insertFine(FineVO fvo) {
		sqlMapping.insert("java86.DAO.insertFine", fvo);
		sqlMapping.commit();
	}

	public void deleteFine(int delNo) {
		sqlMapping.delete("java86.DAO.deleteFine", delNo);
		sqlMapping.commit();
	}

	public void updateFine(FineVO fvo) {
		sqlMapping.update("java86.DAO.updateFine", fvo);
		sqlMapping.commit();
	}

	public void deleteAllFine() {
		sqlMapping.delete("java86.DAO.deleteAllFine");
		sqlMapping.commit();
	}

	public List<FineVO> selectFine() {
		List<FineVO> list = sqlMapping.selectList("java86.DAO.selectFine");
		return list;
	}

	public List<MemberVO> selectNameId(String memName) {
		
		List<MemberVO> mList  = sqlMapping.selectList("java86.DAO.selectNameId", memName);
	
		return mList;
	}
	public FineVO updateList(int findNo) {
		FineVO fvo = sqlMapping.selectOne("java86.DAO.updateList", findNo);
		return fvo;
	}
}
