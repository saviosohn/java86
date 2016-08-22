package java86.DAO;

import java.util.List;

import java86.VO.FineVO;

public class FineDAO extends BaseDAO {
	
	public void insertFine (FineVO fvo){
		sqlMapping.insert("java86.DAO.insertFine", fvo);
		sqlMapping.commit();
	}
	
	public void deleteFine (int delNo){
		sqlMapping.delete("java86.DAO.deleteFine", delNo);
		sqlMapping.commit();
	}
	
	public void updateFine (FineVO fvo){
		sqlMapping.update("java86.DAO.updateFine", fvo);
		sqlMapping.commit();
	}
	
	public void deleteAllFine (){
		sqlMapping.delete("java86.DAO.deleteAllFine");
		sqlMapping.commit();
	}
	
	public List<FineVO> selectFine () {
		List<FineVO> list = sqlMapping.selectList("java86.DAO.selectFine");
		return list;
	}
	
	public List<FineVO> selectNameId (String memName){
		List<FineVO> fList = sqlMapping.selectList("java86.DAO.selectNameId", memName);
		return fList;
	}
}
