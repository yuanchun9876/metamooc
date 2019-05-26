package com.turing.web.entity;

import java.util.Date;

public class Student {
    private String stuId;

    private String crdId;

    private String eduTypeId;

    private String stuName;

    private String stuNick;

    private String stuSex;

    private String stuUnivColg;

    private String stuMajor;

    private String stuFace;

    private String stuPass;

    private String stuPhone;

    private String stuWeixin;

    private String stuQq;

    private String stuEmail;

    private Date activationTime;

    private Date invalidDate;
    
    private String crdSn;


    
    
    public String getCrdSn() {
		return crdSn;
	}

	public void setCrdSn(String crdSn) {
		this.crdSn = crdSn;
	}

	public String getStuId() {
        return stuId;
    }

    public void setStuId(String stuId) {
        this.stuId = stuId == null ? null : stuId.trim();
    }

    public String getCrdId() {
        return crdId;
    }

    public void setCrdId(String crdId) {
        this.crdId = crdId == null ? null : crdId.trim();
    }

    public String getEduTypeId() {
        return eduTypeId;
    }

    public void setEduTypeId(String eduTypeId) {
        this.eduTypeId = eduTypeId == null ? null : eduTypeId.trim();
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName == null ? null : stuName.trim();
    }

    public String getStuNick() {
        return stuNick;
    }

    public void setStuNick(String stuNick) {
        this.stuNick = stuNick == null ? null : stuNick.trim();
    }

    public String getStuSex() {
        return stuSex;
    }

    public void setStuSex(String stuSex) {
        this.stuSex = stuSex == null ? null : stuSex.trim();
    }

    public String getStuUnivColg() {
        return stuUnivColg;
    }

    public void setStuUnivColg(String stuUnivColg) {
        this.stuUnivColg = stuUnivColg == null ? null : stuUnivColg.trim();
    }

    public String getStuMajor() {
        return stuMajor;
    }

    public void setStuMajor(String stuMajor) {
        this.stuMajor = stuMajor == null ? null : stuMajor.trim();
    }

    public String getStuFace() {
        return stuFace;
    }

    public void setStuFace(String stuFace) {
        this.stuFace = stuFace == null ? null : stuFace.trim();
    }

    public String getStuPass() {
        return stuPass;
    }

    public void setStuPass(String stuPass) {
        this.stuPass = stuPass == null ? null : stuPass.trim();
    }

    public String getStuPhone() {
        return stuPhone;
    }

    public void setStuPhone(String stuPhone) {
        this.stuPhone = stuPhone == null ? null : stuPhone.trim();
    }

    public String getStuWeixin() {
        return stuWeixin;
    }

    public void setStuWeixin(String stuWeixin) {
        this.stuWeixin = stuWeixin == null ? null : stuWeixin.trim();
    }

    public String getStuQq() {
        return stuQq;
    }

    public void setStuQq(String stuQq) {
        this.stuQq = stuQq == null ? null : stuQq.trim();
    }

    public String getStuEmail() {
        return stuEmail;
    }

    public void setStuEmail(String stuEmail) {
        this.stuEmail = stuEmail == null ? null : stuEmail.trim();
    }

    public Date getActivationTime() {
        return activationTime;
    }

    public void setActivationTime(Date activationTime) {
        this.activationTime = activationTime;
    }

    public Date getInvalidDate() {
        return invalidDate;
    }

    public void setInvalidDate(Date invalidDate) {
        this.invalidDate = invalidDate;
    }
}