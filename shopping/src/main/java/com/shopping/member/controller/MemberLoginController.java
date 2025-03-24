package com.shopping.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shopping.member.service.MemberLoginService;
import com.shopping.member.vo.MemberLoginVO;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpSession;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;


@SessionAttributes("memberLogin")
@Slf4j
@Controller
public class MemberLoginController {
	@Setter(onMethod_ = @Autowired)
	private MemberLoginService memberLoginService;
	
	@GetMapping("/login")
	public String loginProcess(Model model) {
		log.info("member login page move");
		return "/main/login";
	}
	
	@PostMapping("/login")
	public String loginProcess(MemberLoginVO login, HttpSession session, RedirectAttributes ras) {
	    MemberLoginVO memberLogin = memberLoginService.loginProcess(login);
	    if (memberLogin != null) {
	        session.setAttribute("memberLogin", memberLogin);
	    } else {
	        ras.addFlashAttribute("errorMsg", "The email or password is incorrect.");
	    }
	    log.info("Login attempt with member ID: {}", login.getMemberEmail());
	    return "redirect:/login";
	}

	@PostMapping("/logout")
	public String logoutProcess(SessionStatus sessionStatus) {
		sessionStatus.setComplete();
		log.info("POST 요청으로 로그아웃 세션을 종료.");
		return "redirect:/";
	}
	
	@GetMapping("/signup")
	public String signUp() {
		return "/main/signUp";
	}
	
	@PostMapping("/emailCheck")
	@ResponseBody
	public int emailCheck(@RequestParam("memberEmail") String memberEmail) {
		return memberLoginService.emailCheck(memberEmail);
	}
	
	@PostMapping("/memberInsert")
	public String memberInsert(MemberLoginVO login, HttpSession session, RedirectAttributes ras) {
		memberLoginService.memberInsert(login);
		session.setAttribute("signUpCompleted", true);
		return "redirect:/signup/complete";
	}
	
	//회원가입 완료 페이지로 이동
	@GetMapping("/signup/complete")
	public String completeSignUp(HttpSession session, RedirectAttributes ras) {
		Boolean signUpCompleted = (Boolean) session.getAttribute("signUpCompleted");

		if (signUpCompleted == null || !signUpCompleted) {
			ras.addFlashAttribute("errorMsg", "Unauthorized access.");
			return "redirect:/login";
		}

		session.removeAttribute("signUpCompleted");
		return "/main/completeSignUp";
	}
}
