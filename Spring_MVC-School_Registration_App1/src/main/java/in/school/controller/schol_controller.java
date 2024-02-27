package in.school.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import in.school.service.School_Service;

import in.school.entity.*;


@Controller
@RequestMapping("/school")
public class schol_controller {
	
	@Autowired
	School_Service school_Service;
	
	@GetMapping("/list")
	public String listOfEmployee(Map<String,Object>model)
	{
		
		List<School_Registration>schList =  school_Service.schoolList();
		System.out.println(schList.toString());
		model.put("schList",schList);
		//System.out.println("Test"+schList.toString());
		return "schlist";
	}
	
	//to show a form
		@GetMapping("/showform")
		public String ShowFrom(Map<String, Object>model)
		{
			School_Registration reg=new School_Registration();
			model.put("reg", reg);
			return "schoolform";
		}
		
	// save a  Student	
		@PostMapping("/saveStudent")
		public String saveStudent(@ModelAttribute("std") School_Registration registration)
		{
			//System.out.println(registration);
			school_Service.saveStudent(registration);
			return "redirect:/school/list";
		}
		
		
	//to delete a student	
		@GetMapping("/deleteStudent")
		public String deleteStudent(@RequestParam Integer sid)
		{
			
			school_Service.deleteStudentById(sid);
			return "redirect:/school/list";
		}
		
		//update
		@GetMapping("/showformupdate")
		public String updateStudent(@RequestParam Integer sid,Map<String, Object>model)
		{
			School_Registration registration=school_Service.updateStudentById(sid);
			model.put("reg", registration);
			
			return "schoolform";
		}
		
		//login
		@PostMapping("/login")
		public String login(@ModelAttribute("login") Mentor_Login login)
		{
				List<Mentor_Login>loginlist=(List<Mentor_Login>) school_Service.validateLogin();
				System.out.println(loginlist.toString());
				System.out.println("login"+login);
			for (Mentor_Login student_Login : loginlist) {
				if(student_Login.getMemail().equals(login.getMemail()) && student_Login.getMpassword().equals(login.getMpassword()))
				{
					return "schlist";
				}
			}
			
			return "redirect:../index.jsp?iserror=1";
		}
		
		@GetMapping("/newuser")
		public String registerNewUser()
		{
			return "mentorregistration";
		}
		
		@PostMapping("/signup")
		public String registerMentor(@ModelAttribute("mentor") Mentor_Login mentor_Login)
		{
			
			school_Service.saveMentor(mentor_Login);
			return "redirect:../index.jsp";
		}
		
		
}
