package com.turing.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.turing.manage.entity.SubjSection;
import com.turing.manage.entity.SubjUnit;
import com.turing.manage.mapper.SubjSectionMapper;
import com.turing.manage.mapper.SubjUnitMapper;
import com.turing.web.entity.Student;
import com.turing.web.mapper.StudentMapper;
import com.turing.web.service.IClassroomService;

@Service
public class ClassroomServiceImpl implements IClassroomService {

	@Autowired
	private SubjUnitMapper suMapper;
	
	@Autowired
	private StudentMapper stuMapper;
	
	@Autowired
	private SubjSectionMapper  sctnMapper;

	@Override
	public List<SubjUnit> querySubjUnitListBySubj(String subjId) {
		// TODO Auto-generated method stub
		return suMapper.queryBySubj(subjId);
	}

	@Override
	public Student queryStuByCard(String crdSn) {
		// TODO Auto-generated method stub
		return stuMapper.queryStuByCard(crdSn);
	}

	@Override
	public List<SubjSection> querySubjSectionListByUnit(String subjUnitId) {
		// TODO Auto-generated method stub
		return sctnMapper.queryByUnit(subjUnitId);
	}
	
	
}
