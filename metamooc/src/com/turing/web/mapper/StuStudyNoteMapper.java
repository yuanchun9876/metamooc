package com.turing.web.mapper;

import java.util.List;

import com.turing.web.entity.StuStudyNote;

public interface StuStudyNoteMapper {
    int deleteByPrimaryKey(String stuNoteId);

    int insert(StuStudyNote record);

    int insertSelective(StuStudyNote record);

    StuStudyNote selectByPrimaryKey(String stuNoteId);

    int updateByPrimaryKeySelective(StuStudyNote record);

    int updateByPrimaryKey(StuStudyNote record);

	List<StuStudyNote> queryStuStudyNoteByStu(String stuId);
}