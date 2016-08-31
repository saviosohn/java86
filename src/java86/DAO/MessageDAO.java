package java86.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import java86.VO.MessagePageVO;
import java86.VO.MessageSRVO;
import java86.VO.MessageVO;
import util.MyAppSqlConfig;

public class MessageDAO {
	public static SqlSession sqlMapping;
	public MessageDAO () {
		sqlMapping = MyAppSqlConfig.getSqlSessionInstance();
	}
	
	public int selectAllRecvM(String memId){
		int result = sqlMapping.selectOne("java86.DAO.selectAllRecvM", memId);
		return result;
	}
	
	public List<MessageVO> selectRecvM(MessagePageVO mpvo ) {
		
		List<MessageVO> msList = sqlMapping.selectList("java86.DAO.selectRecvM", mpvo);
		return msList;
	}
	public List<MessageVO> selectSendM(MessagePageVO mpvo ) {
		
		List<MessageVO> msList = sqlMapping.selectList("java86.DAO.selectSendM", mpvo);
		return msList;
	}
	
	public void insertMessage(MessageVO msvo) {
		sqlMapping.insert("java86.DAO.insertMessage", msvo);
		sqlMapping.commit();
	} 
	public int selectAllSendM(String memId ) {
		int result = sqlMapping.selectOne("java86.DAO.selectAllSendM",memId);
		return result;
	}
	public MessageVO selectRDetail(int mNo){
		MessageVO msvo = sqlMapping.selectOne("java86.DAO.selectRDetail", mNo);
		return msvo;
	}
	
	public void deleteMessage(int delNo){
		sqlMapping.delete("java86.DAO.deleteMessage", delNo);
		sqlMapping.commit();
	}
	
	public void updateRMessage(int upNo){
		sqlMapping.update("java86.DAO.updateRMessage", upNo);
		sqlMapping.commit();
	}
	public void updateSMessage(int upNo){
		System.out.println(upNo);
		sqlMapping.update("java86.DAO.updateSMessage", upNo);
		sqlMapping.commit();
	}
	
	public void updateRCheck(int upNo){
		sqlMapping.update("java86.DAO.updateRCheck", upNo);
		sqlMapping.commit();
	}
	
	//각 메뉴바 페이지 콘트롤러 마다  세팅하기 
	public List<MessageVO> selectCheckYN(String memId){
		List<MessageVO> msList = sqlMapping.selectList("java86.DAO.selectCheckYN", memId);
		return msList;
	}
	
	public List<MessageVO> selectTalk (MessageSRVO srvo){
		List<MessageVO> msList = sqlMapping.selectList("java86.DAO.selectTalk", srvo);
		return msList;
	}

}
