package all.controller.user;

import javax.persistence.Entity;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import all.entity.User;

@Transactional
@Entity
@Controller
public class loginController {
	@Autowired
	SessionFactory factory;
	public String username = "bellabin";
	
	@RequestMapping("login")
	public String login() {
		return "user/login";
	}
	
	@RequestMapping("infoLogin") 
	public String showUser(ModelMap model,@ModelAttribute("user") User user, @RequestParam("username") String username, @RequestParam("password")String password,BindingResult errors) {
		Session ses = factory.openSession();
		SP sp = new SP();
		int id = sp.checkLogin(ses, username, password);
		if(id == 0) {
			model.addAttribute("message", "DANG NHAP KHONG DUNG");
			errors.rejectValue("username", "user", "Sai tài khoản hoặc mật khẩu");
			return "user/login";
		}
		else {
			if(username.equals("admin") && password.equals("admin")) {
				System.out.println("asd");
				return "redirect:/admin/users.htm";
			}
		}
		this.username = username;
		return "redirect:/index.htm";
	}
}
