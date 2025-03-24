package com.shopping.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shopping.member.dao.MemberLoginDao;
import com.shopping.member.vo.MemberLoginVO;

import lombok.Setter;

@Service
public class MemberLoginServiceImpl implements MemberLoginService{
	@Setter(onMethod_ = @Autowired)
	private MemberLoginDao memberLoginDao;
	
	
	//로그인 
	@Override
	public MemberLoginVO loginProcess(MemberLoginVO login) {
		MemberLoginVO memberLogin = memberLoginDao.loginProcess(login);
		return memberLogin;
	}

	// 회원 이메일 중복체크
	@Override
	public int emailCheck(String memberEmail) {
		int cnt = 0;
		try {
			cnt = memberLoginDao.emailCheck(memberEmail);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("cnt: " + cnt);
		return cnt;
	}
	
	// 회원가입
	@Override
	public int memberInsert(MemberLoginVO login) {
		int result = 0;
		result = memberLoginDao.memberInsert(login);
		return result;
	}
	
	//마이 페이지
	public MemberLoginVO memberMyPage(MemberLoginVO login) {
		MemberLoginVO memberLogin = memberLoginDao.loginProcess(login);
		return memberLogin;
	}
}
