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
import com.turing.manage.service.ISubjectCourseService;

@Service
public class SubjectCourseServiceImpl implements ISubjectCourseService{

	@Autowired
	private SubjectCourseMapper subjMapper;
	

	@Override
	public int save(SubjectCourse subj) {
		// TODO Auto-generated method stub
		
		return subjMapper.insertSelective(subj);
	}

	@Override
	public SubjectCourse queryById(String subjId) {
		// TODO Auto-generated method stub
		return subjMapper.selectByPrimaryKey(subjId);
	}

	@Override
	public List<SubjectCourse> query() {
		// TODO Auto-generated method stub
		return subjMapper.queryAll();
	}
}
