package com.turing.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import com.turing.web.entity.NoteType;

public interface NoteTypeMapper {
    int deleteByPrimaryKey(String noteTypeId);

    int insert(NoteType record);

    int insertSelective(NoteType record);

    NoteType selectByPrimaryKey(String noteTypeId);

    int updateByPrimaryKeySelective(NoteType record);

    int updateByPrimaryKey(NoteType record);

    @Select("select note_type_id, note_type_name from note_type")
    @ResultMap("BaseResultMap")
	List<NoteType> queryAll();
}