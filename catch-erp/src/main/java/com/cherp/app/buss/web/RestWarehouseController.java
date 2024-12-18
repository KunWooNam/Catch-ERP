package com.cherp.app.buss.web;

import com.cherp.app.buss.service.WarehouseService;
import com.cherp.app.buss.vo.WarehouseVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class RestWarehouseController {

    private WarehouseService warehouseService;

    @Autowired
    public RestWarehouseController(WarehouseService warehouseService) {
        this.warehouseService = warehouseService;
    }

    @GetMapping("whList")
    public List<WarehouseVO> whList(){
        return warehouseService.whList();
    }

    // 창고별 재고 수량 체크
    @GetMapping("/quantity/{whCode}/{itemCode}")
    public WarehouseVO whQuantity(@PathVariable("whCode") String whCode,
                                  @PathVariable("itemCode") String itemCode){
        return warehouseService.whQuantity(whCode, itemCode);
    }

}
