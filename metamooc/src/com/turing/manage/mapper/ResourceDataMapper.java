package com.turing.manage.mapper;

import java.util.List;

import com.turing.manage.entity.ResourceData;

public interface ResourceDataMapper {
    int deleteByPrimaryKey(String rsrcId);

    int insert(ResourceData record);

    int insertSelective(ResourceData record);

    ResourceData selectByPrimaryKey(String rsrcId);

    int updateByPrimaryKeySelective(ResourceData record);

    int updateByPrimaryKey(ResourceData record);

	List<ResourceData> queryRsrcDataByUnit(String unitId);
}