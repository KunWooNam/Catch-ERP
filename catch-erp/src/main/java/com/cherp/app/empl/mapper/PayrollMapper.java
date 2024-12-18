package com.cherp.app.empl.mapper;

import java.util.List;
import java.util.Map;

import com.cherp.app.common.dto.EmployeeSearchDto;
import com.cherp.app.empl.vo.PayrollVO;

public interface PayrollMapper {
	public List<PayrollVO> selectAllPayrollList (EmployeeSearchDto search); //다건 조회
	public List<PayrollVO> selectPayroll (String[] salaryNumber); //선택된 건 조회
	public int updatePayroll (PayrollVO payroll); //수정
	public int deletePayroll (String[] salaryNumber); //삭제
	public int deleteAllowanceHistory (String[] salaryNumber);//고정수당기록삭제
	public int updateSalaryCheck (Map<String,Object> map);//급여명세 검토수정
	public int insertPayroll();//급여명세 발행
	public int selectCheckPayroll();//급여명세 발행여부 확인
	public int deleteMonthPayroll();//급여명세 해당달 삭제
	public int deleteMonthAwhi();//수당기록 해당달 삭제
}
