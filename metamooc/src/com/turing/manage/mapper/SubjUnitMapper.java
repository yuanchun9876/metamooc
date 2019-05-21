package com.turing.manage.mapper;

import java.util.List;

import com.turing.manage.entity.SubjUnit;

public interface SubjUnitMapper {
    int deleteByPrimaryKey(String subjUnitId);

    int insert(SubjUnit record);

    int insertSelective(SubjUnit record);

    SubjUnit selectByPrimaryKey(String subjUnitId);

    int updateByPrimaryKeySelective(SubjUnit record);

    int updateByPrimaryKey(SubjUnit record);

	List<SubjUnit> queryAll();
}