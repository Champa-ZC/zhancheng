package com.qianfeng.fxmall.goods.service;

import com.qianfeng.fxmall.commons.Utils.MD5Utils;
import com.qianfeng.fxmall.commons.exception.AccountNotFoundException;
import com.qianfeng.fxmall.commons.exception.PasswordErrorException;
import com.qianfeng.fxmall.goods.bean.WxbMemeber;
import com.qianfeng.fxmall.goods.mapper.MemberMapper;
import com.qianfeng.fxmall.goods.vo.LoginInfoVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class MemberService {

    @Autowired
    private MemberMapper memberMapper;

    public WxbMemeber login(LoginInfoVO loginInfoVO) throws Exception{
        if(loginInfoVO == null){
            throw new NullPointerException("param is null");
        }
        String account = loginInfoVO.getAccount();
        String password = loginInfoVO.getPassword();
        System.out.println("密码：" + password);
        if(null == account || "".equals(account)){
            throw new NullPointerException("account is null");
        }

        WxbMemeber wxbMemeber = memberMapper.checkUsername(account);
        System.out.println(wxbMemeber);
        if(wxbMemeber == null){
            throw new AccountNotFoundException();
        }

        String passwordSalt = "branzbly";
        System.out.println("加盐密码："+passwordSalt);
        String md5Password = MD5Utils.md5(password, passwordSalt);
        if(!md5Password.equals(wxbMemeber.getPassword())){
            throw new PasswordErrorException("password is error");
        }
        return wxbMemeber;
    }

}
