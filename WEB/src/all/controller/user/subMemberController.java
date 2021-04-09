package all.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import all.bean.Mailer;

@Controller
public class subMemberController {
	@Autowired
	Mailer mailer;
	
	@RequestMapping("sub-member")
	public String subMember(ModelMap model,@RequestParam("subEmail")String to) {
		String from = "billybu96969@gmail.com";
		String subject = "Billard Shop Subscribe Member";
		String body = "Bạn đã đăng ký dịch vụ thành công";
		mailer.send(from, to, subject, body);
		model.addAttribute("message", "dang ky dich vu thang cong");
		return "redirect:/index.htm";
	}
}
