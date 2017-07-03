package mall.dao;

import org.apache.ibatis.session.SqlSessionFactory;

import mall.util.SqlSessionFactoryManager;

public class MemberDao {
	private SqlSessionFactory sqlSessionFactory;

	public MemberDao() {
		sqlSessionFactory = SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public boolean idCheck(String id, String pw){
		String dbPw = sqlSessionFactory.openSession().selectOne("idCheck", id);
		return pw.equals(dbPw)?true:false;
	}

}
