package com.turing.web.entity;

public class NoteType {
    private String noteTypeId;

    private String noteTypeName;

    public String getNoteTypeId() {
        return noteTypeId;
    }

    public void setNoteTypeId(String noteTypeId) {
        this.noteTypeId = noteTypeId == null ? null : noteTypeId.trim();
    }

    public String getNoteTypeName() {
        return noteTypeName;
    }

    public void setNoteTypeName(String noteTypeName) {
        this.noteTypeName = noteTypeName == null ? null : noteTypeName.trim();
    }
}