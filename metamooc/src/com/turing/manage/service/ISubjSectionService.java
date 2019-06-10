package com.turing.manage.service;

import java.util.List;

import com.turing.manage.entity.SubjSection;
import com.turing.manage.entity.SubjUnit;

public interface ISubjSectionService {

	List<SubjSection> queryByTchId(String tchId);

	List<SubjUnit> queryUnit();

	List<SubjUnit> queryUnitByTchId(String tchId);

	int save(SubjSection sctn);

	SubjSection queryById(String subjSctnId);

}
