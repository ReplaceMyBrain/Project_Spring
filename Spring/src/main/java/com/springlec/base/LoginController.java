package com.springlec.base;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.springlec.base.command.Command;



@Controller
public class LoginController {

	@Autowired
	private SqlSession sqlSession;
	
	private Command LoginCommand = null;
	

	@Autowired
	public void auto(Command login) {
		this.LoginCommand = login;
	}
	
	@RequestMapping("/loginClick")
	public String loginClick(Model model, HttpServletRequest request, HttpSession session) {
		
		
		System.out.println("loginClick");
		model.addAttribute("request", request);
		LoginCommand.execute(model, session, sqlSession);
		
		if(session.getAttribute("login").equals(1)) {
			session.invalidate();
			return "LoginFail"; //정보 불일치 실패시
		}else {
			if(session.getAttribute("deletedate")==null) {
				return "Main"; //성공시		
			}else
				session.invalidate();
			return "LoginWithdraw"; //탈퇴회원	
		}		
	}
		
	@RequestMapping("/main")
	public String main(Model model) {
		return "Main";	
	}
	
	@RequestMapping("/PwdCheckForm")
	public String PwdCheckForm(Model model) {
		return "PwdSearch";	
	}
	
	@RequestMapping("/EmailCheckForm")
	public String EmailCheckForm(Model model) {
		return "EmailSearch";	
	}
	
	@RequestMapping("/Signup")
	public String Signup(Model model) {
		return "Signup";	
	}
	
	
	

		
	

}
