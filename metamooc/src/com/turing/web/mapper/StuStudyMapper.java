package com.turing.web.mapper;

import org.apache.ibatis.annotations.Param;

import com.turing.web.entity.StuStudy;

public interface StuStudyMapper {
    int deleteByPrimaryKey(String stuStdyId);

    int insert(StuStudy record);

    int insertSelective(StuStudy record);

    StuStudy selectByPrimaryKey(String stuStdyId);

    int updateByPrimaryKeySelective(StuStudy record);

    int updateByPrimaryKey(StuStudy record);

	StuStudy isHavRow(@Param("stuId")String stuId, @Param("subjSctnId")String subjSctnId) ;
}