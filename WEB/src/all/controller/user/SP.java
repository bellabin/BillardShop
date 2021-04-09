package all.controller.user;

import java.util.List;

import javax.persistence.Entity;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import all.entity.Response;
import all.entity.User;

@Transactional
@Entity
@Controller
public class SP {
	@Autowired
	SessionFactory factory;
	
	public int SP_TIMIDDETAIL(Session ses, int idcate) {
		String sql = "EXEC SP_TIMIDDETAIL " + idcate;
		Query q = ses.createSQLQuery(sql);
		List<Integer> l = q.list();
		int iddetail = l.get(0);
		return iddetail;
	}
	
	public int SP_TIMIDUSER(Session ses, String username) {
		String sql = "EXEC SP_TIMIDUSER " + username;
		Query q = ses.createSQLQuery(sql);
		List<Integer> l = q.list();
		int id = l.get(0);
		return id;
	}
	
	public int SP_TIMIDORDER(Session ses, int id) {
		String sql = "EXEC SP_TIMIDORDER " + id;
		Query q = ses.createSQLQuery(sql);
		List<Integer> l = q.list();
		int idorder = 0;
		if(l.size() == 0) {
			idorder = 0;
		}
		else {
			idorder = l.get(0);
		}
		return idorder;
	}
	
	public List<Response> DanhSachReviews(Session ses, int idcate) {
		String sql = "FROM Response WHERE IDCATE=:idcate";
		Query q = ses.createQuery(sql);
		q.setParameter("idcate", idcate);
		List<Response> listRes = q.list();
		return listRes;
	}
	
	public int checkLogin(Session ses, String username, String password) {
		String sql = "SELECT u.id FROM User u WHERE USERNAME=:username AND PASSWORD=:password";
		Query q = ses.createQuery(sql);
		q.setParameter("username", username);
		q.setParameter("password", password);
		List<Integer> list = q.list();
		int id = 0;
		if(list.size() == 0) {
			id = 0;
		}
		else {
			id = list.get(0);
		}
		return id;
	}
}
