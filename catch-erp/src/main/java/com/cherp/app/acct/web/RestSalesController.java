package com.cherp.app.acct.web;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.cherp.app.acct.service.SalesService;
import com.cherp.app.acct.vo.PayablesVO;
import com.cherp.app.acct.vo.SalesVO;
import com.fasterxml.jackson.databind.JsonNode;


/**
 * RestSales 컨트롤러
 */
@RestController
public class RestSalesController {
	
	private final SalesService salesService;
	
	public RestSalesController(SalesService salesService) {
		this.salesService = salesService;
	}
	
	// JSON 채권 데이터 
	@GetMapping("api/account/receivables")
	public List<SalesVO> receList() {
		return salesService.receivablesList();
	}
	// JSON 채무 데이터
	@GetMapping("api/account/payables")
	public List<PayablesVO> payList() {
		return salesService.payablesList();
	}
	// JSON 거래처 채무 데이터
	@PostMapping("api/account/clientPayables")
	@ResponseBody
	public List<PayablesVO> clientPayablesList(@RequestBody HashMap<String, String> map) {
		System.out.println(map.get("clientCode"));
		return salesService.ClientPayableList(map.get("clientCode"));
	}
	// JSON 거래처 채권 데이터
	@PostMapping("api/account/clientReceivables")
	@ResponseBody
	public List<SalesVO> clientReceivablesList(@RequestBody JsonNode json) {
		return salesService.ClientReceivableList(json.get("clientCode").asText());
	}
}
