package com.turing.web.mapper;

import com.turing.web.entity.Student;

public interface StudentMapper {
    int deleteByPrimaryKey(String stuId);

    int insert(Student record);

    int insertSelective(Student record);

    Student selectByPrimaryKey(String stuId);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);

	Student queryStuByCard(String crdSn);
}