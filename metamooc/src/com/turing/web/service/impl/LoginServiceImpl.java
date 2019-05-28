package com.turing.web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.turing.web.entity.Student;
import com.turing.web.entity.StudyCard;
import com.turing.web.mapper.StudentMapper;
import com.turing.web.mapper.StudyCardMapper;
import com.turing.web.service.ILoginService;

@Service
public class LoginServiceImpl implements ILoginService {

	@Autowired
	private StudyCardMapper cardMapper;
	
	@Autowired
	private StudentMapper stuMapper;
	
	@Override
	public Student queryStuByCard(String crdId) {
		// TODO Auto-generated method stub
		return stuMapper.queryStuByCard(crdId);
	}

	@Override
	public StudyCard queryCardBySn(String crdSn) {
		// TODO Auto-generated method stub
		return cardMapper.queryCardBySn(crdSn);
	}

	@Override
	public int isInvalid() {
		// TODO Auto-generated method stub
		return stuMapper.isInvalid();
	}

	
}
