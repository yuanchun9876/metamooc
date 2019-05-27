package com.turing.web.entity;

public class StudyCard {
    private String crdId;

    private String crdSn;

    private String crdPass;

    private Integer crdLen;
    
    private Integer crdIsActive;
    

    public String getCrdId() {
        return crdId;
    }

    public void setCrdId(String crdId) {
        this.crdId = crdId == null ? null : crdId.trim();
    }

    public String getCrdSn() {
        return crdSn;
    }

    public void setCrdSn(String crdSn) {
        this.crdSn = crdSn == null ? null : crdSn.trim();
    }

    public String getCrdPass() {
        return crdPass;
    }

    public void setCrdPass(String crdPass) {
        this.crdPass = crdPass == null ? null : crdPass.trim();
    }

    public Integer getCrdLen() {
        return crdLen;
    }

    public void setCrdLen(Integer crdLen) {
        this.crdLen = crdLen;
    }

	public Integer getCrdIsActive() {
		return crdIsActive;
	}

	public void setCrdIsActive(Integer crdIsActive) {
		this.crdIsActive = crdIsActive;
	}
    
}