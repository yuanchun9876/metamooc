package com.turing.manage.mapper;

import java.util.List;

import com.turing.manage.entity.Teacher;

public interface TeacherMapper {
	
    int deleteByPrimaryKey(String tchId);

    int insert(Teacher record);

    int insertSelective(Teacher record);

    Teacher selectByPrimaryKey(String tchId);

    int updateByPrimaryKeySelective(Teacher record);

    int updateByPrimaryKey(Teacher record);

	List<Teacher> queryAll();
}