package com.turing.manage.service;

import java.util.List;

import com.turing.manage.entity.SubjSection;
import com.turing.manage.entity.SubjUnit;
import com.turing.manage.entity.SubjectCourse;

public interface ISubjectCourseService {

	int save(SubjectCourse subj);

	SubjectCourse queryById(String subjSctnId);

	List<SubjectCourse> query();

}
