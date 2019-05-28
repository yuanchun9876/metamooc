package com.turing.web.mapper;

import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Select;

import com.turing.web.entity.Student;

public interface StudentMapper {
    int deleteByPrimaryKey(String stuId);

    int insert(Student record);

    int insertSelective(Student record);

    Student selectByPrimaryKey(String stuId);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);

	Student queryStuByCard(String crdId);

	@Select("select TIMESTAMPDIFF(MINUTE ,stu.INVALID_DATE , SYSDATE()) , stu.INVALID_DATE  from student as stu")
	@ResultType(int.class)
	int isInvalid();
}