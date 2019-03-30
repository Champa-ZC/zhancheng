package com.qianfeng.fxmall.goods.dao.impl;

import com.qianfeng.fxmall.commons.info.SystemConstantsUtils;
import com.qianfeng.fxmall.commons.mybatis.MyBatisSessionFactoryUtils;
import com.qianfeng.fxmall.goods.bean.WxbGood;
import com.qianfeng.fxmall.goods.dao.IGoodsDAO;
import com.qianfeng.fxmall.goods.mapper.GoodsMapper;

import java.util.List;

/**
 * Mybatis的商品数列访问层
 *
 * 注意：
 * 异常在dao层不要捕获
 */
public class GoodsDAOImpl implements IGoodsDAO {

    @Override
    public List<WxbGood> queryGoodsByPage(Integer page) {
        GoodsMapper goodsMapper = MyBatisSessionFactoryUtils.getSession().getMapper(GoodsMapper.class);
        List<WxbGood> goods = goodsMapper.queryGoodsByPage(page, SystemConstantsUtils.Page.PAGE_SIZE);
        return goods;
    }

    @Override
    public void saveGoods(WxbGood wxbGood) {
        GoodsMapper goodsMapper = MyBatisSessionFactoryUtils.getSession().getMapper(GoodsMapper.class);
        goodsMapper.saveGoods(wxbGood);
        MyBatisSessionFactoryUtils.getSession().commit();
    }

    @Override
    public List<WxbGood> queryAllGoods() {
        GoodsMapper goodsMapper = MyBatisSessionFactoryUtils.getSession().getMapper(GoodsMapper.class);
        List<WxbGood> wxbGoods = goodsMapper.queryAllGoods();
        return wxbGoods;
    }
}
