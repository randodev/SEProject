package ro.ucv.ace.service;

import ro.ucv.ace.dto.group.PreviewGroupDto;
import ro.ucv.ace.dto.professor.SaveStudentGradeDto;
import ro.ucv.ace.dto.student.StudentInfoWithGradeDto;
import ro.ucv.ace.dto.subject.PreviewSubjectDto;
import ro.ucv.ace.exception.ServiceEntityAlreadyExistsException;
import ro.ucv.ace.exception.ServiceEntityNotFoundException;

import java.util.List;

/**
 * Created by Geo on 26.05.2016.
 */
public interface ProfessorSubjectService {

    void grade(SaveStudentGradeDto professorGradeDto) throws ServiceEntityAlreadyExistsException, ServiceEntityNotFoundException;

    List<PreviewSubjectDto> getAllSubjectsByProfessor(Integer professorId);

    List<PreviewGroupDto> getAllGroupsByProfessorAndSubject(Integer professorId, Integer subjectId);

    List<StudentInfoWithGradeDto> getAllByGroup(Integer subjectId, Integer groupId);
}
