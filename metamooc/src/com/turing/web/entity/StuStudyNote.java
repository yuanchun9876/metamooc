package com.turing.web.entity;

import java.math.BigDecimal;
import java.util.Date;

public class StuStudyNote {
    private String stuNoteId;

    private String noteTypeId;

    private String stuId;

    private String stuStdyId;

    private String stuNoteContent;

    private Date stuNoteTime;

    private Integer stuNoteProg;
    
    

    @Override
	public String toString() {
		return "StuStudyNote [stuNoteId=" + stuNoteId + ", noteTypeId=" + noteTypeId + ", stuId=" + stuId
				+ ", stuStdyId=" + stuStdyId + ", stuNoteContent=" + stuNoteContent + ", stuNoteTime=" + stuNoteTime
				+ ", stuNoteProg=" + stuNoteProg + "]";
	}

	public String getStuNoteId() {
        return stuNoteId;
    }

    public void setStuNoteId(String stuNoteId) {
        this.stuNoteId = stuNoteId == null ? null : stuNoteId.trim();
    }

    public String getNoteTypeId() {
        return noteTypeId;
    }

    public void setNoteTypeId(String noteTypeId) {
        this.noteTypeId = noteTypeId == null ? null : noteTypeId.trim();
    }

    public String getStuId() {
        return stuId;
    }

    public void setStuId(String stuId) {
        this.stuId = stuId == null ? null : stuId.trim();
    }

    public String getStuStdyId() {
        return stuStdyId;
    }

    public void setStuStdyId(String stuStdyId) {
        this.stuStdyId = stuStdyId == null ? null : stuStdyId.trim();
    }

    public String getStuNoteContent() {
        return stuNoteContent;
    }

    public void setStuNoteContent(String stuNoteContent) {
        this.stuNoteContent = stuNoteContent == null ? null : stuNoteContent.trim();
    }

    public Date getStuNoteTime() {
        return stuNoteTime;
    }

    public void setStuNoteTime(Date stuNoteTime) {
        this.stuNoteTime = stuNoteTime;
    }

    public Integer getStuNoteProg() {
        return stuNoteProg;
    }

    public void setStuNoteProg(Integer stuNoteProg) {
        this.stuNoteProg = stuNoteProg;
    }
}