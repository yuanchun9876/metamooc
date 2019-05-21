package com.turing.manage.mapper;

import com.turing.manage.entity.SubjectCourse;

public interface SubjectCourseMapper {
    int deleteByPrimaryKey(String subjId);

    int insert(SubjectCourse record);

    int insertSelective(SubjectCourse record);

    SubjectCourse selectByPrimaryKey(String subjId);

    int updateByPrimaryKeySelective(SubjectCourse record);

    int updateByPrimaryKey(SubjectCourse record);
}