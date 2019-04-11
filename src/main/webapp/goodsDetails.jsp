<%--
  Created by IntelliJ IDEA.
  User: ZC
  Date: 2019/4/10
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0036)http://localhost:8081/cust/goods/add -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><link href="./static/default.css" rel="stylesheet" id="lhgdialoglink">

    <title>商品管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- head start-->

    <link rel="shortcut icon" href="http://localhost:8081/wxb/images/favicon.ico">
    <link rel="icon" type="image/gif" href="http://localhost:8081/wxb/images/favicon.gif">
    <link href="./static/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./static/font-awesome.min.css">
    <!--[if IE 7]>
    <link rel="stylesheet" href="/customer/assets/css/font-awesome-ie7.min.css" />
    <![endif]-->
    <link rel="stylesheet" href="./static/font.css">
    <link rel="stylesheet" href="./static/ace.min.css">
    <link rel="stylesheet" href="./static/ace-rtl.min.css">
    <link rel="stylesheet" href="./static/jquery-ui-1.10.3.custom.min.css">
    <link rel="stylesheet" href="./static/jquery.gritter.css">
    <!--[if lte IE 8]>
    <link rel="stylesheet" href="/customer/assets/css/ace-ie.min.css" />
    <![endif]-->
    <link type="text/css" rel="stylesheet" href="./static/public.css">

    <script src="./static/ace-extra.min.js"></script>
    <!--[if lt IE 9]>
    <script src="/customer/assets/js/html5shiv.js"></script>
    <script src="/customer/assets/js/respond.min.js"></script>
    <![endif]-->

    <!-- 系统共用js文件 -->
    <link rel="stylesheet" type="text/css" href="./static/ymPrompt.css">
    <script type="text/javascript" src="./static/ymPrompt.js"></script>
    <script type="text/javascript" src="./static/public.js"></script>
    <script type="text/javascript" src="./static/publics.js"></script>
    <script type="text/javascript" src="./static/table.js"></script>
    <script type="text/javascript" src="./static/vdata.js"></script>

    <!-- head over-->
    <link href="./static/WdatePicker.css" rel="stylesheet" type="text/css"></head>

<body style=""><div class="" style="left: 0px; top: 0px; visibility: hidden; position: absolute;"><table class="ui_border"><tbody><tr><td class="ui_lt"></td><td class="ui_t"></td><td class="ui_rt"></td></tr><tr><td class="ui_l"></td><td class="ui_c"><div class="ui_inner"><table class="ui_dialog"><tbody><tr><td colspan="2"><div class="ui_title_bar"><div class="ui_title" unselectable="on" style="cursor: move;"></div><div class="ui_title_buttons"><a class="ui_min" href="javascript:void(0);" title="最小化" style="display: inline-block;"><b class="ui_min_b"></b></a><a class="ui_max" href="javascript:void(0);" title="最大化" style="display: inline-block;"><b class="ui_max_b"></b></a><a class="ui_res" href="javascript:void(0);" title="还原"><b class="ui_res_b"></b><b class="ui_res_t"></b></a><a class="ui_close" href="javascript:void(0);" title="关闭(esc键)" style="display: inline-block;">×</a></div></div></td></tr><tr><td class="ui_icon" style="display: none;"></td><td class="ui_main" style="width: auto; height: auto;"><div class="ui_content" style="padding: 10px;"></div></td></tr><tr><td colspan="2"><div class="ui_buttons" style="display: none;"></div></td></tr></tbody></table></div></td><td class="ui_r"></td></tr><tr><td class="ui_lb"></td><td class="ui_b"></td><td class="ui_rb" style="cursor: se-resize;"></td></tr></tbody></table></div>
<div class="navbar navbar-default" id="navbar">
    <script type="text/javascript">
        try{ace.settings.check('navbar' , 'fixed')}catch(e){}
    </script>

    <!-- head start-->

    <div class="navbar-container" id="navbar-container">
        <div class="navbar-header pull-left">
            <a href="http://localhost:8081/cust/index" class="navbar-brand">
                <small>
                    <i class="icon-leaf"></i>
                    微信公众号盈利平台-商户后台管理
                </small>
            </a><!-- /.brand -->
        </div><!-- /.navbar-header -->

        <div class="navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">

                <li class="light-blue">
                    <a data-toggle="dropdown" href="http://localhost:8081/cust/goods/add#" class="dropdown-toggle">
                        <img class="nav-user-photo" src="./static/user.jpg" alt="Jason's Photo">
                        <span class="user-info">
									<small>欢迎您,</small>
									123456
								</span>

                        <i class="icon-caret-down"></i>
                    </a>

                    <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <li>
                            <a href="http://localhost:8081/cust/chpwd">
                                <i class="icon-cog"></i>
                                修改密码
                            </a>
                        </li>

                        <li>
                            <a href="http://localhost:8081/cust/setting">
                                <i class="icon-user"></i>
                                个人资料
                            </a>
                        </li>

                        <li class="divider"></li>

                        <li>
                            <a href="http://localhost:8081/cust/logout">
                                <i class="icon-off"></i>
                                退出登录
                            </a>
                        </li>
                    </ul>
                </li>
            </ul><!-- /.ace-nav -->
        </div><!-- /.navbar-header -->
    </div><!-- /.container -->
    <!-- head over-->
</div>

<div class="main-container" id="main-container">
    <script type="text/javascript">
        try{ace.settings.check('main-container' , 'fixed')}catch(e){}
    </script>

    <div class="main-container-inner">
        <a class="menu-toggler" id="menu-toggler" href="http://localhost:8081/cust/goods/add#">
            <span class="menu-text"></span>
        </a>

        <!-- head start-->


        <div class="sidebar" id="sidebar">
            <script type="text/javascript">
                try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
            </script>

            <div class="sidebar-shortcuts" id="sidebar-shortcuts">
                <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
                    <button class="btn btn-success" onclick="window.location.href='/cust/report/good'">
                        <i class="icon-signal"></i>
                    </button>

                    <button class="btn btn-info" onclick="window.location.href='/cust/setting'">
                        <i class="icon-pencil"></i>
                    </button>

                    <button class="btn btn-warning" onclick="window.location.href='/cust/order/count/1'">
                        <i class="icon-group"></i>
                    </button>

                    <button class="btn btn-danger" onclick="window.location.href='/cust/chpwd'">
                        <i class="icon-cogs"></i>
                    </button>
                </div>

                <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
                    <span class="btn btn-success"></span>

                    <span class="btn btn-info"></span>

                    <span class="btn btn-warning"></span>

                    <span class="btn btn-danger"></span>
                </div>
            </div><!-- #sidebar-shortcuts -->

            <ul class="nav nav-list">
                <li>
                    <a href="http://localhost:8081/cust/index">
                        <i class="icon-home"></i>
                        <span class="menu-text"> 系统首页 </span>
                    </a>
                </li>

                <li class="active open">
                    <a href="http://localhost:8081/cust/goods/add#" class="dropdown-toggle">
                        <i class="icon-list"></i>
                        <span class="menu-text"> 商品管理 </span>

                        <b class="arrow icon-angle-down"></b>
                    </a>

                    <ul class="submenu">
                        <li>
                            <a href="http://localhost:8081/cust/goods/list">
                                <i class="icon-double-angle-right"></i>
                                商品信息
                            </a>
                        </li>

                        <li class="active">
                            <a href="http://localhost:8081/cust/goods/add">
                                <i class="icon-pencil"></i>
                                增加商品
                            </a>
                        </li>
                        <li>
                            <a href="http://localhost:8081/cust/goods/copy/list">
                                <i class="icon-double-angle-right"></i>
                                商品文案
                            </a>
                        </li>

                        <li>
                            <a href="http://localhost:8081/cust/goods/copy/add?tp=0">
                                <i class="icon-pencil"></i>
                                增加微信文案
                            </a>
                        </li>

                        <li>
                            <a href="http://localhost:8081/cust/goods/copy/add?tp=1">
                                <i class="icon-pencil"></i>
                                增加站内文案
                            </a>
                        </li>

                        <li>
                            <a href="http://localhost:8081/cust/goods/copy/add?tp=2">
                                <i class="icon-pencil"></i>
                                增加空间文案
                            </a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="http://localhost:8081/cust/goods/add#" class="dropdown-toggle">
                        <i class="icon-tag"></i>
                        <span class="menu-text"> 订单管理 </span>

                        <b class="arrow icon-angle-down"></b>
                    </a>

                    <ul class="submenu">

                        <li>
                            <a href="http://localhost:8081/cust/order/list">
                                <i class="icon-double-angle-right"></i>
                                全部的订单
                            </a>
                        </li>

                        <li>
                            <a href="http://localhost:8081/cust/order/list/1">
                                <i class="icon-double-angle-right"></i>
                                已下单订单
                            </a>
                        </li>

                        <li>
                            <a href="http://localhost:8081/cust/order/list/9">
                                <i class="icon-double-angle-right"></i>
                                待跟进订单
                            </a>
                        </li>

                        <li>
                            <a href="http://localhost:8081/cust/order/list/2">
                                <i class="icon-double-angle-right"></i>
                                待发货订单
                            </a>
                        </li>

                        <li>
                            <a href="http://localhost:8081/cust/order/list/3">
                                <i class="icon-double-angle-right"></i>
                                已取消订单
                            </a>
                        </li>

                        <li>
                            <a href="http://localhost:8081/cust/order/list/4">
                                <i class="icon-double-angle-right"></i>
                                已发货订单
                            </a>
                        </li>

                        <li>
                            <a href="http://localhost:8081/cust/order/list/5">
                                <i class="icon-double-angle-right"></i>
                                已结算订单
                            </a>
                        </li>

                        <li>
                            <a href="http://localhost:8081/cust/order/list/6">
                                <i class="icon-double-angle-right"></i>
                                已拒收订单
                            </a>
                        </li>

                        <li>
                            <a href="http://localhost:8081/cust/order/list/7">
                                <i class="icon-double-angle-right"></i>
                                已签收订单
                            </a>
                        </li>

                        <li>
                            <a href="http://localhost:8081/cust/order/list/8">
                                <i class="icon-double-angle-right"></i>
                                已退货订单
                            </a>
                        </li>

                    </ul>
                </li>


                <li>
                    <a href="http://localhost:8081/cust/goods/add#" class="dropdown-toggle">
                        <i class="icon-bar-chart"></i>
                        <span class="menu-text"> 统计报表</span>

                        <b class="arrow icon-angle-down"></b>
                    </a>

                    <ul class="submenu">

                        <li>
                            <a href="http://localhost:8081/cust/report/good">
                                <i class="icon-double-angle-right"></i>
                                商品销售统计
                            </a>
                        </li>

                    </ul>
                </li>

                <li>
                    <a href="http://localhost:8081/cust/goods/add#" class="dropdown-toggle">
                        <i class="icon-credit-card"></i>

                        <span class="menu-text">
					财务管理
				</span>

                        <b class="arrow icon-angle-down"></b>
                    </a>

                    <ul class="submenu">

                        <li>
                            <a href="http://localhost:8081/cust/order/count/1">
                                <i class="icon-double-angle-right"></i>
                                待结算流水
                            </a>
                        </li>

                        <li>
                            <a href="http://localhost:8081/cust/order/count/2">
                                <i class="icon-double-angle-right"></i>
                                已结算流水
                            </a>
                        </li>

                        <li>
                            <a href="http://localhost:8081/cust/order/count/3">
                                <i class="icon-double-angle-right"></i>
                                已返款流水
                            </a>
                        </li>

                        <li>
                            <a href="http://localhost:8081/cust/order/money">
                                <i class="icon-double-angle-right"></i>
                                财务返款单
                            </a>
                        </li>

                        <li>
                            <a href="http://localhost:8081/cust/order/paylog">
                                <i class="icon-double-angle-right"></i>
                                支付宝记录
                            </a>
                        </li>

                        <!-- <li >
                            <a href="/cust/charge/list">
                                <i class="icon-double-angle-right"></i>
                                消费与充值
                            </a>
                        </li>-->
                    </ul>
                </li>

                <li>
                    <a href="http://localhost:8081/cust/goods/add#" class="dropdown-toggle">
                        <i class="icon-group"></i>

                        <span class="menu-text">
					用户管理
				</span>

                        <b class="arrow icon-angle-down"></b>
                    </a>

                    <ul class="submenu">
                        <li>
                            <a href="http://localhost:8081/cust/setting">
                                <i class="icon-double-angle-right"></i>
                                基本信息
                            </a>
                        </li>

                        <li>
                            <a href="http://localhost:8081/cust/chpwd">
                                <i class="icon-double-angle-right"></i>
                                修改密码
                            </a>
                        </li>

                    </ul>
                </li>

            </ul>

            <!-- /.nav-list -->
            <div class="sidebar-collapse" id="sidebar-collapse">
                <i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
            </div>

            <script type="text/javascript">
                try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
            </script>
        </div>
        <!-- head over-->

        <div class="main-content">
            <div class="breadcrumbs" id="breadcrumbs">
                <script type="text/javascript">
                    try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
                </script>

                <ul class="breadcrumb">
                    <li>
                        <i class="icon-home home-icon"></i>
                        <a href="http://localhost:8081/cust/index">首页</a>
                    </li>

                    <li>
                        <a href="http://localhost:8081/cust/goods/list">商品管理</a>
                    </li>

                    <li>
                        <a href="http://localhost:8081/cust/goods/add">增加商品</a>
                    </li>

                </ul><!-- .breadcrumb -->

            </div>

            <div class="page-content">
                <div class="page-header">
                    <h1>
                        温馨提示：
                        <small>
                            商品添加/修改成功后，需要管理员审核通过后才能发布到会员推广商品列表
                        </small>
                    </h1>
                </div>

                <form method="post" name="copy_form" id="copy_form" action="http://localhost:8081/cust/goods/add" enctype="multipart/form-data">
                    <div class="widget-main">
                        <input type="hidden" id="sku_str" name="sku_str" value="">
                        <input type="hidden" id="ctype" name="ctype" value="custGood">
                        <input type="hidden" id="sku_title" name="sku_title" value="">
                        <input type="hidden" id="sku_cost" name="sku_cost" value="">
                        <input type="hidden" id="sku_pmoney" name="sku_pmoney" value="">
                        <input type="hidden" id="service_money" name="service_money" value="">
                        <input type="hidden" id="sku_price" name="sku_price" value="">
                        <input type="hidden" id="good_id" name="good_id" value="">
                        <input type="hidden" id="copy_id" name="copy_id" value="">
                        <input type="hidden" id="spc_id" name="spc_id" value="">
                        <input type="hidden" id="zon_id" name="zon_id" value="">
                        <input type="hidden" id="optype" name="optype" value="add_good">
                        <input type="hidden" id="iswxpay" name="iswxpay" value="0">
                        <input type="hidden" id="customer_id" name="customer_id" value="69609206">

                        <table class="table table-bordered table-striped">
                            <tbody>
                            <tr>
                                <td align="right">
                                    <span class="red">*</span><strong>商品名称：</strong>
                                </td>
                                <td>
                                    <input type="text" id="good_name" name="good_name" value="">
                                </td>
                            </tr>

                            <tr>
                                <td align="right"><span class="red">*</span><strong>商品类型：</strong></td>
                                <td>
                                    <select name="type_id" id="type_id" style="width:252px;font-size:14px" class="selectBox">
                                        <option value="">请选择...</option>


                                        <option value="01">保健品</option>

                                        <option value="02">饰品</option>

                                        <option value="03">护肤品</option>

                                        <option value="04">床上用品</option>

                                        <option value="05">生活用品</option>

                                        <option value="06">减肥产品</option>

                                        <option value="07">113</option>

                                        <option value="08">23</option>


                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td align="right"><span class="red">*</span><strong>排序编号：</strong></td>
                                <td>
                                    <input type="text" id="order_no" name="order_no" onkeyup="checkVal2(this);" value="">
                                </td>
                            </tr>
                            <tr>
                                <td align="right"><span class="red">*</span><strong>购买作弊值：</strong></td>
                                <td>
                                    <input type="text" id="sell_num" name="sell_num" onkeyup="checkVal2(this);" value="">
                                </td>
                            </tr>
                            <tr>
                                <td align="right"><strong>图片预览：</strong></td>
                                <td>
                                    <div id="sm_div">

                                        <img src="./static/no_pic.png" id="sm_yl" style="width:240px;height:150px;border:1px solid #ddd;">


                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td align="right"><span class="red">*</span><strong>上传图片：</strong></td>
                                <td>
                                    <input type="file" name="uploadGood" id="smfile&quot;" style="width:540px;height:22px;cursor:hand" class="fileinput" onchange="checkImgType(this);setPreview(this,'sm_yl','sm_div',240,150);">
                                </td>
                            </tr>

                            <tr>
                                <td align="right"><strong>图片2预览：</strong></td>
                                <td>
                                    <div id="sm_div1">

                                        <img src="./static/no_pic.png" id="sm_yl1" style="width:240px;height:150px;border:1px solid #ddd;">


                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td align="right"><span class="red">*</span><strong>上传图片2：</strong></td>
                                <td>
                                    <input type="file" name="uploadGood" id="smfile1&quot;" style="width:540px;height:22px;cursor:hand" class="fileinput" onchange="checkImgType(this);setPreview(this,'sm_yl1','sm_div1',240,150);">
                                </td>
                            </tr>

                            <tr>
                                <td align="right"><strong>图片3预览：</strong></td>
                                <td>
                                    <div id="sm_div2">

                                        <img src="./static/no_pic.png" id="sm_yl2" style="width:240px;height:150px;border:1px solid #ddd;">


                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td align="right"><span class="red">*</span><strong>上传图片3：</strong></td>
                                <td>
                                    <input type="file" name="uploadGood" id="smfile2&quot;" style="width:540px;height:22px;cursor:hand" class="fileinput" onchange="checkImgType(this);setPreview(this,'sm_yl2','sm_div2',240,150);">
                                </td>
                            </tr>

                            <tr>
                                <td align="right"><span class="red">*</span><strong>推广说明：</strong></td>
                                <td>
                                    <textarea id="promote_desc" name="promote_desc" style="width:540px; height: 160px;"></textarea>
                                </td>
                            </tr>

                            <tr>
                                <td align="right"><span class="red">*</span><strong>商品套餐：</strong></td>
                                <td>
                                    <table id="tcbg" class="table table-bordered table-striped">
                                        <tbody><tr>
                                            <th align="left" style="background-color:#F9F9F9">(<font color="red">*</font>)描述</th>
                                            <th align="left" style="background-color:#F9F9F9">(<font color="red">*</font>)成本</th>
                                            <th align="left" style="background-color:#F9F9F9">(<font color="red">*</font>)价格</th>
                                            <th align="left" style="background-color:#F9F9F9">(<font color="red">*</font>)分成</th>
                                            <th align="left" style="background-color:#F9F9F9">(<font color="red">*</font>)客服提成</th>
                                        </tr>



                                        </tbody></table>


                                    <div style="margin-top:10px">
                                        <button class="btn btn-sm btn-primary" onclick="insertRowsc($VD('tcbg'),23);return false;">
                                            <i class="icon-save"></i>
                                            增加
                                        </button>
                                        <!--<button class="btn btn-sm btn-danger" onclick="del_row($VD('tcbg'));return false;">
                                            <i class="icon-trash"></i>
                                            删除
                                      </button>-->
                                        (<font color="red">提示信息：</font>上述所有输入项均为必填项目，请务必填入相应值后保存！)
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td align="right"><span class="red">*</span><strong>商品标签：</strong></td>
                                <td>




                                    <label>
                                        <input type="checkbox" class="ace" id="1" name="tags" value="1">
                                        <span class="lbl">
								             <span class="label label-danger">热销爆款</span>
								          </span>
                                    </label>
                                    &nbsp;&nbsp;
                                    <label>
                                        <input type="checkbox" class="ace" id="2" name="tags" value="2">
                                        <span class="lbl">
								             <span class="label label-pink">女粉推荐</span>
								          </span>
                                    </label>
                                    &nbsp;&nbsp;
                                    <label>
                                        <input type="checkbox" class="ace" id="3" name="tags" value="3">
                                        <span class="lbl">
								             <span class="label label-primary">男粉推荐</span>
										  </span>
                                    </label>
                                    &nbsp;&nbsp;
                                    <label>
                                        <input type="checkbox" class="ace" id="4" name="tags" value="4">
                                        <span class="lbl">
								             <span class="label label-success">人气新品</span>
								          </span>
                                    </label>
                                    &nbsp;&nbsp;
                                    <label>
                                        <input type="checkbox" class="ace" id="5" name="tags" value="5">
                                        <span class="lbl">
								             <span class="label label-info">男女通用</span>
								          </span>
                                    </label>


                                </td>
                            </tr>
                            <tr>
                                <td align="right"><span class="red">*</span><strong>微信文案：</strong></td>
                                <td>


                                    <input type="checkbox" class="ace" id="copy_1887427" name="gcopy" value="1887427">
                                    <span class="lbl">&nbsp;<a href="http://localhost:8081/cust/goods/add#">11</a></span><br>


                                </td>
                            </tr>

                            <tr>
                                <td align="right"><strong>站内文案：</strong></td>
                                <td>


                                </td>
                            </tr>

                            <tr>
                                <td align="right"><strong>空间文案：</strong></td>
                                <td>


                                    <input type="checkbox" class="ace" id="copy_39201701" name="zcopy_id" value="39201701">
                                    <span class="lbl">&nbsp;<a href="http://localhost:8081/cust/goods/add#">12</a></span><br>



                                </td>
                            </tr>

                            <tr>
                                <td align="right"><strong>跳转说明：</strong></td>
                                <td>
                                    <textarea id="copy_desc" name="copy_desc" style="width:540px; height:80px;"></textarea>
                                </td>
                            </tr>

                            <tr>
                                <td align="right"><strong>跳转地址：</strong></td>
                                <td>
                                    <input type="text" id="forward_link" name="forward_link" style="width:540px;" value="">
                                </td>
                            </tr>


                            <tr>
                                <td colspan="2" align="center">
							             <span id="submit" onclick="submitData();" class="btn btn-lxg btn-primary">
							               <i class="icon-save bigger-120"></i>
							                保存 
							             </span>
                                    <span id="back" onclick="goToPage('/cust/goods/list');" class="btn btn-lxg btn-undo">
							             <i class="icon-undo bigger-120"></i>
							                返回 </span>
                                </td>
                            </tr>
                            </tbody></table>

                    </div>
                </form>

            </div><!-- /.page-content -->
        </div><!-- /.main-content -->

    </div><!-- /.main-container-inner -->

    <a href="http://localhost:8081/cust/goods/add#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="icon-double-angle-up icon-only bigger-110"></i>
    </a>
</div><!-- /.main-container -->

<!-- menu start-->


<!--[if !IE]> -->
<script src="./static/jquery-2.0.3.min.js"></script>
<!-- <![endif]-->
<!--[if IE]>
<script src="/customer/assets/js/jquery-1.10.2.min.js"></script>
<![endif]-->
<!--[if !IE]> -->
<script type="text/javascript">
    window.jQuery || document.write("<script src='/customer/assets/js/jquery-2.0.3.min.js'>"+"<"+"script>");
</script>
<!-- <![endif]-->
<!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='/customer/assets/js/jquery-1.10.2.min.js'>"+"<"+"script>");
</script>
<![endif]-->
<script type="text/javascript">
    if("ontouchend" in document) document.write("<script src='/customer/assets/js/jquery.mobile.custom.min.js'>"+"<"+"script>");
</script>
<script src="./static/bootstrap.min.js"></script>
<script src="./static/typeahead-bs2.min.js"></script>
<!-- page specific plugin scripts -->
<!--[if lte IE 8]>
<script src="/customer/assets/js/excanvas.min.js"></script>
<![endif]-->

<script src="./static/jquery-ui-1.10.3.custom.min.js"></script>
<script src="./static/jquery.ui.touch-punch.min.js"></script>
<script src="./static/bootbox.min.js"></script>
<script src="./static/jquery.gritter.min.js"></script>

<!-- ace scripts -->
<script src="./static/ace-elements.min.js"></script>
<script src="./static/ace.min.js"></script>

<script type="text/javascript" src="./static/WdatePicker.js"></script>
<script type="text/javascript" src="./static/lhgdialog.min.js"></script>

<script type="text/javascript">
    jQuery(function($) {
        $('table th input:checkbox').on('click' , function(){
            var that = this;
            $(this).closest('table').find('tr > td:first-child input:checkbox')
                .each(function(){
                    if(!this.disabled){
                        this.checked = that.checked;
                        $(this).closest('tr').toggleClass('selected');
                    }
                });
        });
    })
</script>

<script type="text/javascript">
    (function(config){
        config['extendDrag'] = true; // 注意，此配置参数只能在这里使用全局配置，在调用窗口的传参数使用无效
        config['lock'] = true;
        config['fixed'] = true;
        config['okVal'] = '确定';
        config['cancelVal'] = '取消';
    })($.dialog.setting);

    // 如果只设置一个或少量全局配置也可这样：
    $.dialog.setting.extendDrag = true;

</script>
<!-- menu over-->

<script type="text/javascript">
    var baseUrl = '';
    function submitData(){
        var gid = "";
        var url = "cgood!saveGood.ct";
        //var spc_id = getRadioValue('scopy_id');
        var spc_ids = getCheckBoxValue('scopy_id');
        var zon_ids = getCheckBoxValue('zcopy_id');
        var copy_ids = getCheckBoxValue("gcopy");
        if(isNull($("#good_name").val())){
            $.dialog.alert("对不起！商品名称不能为空！");
            return false;
        }

        if(isNull($("#type_id").val())){
            $.dialog.alert("对不起！请选择商户分类！");
            return false;
        }

        if(isNull($("#promote_desc").val())){
            $.dialog.alert("对不起！推广说明不能为空！");
            return false;
        }

        if(isNull(copy_ids)){
            $.dialog.alert("对不起！请选择微信文案！");
            return false;
        }

        /*if(isNull(spc_id)){
          $.dialog.alert("对不起！请选择站内文案！",null,false);
          return false;
        }*/

        if(isNull($("#order_no").val())){
            $.dialog.alert("对不起！排序编号不能为空！");
            return false;
        }

        //处理sku
        var tab_rows = document.getElementById('tcbg').rows.length
        if(tab_rows==1){
            $.dialog.alert("对不起！请先设置商品套餐！");
            return false;
        }

        var ms="";
        var cb="";
        var jg="";
        var fc="";
        var kffc="";
        for(var i=0;i<tab_rows-1;i++){

            if(!isNull($("#sku"+(i+1)).val())){
                ms += $("#sku"+(i+1)).val()+"|";
            }

            if(!isNull($("#cb"+(i+1)).val())){
                cb += $("#cb"+(i+1)).val()+"|";
            }

            if(!isNull($("#jg"+(i+1)).val())){
                jg += $("#jg"+(i+1)).val()+"|";
            }

            if(!isNull($("#fc"+(i+1)).val())){
                fc += $("#fc"+(i+1)).val()+"|";
            }

            if(!isNull($("#kffc"+(i+1)).val())){
                kffc += $("#kffc"+(i+1)).val()+"|";
            }

        }

        var sku_str="";
        for(var i=0;i<tab_rows-1;i++){

            if(!isNull($("#sku_id_"+(i+1)).val())){
                sku_str += $("#sku_id_"+(i+1)).val()+"|";
            }else{
                sku_str += "newid|";
            }

            if(!isNull($("#sku"+(i+1)).val())){
                sku_str += $("#sku"+(i+1)).val()+"|";
            }

            if(!isNull($("#cb"+(i+1)).val())){
                sku_str += $("#cb"+(i+1)).val()+"|";
            }

            if(!isNull($("#jg"+(i+1)).val())){
                sku_str += $("#jg"+(i+1)).val()+"|";
            }

            if(!isNull($("#fc"+(i+1)).val())){
                sku_str += $("#fc"+(i+1)).val()+"|";
            }

            if(!isNull($("#kffc"+(i+1)).val())){
                sku_str += $("#kffc"+(i+1)).val()+"|";
            }

            sku_str +="$";
        }

        //验证商品是否已经存在
        if(checkGoodName($("#good_name").val(),gid)=='true'){
            $.dialog.alert("对不起！您已经录入同名的商品了！");
            return false;
        }

        $.dialog.confirm('你确定要提交数据吗？', function(){
            $.dialog.tips('数据保存中...',600,'loading.gif');
            var sform = document.copy_form;
            if(sform){
                sform.action = baseUrl+"/"+url;
                $('#sku_str').val(sku_str);
                $('#sku_title').val(ms);
                $('#sku_cost').val(cb);
                $('#sku_price').val(jg);
                $('#sku_pmoney').val(fc);
                $('#service_money').val(kffc);
                $('#copy_id').val(copy_ids);
                $('#spc_id').val(spc_ids);
                $('#zon_id').val(zon_ids);

                setTimeout(function(){
                    sform.submit();
                },500);
            }
        });

    }

    //验证商户是否在使用
    function checkGoodName(name,gid){
        var param = "good_id="+gid+"&good_name="+name+"&now="+new Date().getTime();
        return commonLoad("cust/goods/check",param,"post");
    }

    var tags = "";
    if(tags!=""){
        var com_obj = document.getElementsByName("tags");
        for(var j=0;j<com_obj.length;j++){
            if(tags.indexOf(com_obj[j].value)!=-1){
                com_obj[j].checked = true;
            }else{
                com_obj[j].checked = false;

            }
        }
    }

    var copys = "";
    if(copys!=""){
        var com_obj = document.getElementsByName("gcopy");
        for(var j=0;j<com_obj.length;j++){
            if(copys.indexOf(com_obj[j].value)!=-1){
                com_obj[j].checked = true;
            }else{
                com_obj[j].checked = false;
            }
        }
    }

    var spc_ids = "";
    if(spc_ids!=""){
        var com_obj = document.getElementsByName("scopy_id");
        for(var j=0;j<com_obj.length;j++){
            if(spc_ids.indexOf(com_obj[j].value)!=-1){
                com_obj[j].checked = true;
            }else{
                com_obj[j].checked = false;
            }
        }
    }

    var zon_ids = "";
    if(zon_ids!=""){
        var com_obj = document.getElementsByName("zcopy_id");
        for(var j=0;j<com_obj.length;j++){
            if(zon_ids.indexOf(com_obj[j].value)!=-1){
                com_obj[j].checked = true;
            }else{
                com_obj[j].checked = false;
            }
        }
    }

</script>



<div id="ldg_dragmask" style="display: none; position: fixed; left: 0px; top: 0px; width: 100%; height: 100%; cursor: move; opacity: 0; background: rgb(255, 255, 255); pointer-events: none;"></div><div><div id="maskLevel" style="position:absolute;top:0;left:0;display:none;text-align:center;z-index:10000;"></div><div id="ym-window" style="position:absolute;z-index:10001;display:none"><div class="ym-tl" id="ym-tl"><div class="ym-tr"><div class="ym-tc" style="cursor:move;"><div class="ym-header-text"></div><div class="ym-header-tools"></div></div></div></div><div class="ym-ml" id="ym-ml"><div class="ym-mr"><div class="ym-mc"><div class="ym-body"></div></div></div></div><div class="ym-ml" id="ym-btnl"><div class="ym-mr"><div class="ym-btn"></div></div></div><div class="ym-bl" id="ym-bl"><div class="ym-br"><div class="ym-bc"></div></div></div></div></div></body></html>
