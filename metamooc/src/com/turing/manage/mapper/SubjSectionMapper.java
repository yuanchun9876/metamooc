package com.turing.manage.mapper;

import java.util.List;

import com.turing.manage.entity.SubjSection;

public interface SubjSectionMapper {
    int deleteByPrimaryKey(String subjSctnId);

    int insert(SubjSection record);

    int insertSelective(SubjSection record);

    SubjSection selectByPrimaryKey(String subjSctnId);

    int updateByPrimaryKeySelective(SubjSection record);

    int updateByPrimaryKey(SubjSection record);

	List<SubjSection> queryByUnit(String subjUnitId);

	List<SubjSection> queryAllByTchId(String tchId);
}