package com.shopping.member.service;

import com.shopping.member.vo.MemberLoginVO;

public interface MemberLoginService {
	// 로그인
		public MemberLoginVO loginProcess(MemberLoginVO login);

		// 회원 이메일 체크
		public int emailCheck(String memberEmail);

		// 회원가입
		public int memberInsert(MemberLoginVO login);
		
		// 마이 페이지
		public MemberLoginVO memberMyPage(MemberLoginVO login);
}
