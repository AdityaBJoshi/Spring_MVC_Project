package in.school.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.school.dao.*;
import in.school.entity.*;
@Service
public class School_Service {
	
	@Autowired
	StudentDAO dao;
	
	@Autowired
	Mentor_Login_DAO logindao;
	
	
	
	
	
	public List<School_Registration>schoolList()
	{
		List<School_Registration>schList = (List<School_Registration>) dao.findAll();
		return schList;
	}
	
	public void saveStudent(School_Registration registration)
	{
		dao.save(registration);
	}
	
	public void deleteStudentById(Integer sid)
	{
		dao.deleteById(sid);
	}
	
	public School_Registration updateStudentById(Integer sid)
	{
		Optional<School_Registration>student_info=dao.findById(sid);
		return student_info.get();
	}
	public Iterable<Mentor_Login> validateLogin()
	{
		Iterable<Mentor_Login>login1=logindao.findAll();
		return login1;
	}
	
	public void saveMentor(Mentor_Login login)
	{
		logindao.save(login);
	}
}
