package com.qianfeng.fxmall.goods.controller;

import com.qianfeng.fxmall.commons.exception.AccountNotFoundException;
import com.qianfeng.fxmall.commons.exception.PasswordErrorException;
import com.qianfeng.fxmall.goods.bean.WxbMemeber;
import com.qianfeng.fxmall.goods.service.MemberService;
import com.qianfeng.fxmall.goods.vo.JsonResultVO;
import com.qianfeng.fxmall.goods.vo.LoginInfoVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/member")
public class MemberController {

    @Autowired
    private MemberService memberService;

    @ResponseBody
    @PostMapping("/login")
    public JsonResultVO loginAjax(LoginInfoVO loginInfoVO, HttpSession session){
        JsonResultVO jsonResultVO = new JsonResultVO();
        System.out.println(loginInfoVO.getAccount()+"+++++++++"+loginInfoVO.getPassword());
        try {
            WxbMemeber member = memberService.login(loginInfoVO);
            session.setAttribute("member",member);
            jsonResultVO.setCode(1);
        } catch (NullPointerException e){
            e.printStackTrace();
            jsonResultVO.setCode(0);
            jsonResultVO.setMsg("账号不能为空！");
        } catch (AccountNotFoundException | PasswordErrorException e){
            e.printStackTrace();
            jsonResultVO.setCode(0);
            jsonResultVO.setMsg("账号或密码错误！");
        } catch (Exception e) {
            e.printStackTrace();
            jsonResultVO.setCode(0);
            jsonResultVO.setMsg("请联系管理员");
        }
        return jsonResultVO;
    }
}
