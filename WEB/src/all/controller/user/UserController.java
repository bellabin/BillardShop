package all.controller.user;

import java.util.List;

import javax.persistence.Entity;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import all.entity.Category;
@Transactional
@Entity
@Controller	
@RequestMapping(value= {"", "/user/"})
public class UserController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping(value= {"/", "index"})
	public String home(ModelMap model) {
		model.addAttribute("iphone", "active");
		model.addAttribute("trangchu", "active");
		
		Session ses = factory.getCurrentSession();
		String sql = "FROM Category";	
		Query q = ses.createQuery(sql);
		List<Category> list = q.list();
		model.addAttribute("products", list);
		model.addAttribute("url", "index");
		return "user/store";
	}
	
	@RequestMapping("register")
	public String register() {
		return "user/register";
	}
	
	@RequestMapping("blank")
	public String blank() {
		return "user/blank";
	}
}
