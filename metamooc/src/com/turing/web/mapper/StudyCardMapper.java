package com.turing.web.mapper;

import com.turing.web.entity.StudyCard;

public interface StudyCardMapper {
    int deleteByPrimaryKey(String crdId);

    int insert(StudyCard record);

    int insertSelective(StudyCard record);

    StudyCard selectByPrimaryKey(String crdId);

    int updateByPrimaryKeySelective(StudyCard record);

    int updateByPrimaryKey(StudyCard record);
}