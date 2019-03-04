package com.kh.food.owner.onevsone.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OnevsOneDaoImpl implements OnevsOneDao {

	@Autowired
	SqlSessionTemplate session;
	
	@Override
	public List<Map<String, String>> oneVSoneList() {
		return session.selectList("oneVSone.oneVSoneList");
	}

	@Override
	public List<Map<String, String>> myQnaList(String ownerId) {
		return session.selectList("oneVSone.myQnaList", ownerId);
	}

	@Override
	public Map<String, String> oneVSoneView(int qnaCode) {
		return session.selectOne("oneVSone.oneVSoneView", qnaCode);
	}

	@Override
	public int selectOwnerForm(String ownerId) {
		return session.selectOne("oneVSone.selectOwnerForm", ownerId);
	}

	@Override
	public int qnaFormEnd(Map<String,Object> qna) {
		return session.insert("oneVSone.insertQna", qna);
	}
	
	

}
