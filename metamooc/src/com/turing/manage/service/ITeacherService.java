package com.turing.manage.service;

import java.util.List;

import com.turing.manage.entity.SubjSection;
import com.turing.manage.entity.SubjUnit;
import com.turing.manage.entity.Teacher;

public interface ITeacherService {

	int save(Teacher tch);

	Teacher queryById(String subjSctnId);

	List<Teacher> queryAll();

}
