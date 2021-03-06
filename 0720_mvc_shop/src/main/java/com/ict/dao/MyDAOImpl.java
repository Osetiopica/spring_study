package com.ict.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.vo.CVO;
import com.ict.vo.MVO;
import com.ict.vo.VO;

@Repository("myDAOImpl")
public class MyDAOImpl implements MyDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<VO> selectList(String category) throws Exception {
		return sqlSessionTemplate.selectList("shop.list", category);
	}
	
	@Override
	public VO selectOne(String idx) throws Exception {
		return sqlSessionTemplate.selectOne("shop.detail", idx);
	}
	
	@Override
	public MVO selectLogin(MVO mvo) throws Exception {
		return sqlSessionTemplate.selectOne("shop.login", mvo);
	}

	@Override
	public List<VO> selectCartList(String m_idx) throws Exception {
		return sqlSessionTemplate.selectList("shop.cartList", m_idx);
	}

	@Override
	public int insertAddCart(CVO cvo) throws Exception {
		return sqlSessionTemplate.insert("shop.addCart", cvo);
	}

	@Override
	public int updatePlusCart(String idx) throws Exception {
		return sqlSessionTemplate.update("shop.plusCart", idx);
	}

	@Override
	public int updateEditCart(Map<String, Integer> map) throws Exception {
		return sqlSessionTemplate.update("shop.editCart", map);
	}

	@Override
	public int deleteCart(CVO cvo) throws Exception {
		return sqlSessionTemplate.delete("shop.deleteCart", cvo);
	}

	@Override
	public int insertProduct(VO vo) throws Exception {
		return sqlSessionTemplate.insert("shop.addProduct", vo);
	}
	
}
