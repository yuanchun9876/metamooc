package com.turing.web.service;

import java.util.List;

import com.turing.manage.entity.SubjUnit;
import com.turing.web.entity.Student;

public interface IClassroomService {

	List<SubjUnit> querySubjUnitList();

	Student queryStuByCard(String crdSn);

}
