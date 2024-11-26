package com.cherp.app.stck.web.rest;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.cherp.app.buss.service.ClientService;
import com.cherp.app.buss.vo.ClientVO;
import com.cherp.app.buss.vo.PurchaseChitVO;
import com.cherp.app.buss.vo.PurchaseHistoryVO;
import com.cherp.app.stck.service.StockService;
import com.cherp.app.stck.vo.ContractItemVO;
import com.cherp.app.stck.web.StockAdjustController;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequiredArgsConstructor
public class RestStockAdjustController {
	
	private final StockService stockAdjustService;
	private final ClientService clientService;
	
	@GetMapping("stocks/clientList") //거래처전체조회
	public List<ClientVO> getClientList() {  
		return clientService.clientList();
	}
	
	/* INPUT창 ajax 검색 기능 보류
	 * @GetMapping("stocks/clientSearchList/{clientCode}") //사원전체조회 public
	 * List<ClientVO> getClientSearchList(@PathVariable String clientCode){ return
	 * clientService.clientSearchList(clientCode); }
	 */
	
	//품목전체조회
	@GetMapping("stocks/itemList") 
	public List<ContractItemVO> getItemList() {
		return stockAdjustService.getItemList();
	}
	//구매내역조회
	@GetMapping("stocks/chitNoList/{type1}/{type2}/{type3}/{client}/{employee}/{item}/{startDate}/{endDate}")
	public List<PurchaseHistoryVO> getPurcChitNo(@PathVariable("type1") String type1, @PathVariable("type2") String type2, @PathVariable("type3") String type3
			, @PathVariable("client") String client, @PathVariable("employee") String employee, @PathVariable("item") String item, @PathVariable("startDate") String startDate, @PathVariable("endDate") String endDate){
		return stockAdjustService.getPurchaseHistoryList(type1, type2, type3, client, employee, item, startDate, endDate);
	}
	
	//재고 단건조회
	@GetMapping("stocks/itemStocks/{itemCode}")
	public ContractItemVO getItemStocks(@PathVariable("itemCode") String itemCode) {
		return stockAdjustService.getItemStocks(itemCode);
	}
	
}