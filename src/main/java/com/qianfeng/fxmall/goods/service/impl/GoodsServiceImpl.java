package com.qianfeng.fxmall.goods.service.impl;

import com.qianfeng.fxmall.commons.info.SystemConstantsUtils;
import com.qianfeng.fxmall.goods.bean.WxbGood;
import com.qianfeng.fxmall.goods.dao.IGoodsDAO;
import com.qianfeng.fxmall.goods.service.IGoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class GoodsServiceImpl implements IGoodsService {

//    private IGoodsDAO goodsDAO = new GoodsDAOImpl();
    @Autowired
    private IGoodsDAO goodsDAO;
    @Override
    public List<WxbGood> queryGoodsByPage(Integer page) {
        if(page < 1){
            throw new IndexOutOfBoundsException("页码不能小于1");
        }
        //计算起始下标
        int index = (page - 1) * SystemConstantsUtils.Page.PAGE_SIZE;
        List<WxbGood> goods = goodsDAO.queryGoodsByPage(index);
        return goods;
    }

    @Override
    public List<WxbGood> queryAllGoods() {
        List<WxbGood> wxbGoods = goodsDAO.queryAllGoods();
        return wxbGoods;
    }

    @Override
    public void saveGoods(WxbGood wxbGood) {
        goodsDAO.saveGoods(wxbGood);
    }
}
