package com.turing.manage.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.turing.manage.entity.ResourceType;
import com.turing.manage.entity.SubjSection;
import com.turing.manage.entity.SubjUnit;
import com.turing.manage.mapper.ResourceTypeMapper;
import com.turing.manage.mapper.SubjSectionMapper;
import com.turing.manage.mapper.SubjUnitMapper;
import com.turing.manage.service.IResourceTypeService;
import com.turing.manage.service.ISubjSectionService;

@Service
public class ResourceTypeServiceImpl implements IResourceTypeService{

	@Autowired
	private ResourceTypeMapper rsrcTypeMapper;

	
	@Override
	public int save(ResourceType rsrcType) {
		// TODO Auto-generated method stub
		
		return rsrcTypeMapper.insertSelective(rsrcType);
	}

	@Override
	public ResourceType queryById(String rsrcTypeId) {
		// TODO Auto-generated method stub
		return rsrcTypeMapper.selectByPrimaryKey(rsrcTypeId);
	}

	@Override
	public List<ResourceType> query() {
		// TODO Auto-generated method stub
		return rsrcTypeMapper.queryAll();
	}
}
