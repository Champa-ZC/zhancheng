package com.qianfeng.fxmall.goods.bean;


public class WxbMemeber {

  private String memeberId;
  private String account;
  private String qqNum;
  private String email;
  private String phone;
  private String recomUser;
  private java.sql.Timestamp registerTime;
  private String payAccount;
  private String name;
  private String password;
  private String visitCode;
  private long useRecom;
  private String levelCode;
  private long mid;
  private java.sql.Timestamp updateTime;


  public String getMemeberId() {
    return memeberId;
  }

  public void setMemeberId(String memeberId) {
    this.memeberId = memeberId;
  }


  public String getAccount() {
    return account;
  }

  public void setAccount(String account) {
    this.account = account;
  }


  public String getQqNum() {
    return qqNum;
  }

  public void setQqNum(String qqNum) {
    this.qqNum = qqNum;
  }


  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }


  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }


  public String getRecomUser() {
    return recomUser;
  }

  public void setRecomUser(String recomUser) {
    this.recomUser = recomUser;
  }


  public java.sql.Timestamp getRegisterTime() {
    return registerTime;
  }

  public void setRegisterTime(java.sql.Timestamp registerTime) {
    this.registerTime = registerTime;
  }


  public String getPayAccount() {
    return payAccount;
  }

  public void setPayAccount(String payAccount) {
    this.payAccount = payAccount;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }


  public String getVisitCode() {
    return visitCode;
  }

  public void setVisitCode(String visitCode) {
    this.visitCode = visitCode;
  }


  public long getUseRecom() {
    return useRecom;
  }

  public void setUseRecom(long useRecom) {
    this.useRecom = useRecom;
  }


  public String getLevelCode() {
    return levelCode;
  }

  public void setLevelCode(String levelCode) {
    this.levelCode = levelCode;
  }


  public long getMid() {
    return mid;
  }

  public void setMid(long mid) {
    this.mid = mid;
  }


  public java.sql.Timestamp getUpdateTime() {
    return updateTime;
  }

  public void setUpdateTime(java.sql.Timestamp updateTime) {
    this.updateTime = updateTime;
  }

  @Override
  public String toString() {
    return "WxbMemeber{" +
            "memeberId='" + memeberId + '\'' +
            ", account='" + account + '\'' +
            ", qqNum='" + qqNum + '\'' +
            ", email='" + email + '\'' +
            ", phone='" + phone + '\'' +
            ", recomUser='" + recomUser + '\'' +
            ", registerTime=" + registerTime +
            ", payAccount='" + payAccount + '\'' +
            ", name='" + name + '\'' +
            ", password='" + password + '\'' +
            ", visitCode='" + visitCode + '\'' +
            ", useRecom=" + useRecom +
            ", levelCode='" + levelCode + '\'' +
            ", mid=" + mid +
            ", updateTime=" + updateTime +
            '}';
  }
}
