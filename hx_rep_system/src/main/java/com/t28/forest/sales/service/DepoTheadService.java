package com.t28.forest.sales.service;

import com.t28.forest.sales.vo.PageVO;
import com.t28.forest.sales.vo.SalesBillVO;
import com.t28.forest.shared.cond.Condition;

import java.util.List;

/**
 * @author XiangYuFeng
 * @description 单据主表service层接口
 * @create 2019/10/23
 * @since 1.0.0
 */
public interface DepoTheadService {

    /**
     * 根据条件进行分页查询销售订单信息
     * @param pageVO
     * @param condition
     * @return List<SalesBillVO>
     */
    public List<SalesBillVO> getBillByPage(PageVO pageVO, Condition condition);

}