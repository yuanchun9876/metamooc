package com.turing.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.turing.manage.entity.ResourceData;
import com.turing.manage.entity.ResourceType;
import com.turing.manage.entity.SubjSection;
import com.turing.manage.entity.SubjUnit;
import com.turing.manage.mapper.ResourceDataMapper;
import com.turing.manage.mapper.ResourceTypeMapper;
import com.turing.manage.mapper.SubjSectionMapper;
import com.turing.manage.mapper.SubjUnitMapper;
import com.turing.web.entity.Student;
import com.turing.web.mapper.StudentMapper;
import com.turing.web.service.IClassroomService;

@Service
public class ClassroomServiceImpl implements IClassroomService {

	@Autowired
	private SubjUnitMapper unitMapper;
	
	@Autowired
	private StudentMapper stuMapper;
	
	@Autowired
	private SubjSectionMapper  sctnMapper;
	
	@Autowired
	private ResourceTypeMapper rsrcTypeMapper;
	
	@Autowired
	private ResourceDataMapper  rsrcDataMapper;

	@Override
	public List<SubjUnit> querySubjUnitListBySubj(String subjId) {
		// TODO Auto-generated method stub
		return unitMapper.queryBySubj(subjId);
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

	@Override
	public List<ResourceType> queryRsrcTypeByUnit(String unitId) {
		// TODO Auto-generated method stub
		return rsrcTypeMapper.queryRsrcTypeByUnit(unitId);
	}

	@Override
	public List<ResourceData> queryRsrcDataByUnit(String unitId) {
		// TODO Auto-generated method stub
		return rsrcDataMapper.queryRsrcDataByUnit(unitId);
	}

	@Override
	public SubjUnit queryById(String unitId) {
		// TODO Auto-generated method stub
		return unitMapper.selectByPrimaryKey(unitId);
	}

	@Override
	public SubjSection querySctnById(String sctnId) {
		// TODO Auto-generated method stub
		return sctnMapper.selectByPrimaryKey(sctnId);
	}
	
	
}
