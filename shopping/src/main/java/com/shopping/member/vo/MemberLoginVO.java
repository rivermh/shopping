package com.shopping.member.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemberLoginVO {
	private int memberIdx;
	private int memberTypeId;
	private String memberName;
	private String memberGender;
	private String memberBirth;
	private String memberEmail;
	private String memberPasswd;
	private String memberCountry;
	private Date memberJoinDate;
}
