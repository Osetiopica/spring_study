package com.ict.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.dao.MyDAO;
import com.ict.vo.CVO;
import com.ict.vo.MVO;
import com.ict.vo.VO;

@Service("myServiceImpl")
public class MyServiceImpl implements MyService {

	@Autowired
	private MyDAO myDAO;

	@Override
	public List<VO> selectList(String category) throws Exception {
		return myDAO.selectList(category);
	}
	
	@Override
	public VO selectOne(String idx) throws Exception {
		return myDAO.selectOne(idx);
	}
	
	@Override
	public MVO selectLogin(MVO mvo) throws Exception {
		return myDAO.selectLogin(mvo);
	}

	@Override
	public List<VO> selectCartList(String m_idx) throws Exception {
		return myDAO.selectCartList(m_idx);
	}

	@Override
	public int insertAddCart(CVO cvo) throws Exception {
		return myDAO.insertAddCart(cvo);
	}

	@Override
	public int updatePlusCart(String idx) throws Exception {
		return myDAO.updatePlusCart(idx);
	}

	@Override
	public int updateEditCart(Map<String, Integer> map) throws Exception {
		return myDAO.updateEditCart(map);
	}

	@Override
	public int deleteCart(CVO cvo) throws Exception {
		return myDAO.deleteCart(cvo);
	}

	@Override
	public int insertProduct(VO vo) throws Exception {
		return myDAO.insertProduct(vo);
	}

}
