package com.turing.manage.service;

import java.util.List;

import com.turing.manage.entity.SubjSection;
import com.turing.manage.entity.SubjUnit;
import com.turing.manage.entity.SubjectCourse;

public interface ISubjUnitService {

	List<SubjUnit> queryByTchId(String tchId);

	int save(SubjUnit unit);

	SubjUnit queryById(String subjSctnId);

	List<SubjectCourse> querySubjectCourse();

}
