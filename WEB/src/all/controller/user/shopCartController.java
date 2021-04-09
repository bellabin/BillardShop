package all.controller.user;

import java.util.List;

import javax.persistence.Entity;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import all.bean.Mailer;
import all.entity.Category;
import all.entity.Detail;
import all.entity.Order;
import all.entity.User;

@Transactional
@Entity
@Controller
public class shopCartController {
	@Autowired
	SessionFactory factory;
	@Autowired
	Mailer mailer;
	int sl = 1;
	int idorder = 0;
	
	@RequestMapping("shopCart")
	public String index(ModelMap model) {
		Session ses = factory.getCurrentSession(); 
		String sql = "FROM Detail";
		Query q = ses.createQuery(sql);
		List<Detail> list = q.list();
		model.addAttribute("qlt", sl);
		model.addAttribute("total", list.size());
		model.addAttribute("list", list);
		return "user/cart";
	}
	
	@RequestMapping("deleteCate/{idcate}")
	public String delete(ModelMap model, @PathVariable("idcate")int idcate) {
		Session ses = factory.openSession();
		String sql = "DELETE FROM Detail WHERE IDCATE=:idcate";
		Query q = ses.createQuery(sql);
		q.setParameter("idcate", idcate);
		q.executeUpdate();
		return "redirect:/shopCart.htm";
	}
	
	@RequestMapping(value="edit/{idcate}", params="add")
	public String edit(ModelMap model, @PathVariable("idcate")int idcate, @RequestParam("quality")int qlt) {
		qlt = qlt + 1;
		this.sl = qlt;
		
		Session ses = factory.getCurrentSession();
		
		SP sp = new SP();
		loginController log = new loginController();
		int iddetail = sp.SP_TIMIDDETAIL(ses, idcate);
		int id = sp.SP_TIMIDUSER(ses, log.username);
		int idorder = sp.SP_TIMIDORDER(ses, id);
			
		Order or = new Order();
		or.setIdorder(idorder);
		Category cat = new Category();
		cat.setIdcate(idcate);
		
		Detail dt = new Detail();
		dt.setIddetail(iddetail);
		dt.setOrder(or);
		dt.setCategory(cat);
		dt.setQuality(qlt);
		
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(dt);			
			t.commit();
		} catch (Exception e) {
			t.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return "redirect:/shopCart.htm";
	}
	
	@RequestMapping(value="edit/{idcate}", params="sub")
	public String editsub(ModelMap model, @PathVariable("idcate")int idcate, @RequestParam("quality")int qlt) {
		if(qlt > 1) {
			qlt = qlt - 1;
			this.sl = qlt;
			
			Session ses = factory.getCurrentSession();
			
			SP sp = new SP();
			loginController log = new loginController();
			int iddetail = sp.SP_TIMIDDETAIL(ses, idcate);
			int id = sp.SP_TIMIDUSER(ses, log.username);
			int idorder = sp.SP_TIMIDORDER(ses, id);
				
			Order or = new Order();
			or.setIdorder(idorder);
			Category cat = new Category();
			cat.setIdcate(idcate);
			
			Detail dt = new Detail();
			dt.setIddetail(iddetail);
			dt.setOrder(or);
			dt.setCategory(cat);
			dt.setQuality(qlt);
			
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			try {
				session.update(dt);			
				t.commit();
			} catch (Exception e) {
				t.rollback();
				e.printStackTrace();
			} finally {
				session.close();
			}
		}
		return "redirect:/shopCart.htm";
	}
	
	@RequestMapping("checkout")
	public String checkout(ModelMap model) {
		Session ses = factory.getCurrentSession(); 
		String sql = "FROM Detail WHERE IDORDER=:idorder";
		Query q = ses.createQuery(sql);
		SP sp = new SP();
		loginController log = new loginController();
		int id = sp.SP_TIMIDUSER(ses, log.username);
		this.idorder = sp.SP_TIMIDORDER(ses, id);
		q.setParameter("idorder", idorder);
		List<Detail> list = q.list();
		sql = "EXEC SP_TONGTIEN " + idorder;
		q = ses.createSQLQuery(sql);
		List<Double> tt = q.list();
		double tong = tt.get(0);
		model.addAttribute("tongtien", tong);
		model.addAttribute("list", list);
		return "user/checkout";
	}
	
	@RequestMapping("buy")
	public String buy(ModelMap model,@ModelAttribute("user") User user, @RequestParam("hoten")String hoten, @RequestParam("email")String email, 
			@RequestParam("diachi")String diachi, @RequestParam("tel")String tel,BindingResult errors) {
//		if(hoten.length() == 0) {
//			errors.rejectValue("hoten","user", "ten khong duoc trong");
//		}
//		if(diachi.length() == 0) {
//			errors.rejectValue("diachi", "dia chi khong duoc trong");
//		}
//		if(tel.length() == 0) {
//			errors.rejectValue("tel", "so dien thoai khong duoc trong");
//		}
		Session ses = factory.openSession();
		String sql = "DELETE FROM Detail WHERE IDORDER=:idorder";
		Query q = ses.createQuery(sql);
		q.setParameter("idorder", this.idorder);
		q.executeUpdate();
		
		sql = "DELETE FROM Order WHERE IDORDER=:idorder";
		q = ses.createQuery(sql);
		q.setParameter("idorder", this.idorder);
		q.executeUpdate();
		
		String from = "billybu96969@gmail.com";
		String subject = "Billard Shop";
		String body = "Đã nhận đơn hàng,cảm ơn bạn đã sử dụng dịch vụ của chúng tôi";
		mailer.send(from, email, subject, body);
		return "user/contact";
	}
}
