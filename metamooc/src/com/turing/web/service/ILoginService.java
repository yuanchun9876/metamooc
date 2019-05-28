package com.turing.web.service;

import com.turing.web.entity.Student;
import com.turing.web.entity.StudyCard;

public interface ILoginService {

	Student queryStuByCard(String crdId);

	StudyCard queryCardBySn(String crdSn);

	int isInvalid();

}
