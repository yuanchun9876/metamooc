package com.turing.manage.service.impl;

import java.util.List;
import java.util.UUID;

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
import com.turing.manage.service.IResourceDataService;
import com.turing.manage.service.ISubjSectionService;

@Service
public class ResourceDataServiceImpl implements IResourceDataService{

	@Autowired
	private ResourceDataMapper rsrcMapper;
	
	@Autowired
	private SubjUnitMapper unitMapper;
	
	@Autowired
	private ResourceTypeMapper rsrcTypeMapper;


	@Override
	public List<SubjUnit> queryUnit() {
		// TODO Auto-generated method stub
		return unitMapper.queryAll();
	}


	@Override
	public int save(ResourceData rsrc) {
		// TODO Auto-generated method stub		
		return rsrcMapper.insertSelective(rsrc);
	}

	@Override
	public ResourceData queryById(String rsrcId) {
		// TODO Auto-generated method stub
		return rsrcMapper.selectByPrimaryKey(rsrcId);
	}


	@Override
	public List<ResourceData> query() {
		// TODO Auto-generated method stub
		return rsrcMapper.queryAll();
	}


	@Override
	public List<ResourceType> queryType() {
		// TODO Auto-generated method stub
		return rsrcTypeMapper.queryAll();
	}
}
