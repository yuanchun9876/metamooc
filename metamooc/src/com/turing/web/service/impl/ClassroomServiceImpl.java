package com.turing.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.turing.manage.entity.SubjUnit;
import com.turing.manage.mapper.SubjUnitMapper;
import com.turing.web.service.IClassroomService;

@Service
public class ClassroomServiceImpl implements IClassroomService {

	@Autowired
	private SubjUnitMapper suMapper;

	@Override
	public List<SubjUnit> querySubjUnitList() {
		// TODO Auto-generated method stub
		return suMapper.queryAll();
	}
	
	
}
