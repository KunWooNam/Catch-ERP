package com.cherp.app.stck.web;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cherp.app.buss.service.ClientService;
import com.cherp.app.stck.service.StockService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/*재고조정페이지 Controller*/

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("stocks")
public class StocksController {

	//재고조정페이지
	@GetMapping("/stockAdjustment") 
	public String stockAdjustment(){
		return "stock/stockAdjustment";
	}
	//재고조회&관리페이지
	@GetMapping("/stockInquery") 
	public String stockInquery() {
		return "stock/stockInquery";
	}
}