package mall.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import mall.bean.ProductBean;
import mall.util.SqlSessionFactoryManager;

public class ProductDao {
	private SqlSessionFactory sqlSessionFactory;

	public ProductDao() {
		sqlSessionFactory = SqlSessionFactoryManager.getSqlSessionFactory();
	}

	public List<ProductBean> productListAll(HashMap<Object, Integer> map) {
		return sqlSessionFactory.openSession().selectList("productListAll",map);
	}

	public ProductBean productInfo(String productNo){
		return sqlSessionFactory.openSession().selectOne("productInfo", productNo);
	}
	
	public int getTotalRow(){
		return sqlSessionFactory.openSession().selectOne("getTotalRow");
	}
	
	public void addLike(HashMap<String, String> map){
		try {
			sqlSessionFactory.openSession().insert("addLike", map);
			sqlSessionFactory.openSession().commit();
		} catch (Exception e) {
			e.printStackTrace();
			sqlSessionFactory.openSession().rollback();
		} finally {
			sqlSessionFactory.openSession().close();
		}
	}
	
	public List<ProductBean> listLike(String id){
		return sqlSessionFactory.openSession().selectList("listLike", id);
	}
}
