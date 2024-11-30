package com.cherp.app.stck.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.cherp.app.buss.vo.PurchaseChitVO;
import com.cherp.app.buss.vo.PurchaseHistoryVO;
import com.cherp.app.buss.vo.SalesHistoryVO;
import com.cherp.app.stck.vo.ContractItemVO;
import com.cherp.app.stck.vo.ItemSearchVO;
import com.cherp.app.stck.vo.StocksAdjustVO;
import com.cherp.app.stck.vo.StocksVO;

public interface StockMapper {
	public List<ContractItemVO> selectAllItemList();  //품목조회
	public List<PurchaseChitVO> selectPurcSlipNoList(@Param("type1") String type1, @Param("type2") String type2 //구매내역 조건조회를 위한 구매전표 조건조회
			, @Param("client") String client, @Param("employee") String employee);
	public List<PurchaseHistoryVO> selectPurcHistoryList(Map<String, Object> map); //구매내역 조건조회
	public ContractItemVO selectStocks(String itemCode); // 단건 품목의 재고 조회
	public List<SalesHistoryVO> selectSalesHistoryList(Map<String, Object> map); //판매내역조회
	public int insertAdjustment(@Param("StocksAdjustVO") List<StocksAdjustVO> stocksadjustVO); // 재고조정 프로시저 호출
	public StocksVO selectAdjustNo(); //최신 재고조정번호 조회
	public List<ContractItemVO> selectAllSearchItemList(ItemSearchVO itemSearchVO); //제품정보 조건조회
}
