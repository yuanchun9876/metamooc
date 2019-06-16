package com.turing.manage.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.turing.manage.entity.SubjSection;
import com.turing.manage.entity.SubjUnit;
import com.turing.manage.entity.Teacher;
import com.turing.manage.mapper.SubjSectionMapper;
import com.turing.manage.mapper.SubjUnitMapper;
import com.turing.manage.mapper.TeacherMapper;
import com.turing.manage.service.ISubjSectionService;
import com.turing.manage.service.ITeacherService;

@Service
public class TeacherServiceImpl implements ITeacherService{

	@Autowired
	private TeacherMapper tchMapper;
	
	
	@Override
	public int save(Teacher tch) {
		// TODO Auto-generated method stub		
		return tchMapper.insertSelective(tch);
	}

	@Override
	public Teacher queryById(String tchId) {
		// TODO Auto-generated method stub
		return tchMapper.selectByPrimaryKey(tchId);
	}

	@Override
	public List<Teacher> queryAll() {
		// TODO Auto-generated method stub
		return tchMapper.queryAll();
	}
}
