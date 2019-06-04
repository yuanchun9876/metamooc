package com.turing.web.entity;

import java.math.BigDecimal;
import java.util.Date;

public class StuStudy {
    private String stuStdyId;

    private String stuId;

    private String subjSctnId;

    private Integer stdyProgress;

    private Date stdyBeginTime;

    private Date stdyNewTime;

    private String stdyIsover;

    public String getStuStdyId() {
        return stuStdyId;
    }

    public void setStuStdyId(String stuStdyId) {
        this.stuStdyId = stuStdyId == null ? null : stuStdyId.trim();
    }

    public String getStuId() {
        return stuId;
    }

    public void setStuId(String stuId) {
        this.stuId = stuId == null ? null : stuId.trim();
    }

    public String getSubjSctnId() {
        return subjSctnId;
    }

    public void setSubjSctnId(String subjSctnId) {
        this.subjSctnId = subjSctnId == null ? null : subjSctnId.trim();
    }

    public Integer getStdyProgress() {
        return stdyProgress;
    }

    public void setStdyProgress(Integer stdyProgress) {
        this.stdyProgress = stdyProgress;
    }

    public Date getStdyBeginTime() {
        return stdyBeginTime;
    }

    public void setStdyBeginTime(Date stdyBeginTime) {
        this.stdyBeginTime = stdyBeginTime;
    }

    public Date getStdyNewTime() {
        return stdyNewTime;
    }

    public void setStdyNewTime(Date stdyNewTime) {
        this.stdyNewTime = stdyNewTime;
    }

    public String getStdyIsover() {
        return stdyIsover;
    }

    public void setStdyIsover(String stdyIsover) {
        this.stdyIsover = stdyIsover == null ? null : stdyIsover.trim();
    }
}