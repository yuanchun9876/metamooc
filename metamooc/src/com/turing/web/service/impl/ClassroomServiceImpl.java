package com.turing.web.service.impl;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.turing.manage.entity.ResourceData;
import com.turing.manage.entity.ResourceType;
import com.turing.manage.entity.SubjSection;
import com.turing.manage.entity.SubjUnit;
import com.turing.manage.mapper.ResourceDataMapper;
import com.turing.manage.mapper.ResourceTypeMapper;
import com.turing.manage.mapper.SubjSectionMapper;
import com.turing.manage.mapper.SubjUnitMapper;
import com.turing.web.entity.NoteType;
import com.turing.web.entity.StuStudy;
import com.turing.web.entity.StuStudyNote;
import com.turing.web.entity.Student;
import com.turing.web.mapper.NoteTypeMapper;
import com.turing.web.mapper.StuStudyMapper;
import com.turing.web.mapper.StuStudyNoteMapper;
import com.turing.web.mapper.StudentMapper;
import com.turing.web.service.IClassroomService;

@Service
public class ClassroomServiceImpl implements IClassroomService {

	@Autowired
	private SubjUnitMapper unitMapper;
	
	@Autowired
	private StudentMapper stuMapper;
	
	@Autowired
	private SubjSectionMapper  sctnMapper;
	
	@Autowired
	private ResourceTypeMapper rsrcTypeMapper;
	
	@Autowired
	private ResourceDataMapper  rsrcDataMapper;
	
	@Autowired
	private NoteTypeMapper  noteTypeMapper;
	
	@Autowired
	private StuStudyNoteMapper  ssNoteMapper;
	
	@Autowired
	private StuStudyMapper stuStudyMapper;
	

	@Override
	public List<SubjUnit> querySubjUnitListBySubj(String subjId) {
		// TODO Auto-generated method stub
		return unitMapper.queryBySubj(subjId);
	}

	@Override
	public Student queryStuByCard(String crdSn) {
		// TODO Auto-generated method stub
		return stuMapper.queryStuByCard(crdSn);
	}

	@Override
	public List<SubjSection> querySubjSectionListByUnit(String subjUnitId) {
		// TODO Auto-generated method stub
		return sctnMapper.queryByUnit(subjUnitId);
	}

	@Override
	public List<ResourceType> queryRsrcTypeByUnit(String unitId) {
		// TODO Auto-generated method stub
		return rsrcTypeMapper.queryRsrcTypeByUnit(unitId);
	}

	@Override
	public List<ResourceData> queryRsrcDataByUnit(String unitId) {
		// TODO Auto-generated method stub
		return rsrcDataMapper.queryRsrcDataByUnit(unitId);
	}

	@Override
	public SubjUnit queryById(String unitId) {
		// TODO Auto-generated method stub
		return unitMapper.selectByPrimaryKey(unitId);
	}

	@Override
	public SubjSection querySctnById(String sctnId) {
		// TODO Auto-generated method stub
		return sctnMapper.selectByPrimaryKey(sctnId);
	}

	@Override
	public List<NoteType> queryNoteType() {
		// TODO Auto-generated method stub
		return noteTypeMapper.queryAll();
	}

	@Override
	public List<StuStudyNote> queryStuStudyNoteByStu(String stuId) {
		// TODO Auto-generated method stub
		return ssNoteMapper.queryStuStudyNoteByStu(stuId);
	}

	@Override
	public StuStudy stuStudyInfo(String stuId, String subjSctnId) {
		// TODO Auto-generated method stub
		// 根据 两个ID 判断是否有记录
		StuStudy stuStudy = stuStudyMapper.isHavRow(stuId, subjSctnId);
		if (stuStudy == null) {
			// 没有 就新增
			stuStudy = new StuStudy();
			stuStudy.setStuStdyId(UUID.randomUUID().toString());
			stuStudy.setStuId(stuId);
			stuStudy.setStdyBeginTime(new Date());
			stuStudy.setStdyNewTime(new Date());
			stuStudy.setStdyIsover("0");
			stuStudy.setSubjSctnId(subjSctnId);
			//
			stuStudyMapper.insertSelective(stuStudy);
		} else {
			// 有就修改信息
			stuStudy.setStdyNewTime(new Date());
			stuStudyMapper.updateByPrimaryKeySelective(stuStudy);
		}
		return stuStudy;
	}

	@Override
	public int addStudyNote(StuStudyNote note) {
		// TODO Auto-generated method stub
		return ssNoteMapper.insertSelective(note);
	}
	
	
}
