package com.qianfeng.fxmall.goods.controller;

import com.qianfeng.fxmall.commons.info.SystemConstantsUtils;
import com.qianfeng.fxmall.goods.bean.WxbGood;
import com.qianfeng.fxmall.goods.service.IGoodsService;
import com.qianfeng.fxmall.goods.service.impl.GoodsServiceImpl;
import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.util.Streams;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * master1.2
 */
public class GoodsServlet extends BaseServlet {

    private IGoodsService goodsService = new GoodsServiceImpl();

    public void selectGoodsByPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pageStr = req.getParameter("page");
        try {
            pageStr = pageStr == null ? "1" : pageStr;
            List<WxbGood> goodsList = goodsService.queryGoodsByPage(Integer.parseInt(pageStr));
            List<WxbGood> wxbGoods = goodsService.queryAllGoods();
            Integer pageCount = wxbGoods.size();                    //数据总记录
            Integer size = SystemConstantsUtils.Page.PAGE_SIZE;     //每一页的记录
            Integer pages = pageCount % size;
            Integer pageNo = pages == 0 ? pageCount / size : pageCount / size + 1;        //总页数
            req.setAttribute("goodsList", goodsList);
            req.setAttribute("pageCount", pageCount);
            req.setAttribute("size", size);
            req.setAttribute("page", pageStr);
            req.setAttribute("pageNo", pageNo);
            req.getRequestDispatcher("goods_list.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
            //能处理就处理
            //不能处理就跳转到错误提示页面

        }
    }

    public void addGoods(HttpServletRequest req, HttpServletResponse resp) throws Exception {
//             req.setCharacterEncoding("UTF-8");
        WxbGood wxbGood = new WxbGood();
        String goodId = UUID.randomUUID().toString().substring(1, 9);
        wxbGood.setGoodId(goodId);
        wxbGood.setCustomerId("123456");
        wxbGood.setSkuTitle("qwe");
        wxbGood.setSkuCost("qwe");
        wxbGood.setSkuPrice("123");
        wxbGood.setSkuPmoney("123");
        wxbGood.setCopyIds("123");
        wxbGood.setState(123);
        Timestamp timestamp = new Timestamp( new Date().getTime());
        wxbGood.setCreateTime(timestamp);
        wxbGood.setToped(123);
        wxbGood.setRecomed(123);
        wxbGood.setTopedTime(timestamp);
        wxbGood.setRecomedTime(timestamp);
        wxbGood.setSpcId("123");
        wxbGood.setZonId("123");
        wxbGood.setWebsite("qwe");
        wxbGood.setIswxpay(123);
        wxbGood.setIsfdfk(123);
        wxbGood.setLeixingId(123);
        wxbGood.setKfqq("aaa");
        if (ServletFileUpload.isMultipartContent(req)) {
            ServletFileUpload upload = new ServletFileUpload();
            upload.setSizeMax(10 * 1024 * 1024);
            FileItemIterator itr = upload.getItemIterator(req);
            while (itr.hasNext()) {
                FileItemStream item = itr.next();
                if (item.isFormField()) {
                    String value = Streams.asString(item.openStream(), "UTF-8");
                    switch (item.getFieldName()) {
                        case "good_name":
                            wxbGood.setGoodName(value);
                            break;
                        case "type_id":
                            wxbGood.setTypeId((value));
                            break;
                        case "order_no":
                            wxbGood.setOrderNo(Long.parseLong(value));
                            break;
                        case "sell_num":
                            wxbGood.setSellNum(Long.parseLong(value));
                            break;
                        case "promote_desc":
                            wxbGood.setPromoteDesc((value));
                            break;
                        case "tags":
                            wxbGood.setTags((value));
                            break;
                        case "copy_desc":
                            wxbGood.setCopyDesc((value));
                            break;
                        case "forward_link":
                            wxbGood.setForwardLink((value));
                            break;
//                        // 判断令牌的值
//                        case "token":
//                            String token = (String) req.getSession().getAttribute("token");
//
//                            if(token == null || !token.equals(value)){
//                                req.setAttribute("error", "表单数据不能重复提交");
//                                req.getRequestDispatcher("brands/brandAdd.jsp").forward(req, resp);
//                                return;
//                            }
//                            break;
                    }
                } else {
                    //获得文件名,进行处理
                    String filename = item.getName();
                    if (filename != null && filename.length() > 0) {
                        String filename2 = UUID.randomUUID().toString() +
                                filename.substring(filename.lastIndexOf("."));
                        // 保存新文件名,用于存入数据库
                        wxbGood.setGoodPic(filename2);
                        wxbGood.setGoodPic1(filename2);
                        wxbGood.setGoodPic2(filename2);
                        filename = SystemConstantsUtils.UPLOAD_PATH + filename2;
                        // 创建文件输出流
                        FileOutputStream out = new FileOutputStream(filename);
                        // 读上传文件流,写入文件
                        Streams.copy(item.openStream(), out, true);

                    }
                }
            }
//            // 执行数据库插入
//            BrandService brandDao = new BrandServiceImpl();
//            brandDao.insertBrand(brand);
//            // 完成操作后,删除Token
//            req.getSession().setAttribute("token", null);
//            selectAllBrand(req,resp);
            goodsService.saveGoods(wxbGood);
            selectGoodsByPage(req, resp);
        }
    }
}


