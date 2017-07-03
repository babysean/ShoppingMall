package mall.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;

import mall.bean.ProductBean;
import mall.util.SqlSessionFactoryManager;

public class ProductDao {
	private SqlSessionFactory sqlSessionFactory;

	public ProductDao() {
		sqlSessionFactory = SqlSessionFactoryManager.getSqlSessionFactory();
	}

	public List<ProductBean> productListAll() {
		return sqlSessionFactory.openSession().selectList("productListAll");
	}

	public ProductBean productInfo(String productNo){
		return sqlSessionFactory.openSession().selectOne("productInfo", productNo);
	}
}
