package com.cherp.app.empl.vo;

import lombok.Data;
import lombok.NoArgsConstructor;
@NoArgsConstructor
@Data
public class EmployeeDetailVO {

	private String engName;  //영어이름
	private String identityNo; //주민번호
	private String headCheck;  //세대주여부
	private String duty; //직책 ex) 팀장,팀원
	private String tel; //전화번호
	private String phone; //폰번호
	private String email; //이메일
	private String empStatus; //재직상태
	private Integer zipcode;  //우편번호
	private String address; //주소
	private String detailAddress; // 상세주소
	private String bacct; //계좌번호
	private String depositor; //예금주
	private String employeeImage; //사진명
	private String bank; //은행

	//조인으로 추가될 컬럼
	private String bankName;
	
	// 가공된 주민등록번호
	private String modifiedIdentityNo; 

    public void setIdentityNo(String identityNo) {
        this.identityNo = identityNo;
        if (identityNo != null && identityNo.length() >= 7) {
            this.modifiedIdentityNo = identityNo.substring(0, 6) + "-" + identityNo.charAt(7) + "******";
        } else {
            this.modifiedIdentityNo = "";
        }
    }
	
}
