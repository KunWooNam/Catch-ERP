package com.cherp.app.acct.service.impl;

import org.springframework.stereotype.Service;

import com.cherp.app.acct.mapper.ContractMapper;
import com.cherp.app.acct.service.ContractService;
import com.cherp.app.stck.vo.ContractItemVO;

/**
 * 매입 단가 계약 등록, 관리 ServiceImpl
 */
@Service
public class ContractServiceImpl implements ContractService{
	private ContractMapper conMapper;
	
	public ContractServiceImpl(ContractMapper conMapper) { 
		this.conMapper = conMapper;
	}
	
	@Override
	public void insertContract(ContractItemVO conVO) {
		conMapper.insertContractH(conVO); // 마스터
		for(ContractItemVO data : conVO.getDetailContraceVO()) {
			conMapper.insertContractB(data); // 디테일
		}
	}

}