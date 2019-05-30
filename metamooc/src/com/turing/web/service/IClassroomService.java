package com.turing.web.service;

import java.util.List;

import com.turing.manage.entity.ResourceData;
import com.turing.manage.entity.ResourceType;
import com.turing.manage.entity.SubjSection;
import com.turing.manage.entity.SubjUnit;
import com.turing.web.entity.Student;

public interface IClassroomService {

	List<SubjUnit> querySubjUnitListBySubj(String subjId);

	Student queryStuByCard(String crdSn);

	List<SubjSection> querySubjSectionListByUnit(String subjUnitId);

	List<ResourceType> queryRsrcTypeByUnit(String unitId);

	List<ResourceData> queryRsrcDataByUnit(String unitId);

	SubjUnit queryById(String unitId);

	SubjSection querySctnById(String sctnId);

}
