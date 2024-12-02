package com.cherp.app.buss.service;

import java.util.List;

import com.cherp.app.buss.vo.PurchaseChitVO;
import com.cherp.app.stck.vo.ContractItemVO;

public interface PurchaseChitService {
    
    // 구매전표 전표 발행 상태별 조회
    public List<PurchaseChitVO> selectPurchaseChitState(String slipState);

    // 구매전표 작성을 위해 품목리스트 조회
    public List<ContractItemVO> selectContractItem();

    // 수량에 맞게 가격 변화
    public ContractItemVO purchaseQuantity(int quantity);
}
