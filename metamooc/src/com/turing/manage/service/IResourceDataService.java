package com.turing.manage.service;

import java.util.List;

import com.turing.manage.entity.ResourceData;
import com.turing.manage.entity.ResourceType;
import com.turing.manage.entity.SubjSection;
import com.turing.manage.entity.SubjUnit;

public interface IResourceDataService {

	List<SubjUnit> queryUnit();

	int save(ResourceData rsrc);

	ResourceData queryById(String rsrcId);

	List<ResourceData> query();

	List<ResourceType> queryType();

}
