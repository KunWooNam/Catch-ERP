package com.cherp.app.buss.service;

import java.util.List;

import com.cherp.app.buss.vo.SalesChitVO;

public interface SalesChitService {
    // 판매전표 추가
    public void salesChitInsert(SalesChitVO salesChitVO);
    
    // 판매전표 전체 조회
    public List<SalesChitVO> selectsalesChit();
    
    // 판매전표 전표 발행 상태별 조회
    public List<SalesChitVO> selectsalesChitState(String slipState);

    // 판매전표별 총 금액 조회
    public List<SalesChitVO> selectSalesTotalPrice();
    
}
