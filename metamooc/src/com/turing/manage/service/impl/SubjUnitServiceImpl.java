package com.turing.manage.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.turing.manage.entity.SubjSection;
import com.turing.manage.entity.SubjUnit;
import com.turing.manage.entity.SubjectCourse;
import com.turing.manage.mapper.SubjSectionMapper;
import com.turing.manage.mapper.SubjUnitMapper;
import com.turing.manage.mapper.SubjectCourseMapper;
import com.turing.manage.service.ISubjSectionService;
import com.turing.manage.service.ISubjUnitService;

@Service
public class SubjUnitServiceImpl implements ISubjUnitService{

	@Autowired
	private SubjectCourseMapper subjMapper;
	
	@Autowired
	private SubjUnitMapper unitMapper;

	@Override
	public List<SubjUnit> queryByTchId(String tchId) {
		// TODO Auto-generated method stub
		return unitMapper.queryByTchId(tchId);
	}


	@Override
	public int save(SubjUnit unit) {
		// TODO Auto-generated method stub		
		return unitMapper.insertSelective(unit);
	}

	@Override
	public SubjUnit queryById(String subjUnitId) {
		// TODO Auto-generated method stub
		return unitMapper.selectByPrimaryKey(subjUnitId);
	}


	@Override
	public List<SubjectCourse> querySubjectCourse() {
		// TODO Auto-generated method stub
		return subjMapper.queryAll();
	}
}
