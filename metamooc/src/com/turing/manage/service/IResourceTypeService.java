package com.turing.manage.service;

import java.util.List;

import com.turing.manage.entity.ResourceType;
import com.turing.manage.entity.SubjSection;
import com.turing.manage.entity.SubjUnit;

public interface IResourceTypeService {

	int save(ResourceType rsrcType);

	ResourceType queryById(String rsrcTypeId);

	List<ResourceType> query();

}
