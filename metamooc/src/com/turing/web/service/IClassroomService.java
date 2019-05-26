package com.turing.web.service;

import java.util.List;

import com.turing.manage.entity.SubjSection;
import com.turing.manage.entity.SubjUnit;
import com.turing.web.entity.Student;

public interface IClassroomService {

	List<SubjUnit> querySubjUnitListBySubj(String subjId);

	Student queryStuByCard(String crdSn);

	List<SubjSection> querySubjSectionListByUnit(String subjUnitId);

}
