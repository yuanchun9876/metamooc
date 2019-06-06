package com.turing.manage.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.turing.manage.entity.SubjSection;
import com.turing.manage.entity.SubjUnit;
import com.turing.manage.mapper.SubjSectionMapper;
import com.turing.manage.mapper.SubjUnitMapper;
import com.turing.manage.service.ISubjSectionService;

@Service
public class SubjSectionServiceImpl implements ISubjSectionService{

	@Autowired
	private SubjSectionMapper sctnMapper;
	
	@Autowired
	private SubjUnitMapper unitMapper;

	@Override
	public List<SubjSection> queryByTchId(String tchId) {
		// TODO Auto-generated method stub
		return sctnMapper.queryAllByTchId(tchId);
	}

	@Override
	public List<SubjUnit> queryUnit() {
		// TODO Auto-generated method stub
		return unitMapper.queryAll();
	}

	@Override
	public List<SubjUnit> queryUnitByTchId(String tchId) {
		// TODO Auto-generated method stub
		return unitMapper.queryByTchId(tchId);
	}

	@Override
	public int save(SubjSection sctn) {
		// TODO Auto-generated method stub
		
	}
}
