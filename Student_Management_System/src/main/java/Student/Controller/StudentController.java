package Student.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import Student.Entity.Student;
import Student.Entity.StudentInfo;
import Student.Repository.InfoStudentRepository;
import Student.Repository.StudentRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {
	@Autowired
    private StudentRepository repo;
   
    @Autowired
    private InfoStudentRepository addrepo;
    
    @RequestMapping("/")
    public String mainpage() {
        return "main";
    }

    @RequestMapping("/SignIn")
    public String Signuppage(@ModelAttribute("student") Student student) {
        return "SignIn";
    }

    @RequestMapping("/Signupsuccess")
    public String signinsucess(@ModelAttribute Student signupsave)
    {
    	repo.save(signupsave);
		return "main";
    }
    //-------------------Signin page end -------------------------------------------
    @RequestMapping("/login")
    public String Loginpage()
    {
		return "login";
    }
    @RequestMapping("/loguser")
    public String log_in(@RequestParam String email, @RequestParam String password, Model model, HttpSession userLog) {
        System.out.println(email);
        System.out.println(password);
        int status = 0;
        Student emp = repo.findByEmail(email);

       
        if (emp != null && emp.getEmail().equals(email) && emp.getPassword().equals(password)) {
            status++;
            userLog.setAttribute("loggedin", emp);
        }

        if (status > 0) {
            return "home"; 
        } else {
            return "login"; 
        }
    }

    //----------------------------------------Login Page End -----------------------------------------------------
    //-----------------------Home page start----------------------------------------------------------------------
     
    @RequestMapping("/AddStudent")
    public String AddStudent()
    {
		return "AddStudent";	
    }
    @RequestMapping("/Addsuccess")
    public String addinfos(@ModelAttribute StudentInfo adds , Model model)
    {
 	   addrepo.save(adds);
 	   return "home";
    }
    
    @RequestMapping("/ListAllData")
    public String viewData(Model model) {
        List<StudentInfo> studentList = addrepo.findAll();
        model.addAttribute("studentList", studentList); 
        System.out.println(studentList);
        return "Viewdata";
       }
    
    
    @RequestMapping("delete/{id}")
	public String dlt_emp(@PathVariable long id)
	{
    	addrepo.deleteById(id);
    	return "redirect:/ListAllData";
	}
    @GetMapping("/edit/{id}")
   	public String editData( @PathVariable long id, Model m)
   	{
   		StudentInfo emp= addrepo.findById(id).orElse(null);
   		m.addAttribute("empp",emp); 
   		return "Update";
   	}
   	
   	
   	 @PostMapping("/Update/{id}")
   	 public String updateData(@PathVariable long id,@ModelAttribute StudentInfo updatedemp)
   	 {
   		StudentInfo emp= addrepo.findById(id).orElse(null);
   		 if(emp!=null)
   		 {   
   			 emp.setName(updatedemp.getName());
   			 emp.setCity(updatedemp.getCity());
   			 emp.setContact(updatedemp.getContact());
   			emp.setCourse(updatedemp.getCourse());
   			emp.setFees(updatedemp.getFees());
   			 
   			 addrepo.save(emp);
   		 }
   		 
   		 return "redirect:/ListAllData";
   	 }
   	 
   	 @RequestMapping("/AboutUs")
   	 public String about()
   	 {
   		 return "AboutUs";
   	 }
   	 @RequestMapping("/ContactUs")
   	 public String contact()
   	 {
   		 return "ContactUs";
   	 }
   	 @RequestMapping("/main")
   	 public String returnhome()
   	 {
   		 return "main";
   	 }
   	 
}

