<%--
  Created by IntelliJ IDEA.
  User: ZC
  Date: 2019/4/10
  Time: 17:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0032)http://localhost:8081/user/login -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


    <title>自媒体盈利平台</title>
    <meta name="keywords" content="CPS联盟，微信派单接单，微信盈利联盟，微信盈利，微信盈利平台，盈利联盟，微信广告联盟，微联盟">
    <meta property="qc:admins" content="4441727777670263757">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="http://localhost:8081/wxb/images/favicon.ico">
    <link rel="icon" type="image/gif" href="http://localhost:8081/wxb/images/favicon.gif">
    <link rel="stylesheet" type="text/css" href="./static/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="./static/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="./static/style-metronic.css">
    <link rel="stylesheet" type="text/css" href="./static/style.css">
    <link rel="stylesheet" type="text/css" href="./static/index.css">

    <!--[if IE 8]>
    <script type="text/javascript" src="/wxb/script/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="./static/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="./static/bootstrap.min.js"></script>
    <script type="text/javascript" src="./static/underscore-min.js"></script>
    <script type="text/javascript" src="./static/back-to-top.js"></script>
    <script type="text/javascript" src="./static/jquery.cookie.min.js"></script>
    <script type="text/javascript" src="./static/win.js"></script>
    <script type="text/javascript" src="./static/app.js"></script>
    <script type="text/javascript" src="./static/jquery.cookie.min.js"></script>
    <script type="text/javascript" src="./static/jquery.validate.min.js"></script>
    <script type="text/javascript" src="./static/additional-methods.min.js"></script>
    <script>
        var SITE_PUBLIC='http://localhost:8081/';
        var SITE_UPLOAD='/files/';
    </script>
</head>
<body class="admin" style="">
<style>
    .container{
        width: 1000px;
    }
</style>
<div class="header signup-header">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="http://localhost:8081/user/index" "="">
            <img src="./static/logo.png" id="logoimg" alt="logo">
            </a>
        </div>
        <div class="pull-right index-header-lsist" style="aligin:right;margin-top:35px;">
            <span class="index-header-qq">客服QQ：123456789</span>
            <span class="index-header-qq">QQ群：123456789</span>
            <span class="index-header-tel">电话：400-123-1234</span>
        </div>
    </div>
</div>
<div class="page-container" style="min-height: 357px;">
    <style>
        .page-container{
            margin-top: 0;
        }
        body{
            background-color: #fff;
        }
        .login-btn .fa-loading{display: none;}
    </style>





    <div id="banner" class="index-banner show2">
        <div class="container">
            <div class="login-wrap">
                <form id="form" method="post" action="member/login">
                    <div class="login-title text-center">

                        <div>
                            <input type="radio" name="user_ck" onclick="clickRadio(0);" checked="" id="memeber" value="0">自媒体登录 &nbsp;&nbsp;
                            <input type="radio" name="user_ck" onclick="clickRadio(1);" id="customer" value="1">商户登录
                        </div>



                    </div>
                    <div class="form-group">
                        <input type="hidden" name="ismobile" id="ismobile" class="form-control" value="1">
                        <input type="hidden" name="user_type" id="user_type" class="form-control" value="0">
                        <input type="text" name="account" id="username" class="form-control" placeholder="登录账号" value="">
                        <span class="login-icon login-icon-user"></span>
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" id="password" class="form-control" placeholder="账号密码" value="">
                        <span class="login-icon login-icon-pwd"></span>
                    </div>
                    <div id="captcha" class="form-group captcha-warpper" style="margin-bottom: 5px;display: none;">
                        <input class="form-control captcha" id="captcha" type="text" name="captcha" placeholder="验证码">
                        <img class="check-code js-refresh-check" src="./static/captcha" alt="验证码">
                        <a class="js-refresh-check" href="javascript:void(0);">换一张</a>
                    </div>
                    <div class="form-group" style="margin-bottom: 10px;">
                        <label><input type="checkbox" checked="" name="remember" style="margin-left:0;margin-right:4px;">记住账号</label>
                    </div>
                    <div class="form-group">
                        <span  class="btn btn-info login-btn" onclick="login()"> 登&nbsp;&nbsp;录 </span>
                            <a href="http://localhost:8081/user/register" class="btn btn-yellow register-btn"> 注&nbsp;&nbsp;册 </a>
                    </div>            </form>
            </div>
            <div class="banner-wrap">
                <div class="banner-1">
                    <img class="b2_cloud" src="./static/2_cloud.png" alt="">
                    <img class="b2_word" src="./static/2_word.png" alt="">
                    <img class="b2_bottom" src="./static/2_bottom.png" alt="">
                    <li style="color:#177EC1">
                        <b>
                            <a class="zt_link" href="http://localhost:8081/user/login#" onclick="javascript:if(confirm( '即将推出 敬请期待')) href= '#';"></a>
                        </b>
                    </li>

                </div>
                <div class="banner-2">
                    <img class="b1_cloud" src="./static/1_cloud.png" alt="">
                    <img class="b1_circle" src="./static/1_circle.png" alt="">
                    <img class="b1_bottom" src="./static/1_bottom.png" alt="">
                </div>
                <div class="banner-3">
                    <img class="b3_word" src="./static/3_word.png" alt="">
                    <img class="b3_human" src="./static/3_human.png" alt="">
                    <img class="b3_ufo" src="./static/3_ufo.png" alt="">
                    <a class="banner_download_link" target="_blank" href="http://localhost:8081/user/register"></a>
                </div>
            </div>
            <ul class="banner-nav">
                <li class="" data-index="1"></li>
                <li data-index="2" class="active"></li>
                <li data-index="3" class="">=</li>
            </ul>
        </div>
        <div class="arrow-left" style="" data-type="left"></div>
        <div class="arrow-right" style="" data-type="right"></div>
    </div>




    <script type="text/javascript">
        $(function () {
            var bannerNum=$('#banner .banner-wrap > div').length;//有几个 banner
            var bannerIntervalTime=5000;//IntervalTime
            $('#banner').addClass('show1');
            var bannerInterval,bannerTimeout;
            bannerTimeout=setTimeout(function () {
                bannerInterval=setInterval(showNextBanner,bannerIntervalTime)
            },2000);

            $('#banner .arrow-left,#banner .arrow-right').click(function () {
                var type=$(this).attr('data-type');
                var now=$('#banner .banner-nav .active').attr('data-index');
                var next;//下次的banner 顺序
                if(type=='left'){
                    next=parseInt(now,10)-1;
                }else{
                    next=parseInt(now,10)+1;
                }
                if(next<1){
                    next=bannerNum;
                }
                if(next>bannerNum){
                    next=1;
                }
                clearInterval(bannerInterval);
                clearTimeout(bannerTimeout);
                showBanner(next);
            });
            $('#banner .banner-nav li').click(function () {
                var index=$(this).attr('data-index');
                showBanner(index);
            });

            $('#banner').hover(function () {
                clearInterval(bannerInterval);
                clearTimeout(bannerTimeout);
                $('.arrow-left,.arrow-right').show();
            }, function () {
                $('.arrow-left,.arrow-right').hide();
                bannerTimeout=setTimeout(function () {
                    bannerInterval=setInterval(showNextBanner,bannerIntervalTime)
                },0);
            });

            function showNextBanner(){
                var now=$('#banner .banner-nav .active').attr('data-index');
                var next=parseInt(now,10)+1;
                if(next<1){
                    next=bannerNum;
                }
                if(next>bannerNum){
                    next=1;
                }
                showBanner(next);
            }

            function showBanner(index){
                $('#banner .banner-nav .active').removeClass('active');
                $('#banner .banner-nav li').eq(index-1).addClass('active');
                $('#banner').attr('class','index-banner').addClass('show'+index);
            }
        });
    </script>

    <div id="advantage">
        <div class="w1000">
            <p class="title36">6大平台优势，开启财富之旅</p>
            <ul>
                <li class="advantage01"><p><span>一手货源 分成高</span><br>与厂商长期合作，直接发货，平均分成超60%，省去中间环节</p></li>
                <li class="advantage02"><p><span>一件代发 结算快</span><br>买家下1单，厂商发1单，当天下单当天发出，结算周期短，结算快</p></li>
                <li class="advantage03"><p><span>正品保证 签收高</span><br>商品通过国家检验标准，品质经过消费者认可，签收率达到90%</p></li>
                <li class="advantage04"><p><span>提供图文素材 无门槛</span><br>提供精美文案和图片，省去编辑素材的麻烦，您只需复制图文内容</p></li>
                <li class="advantage05"><p><span>操作简便 赚钱快</span><br>您登录后选择合适的商品，复制并发出图文信息，然后就可以数钱了</p></li>
                <li class="advantage06"><p><span>专业客服 退换不愁</span><br>每件商品都有专业客服为买家服务，享受各大电商的优质客户服务</p></li>
            </ul>
        </div>
    </div>

    <div id="security">
        <div class="w1000" id="securityBox">
            <h5>4大货源优势，更添安全收益保障</h5>
            <ul>
                <li>所有商品在各大知名电商有售，通过<span>专业机构检测，正品保障，假一赔十</span></li>
                <li>绝不销售三无产品，一律支持验货，<span>全国货到付款</span></li>
                <li>厂家直接发货，利润留给自媒体</li>
                <li>每周精选<span>利润高、品质佳、签收高</span>的爆款，周周上新！不仅赚钱还能涨粉！</li>
            </ul>
        </div>
    </div>

    <div id="massege" class="w1000">
        <p class="title36">真实用户感言，见证平台精彩</p>
        <ul>
            <li>
                <div><p class="photo01"></p><p class="txt18g">不吃猫****鱼</p><p class="txt14g">前几十单来看，可可这个平台还算是最靠谱的...财务mm这么晚了还在返款</p></div>
            </li>
            <li>
                <div><p class="photo02"></p><p class="txt18g">面****花开</p><p class="txt14g">可可服务挺好的，每次发单都挺放心，有好多平台来挖人 都被我拒绝了！还是你们平台好</p></div>
            </li>
            <li>
                <div><p class="photo03"></p><p class="txt18g">心****忧伤</p><p class="txt14g">试着用小号推了一单，出了十几单破纪录了，小宝还可以</p></div>
            </li>
            <li style="margin-right:0px;">
                <div><p class="photo04"></p><p class="txt18g">Angl**aby</p><p class="txt14g">可可产品上架更新挺给力，我推得几个新品出单都很高 杠杠的哦</p></div>
            </li>
        </ul>
    </div>

    <div id="joinUs">
        <div id="joinUsBox" class="w1000">
            <a class="btn btn-blue index-join-us-btn" href="http://localhost:8081/user/register">立即注册</a>
            <p class="step4"></p>
        </div>
    </div>

</div>

<div class="right-service closed">
    <img class="RS-img" src="./static/wxb.png">
    <div class="RS-wrap">
        <div class="RS-title">@在线客服<span class="RS-title-right-btn"><i class="fa fa-angle-right"></i></span></div>
        <div class="RS-title-for-closed"><i class="fa fa-ellipsis-h"></i><br>在线客服</div>
        <ul class="RS-ul">
            <li class="RS-i1"><a href="tencent://message/?uin=594364829&amp;Site=wxb.com&amp;Menu=yes">合作咨询<br><span>小强</span></a></li>
            <li class="RS-i2"><a href="tencent://message/?uin=594364829&amp;Site=wxb.com&amp;Menu=yes">异常订单<br><span>小微</span></a></li>
            <li class="RS-i3"><a href="tencent://message/?uin=594364829&amp;Site=wxb.com&amp;Menu=yes">财务返款<br><span>小丽</span></a></li>
        </ul>
        <div class="RS-bottom">400-123-1234</div>
    </div>
</div>

<!-- footer start-->


<div class="right-service closed">
    <img class="RS-img" src="./static/wxb.png">
    <div class="RS-wrap">
        <div class="RS-title">@在线客服<span class="RS-title-right-btn"><i class="fa fa-angle-right"></i></span></div>
        <div class="RS-title-for-closed"><i class="fa fa-ellipsis-h"></i><br>在线客服</div>
        <ul class="RS-ul">
            <li class="RS-i1"><a href="tencent://message/?uin=123456789&amp;Site=wxb.com&amp;Menu=yes">合作咨询<br><span>小强</span></a></li>
            <li class="RS-i2"><a href="tencent://message/?uin=123456789&amp;Site=wxb.com&amp;Menu=yes">异常订单<br><span>小薇</span></a></li>
            <li class="RS-i3"><a href="tencent://message/?uin=123456789&amp;Site=wxb.com&amp;Menu=yes">财务返款<br><span>小丽</span></a></li>
        </ul>
        <div class="RS-bottom">400-123-1234</div>
    </div>
</div>

<div class="copyright">
    <div class="container text-center">
        <p>
            <span class="copyright-icon copyright-icon-1"><img src="./static/copyright-pic-1.jpg" width="94"></span>
            <span class="copyright-icon copyright-icon-2"><img src="./static/copyright-pic-2.jpg" width="94"></span>
            <span class="copyright-icon copyright-icon-3"><img src="./static/copyright-pic-3.jpg" width="117"></span>
            <span class="copyright-icon copyright-icon-4"><img src="./static/copyright-pic-4.jpg" width="109"></span>
        </p>
        <p>
            Copyright ? 2015
        </p>
        <p>
            客服电话：400-123-1234
        </p>

    </div>
</div>
<div id="topcontrol" style="position: fixed; bottom: 110px; right: 10px; opacity: 0; cursor: pointer; " title="返回顶部"><div class="back-to-top"></div></div>

<!-- cnzz 统计开始
<div style='display:none'>
<script type="text/javascript">
var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cspan id='cnzz_stat_icon_307679'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s19.cnzz.com/stat.php%3Fid%3D307679' type='text/javascript'%3E%3C/script%3E"));
</script>
</div>
 cnzz 统计结束-->
<!-- footer over-->
<script type="text/javascript" src="js/jquery-3.1.1.js"></script>
<script type="text/javascript">
    $(function () {
        var errorTimes= $.cookie('loginErrorTimes') || 0;
        if(errorTimes>3){
            refreshCheck();
            $('#captcha').show();
        }
        var old_user_name=$.cookie('login_name');
        if(old_user_name!=undefined){
            $('#username').val(old_user_name);
        }

        var form = $('#form');
        var submitBtn = $('#submit');

        form.keypress(function(e){
            if(e.keyCode==13){
                submitBtn.click();
            }
        })

        submitBtn.click(function () {
            var user_name=$('[name="username"]');
            var user_name_val=user_name.val();
            var password=$('[name="password"]');
            var password_val=password.val();
            var captcha=$('[name="captcha"]');
            var captcha_val=captcha.val();
            if(user_name_val.length<1){
                toastr.error('请输入用户名');
                user_name.focus();
                return false
            }
            if(password_val.length<1){
                toastr.error('请输入密码');
                password.focus();
                return false
            }
            if(captcha.is(':visible') &&captcha_val.length<1){
                toastr.error('请输入验证码');
                captcha.focus();
                return false
            }

            if(filterSqlStr(user_name_val)){
                toastr.error("用户名不能有特殊字符【"+sql_str()+"】");
                captcha.focus();
                return false
            }

            if(filterSqlStr(password_val)){
                toastr.error("密码不能有特殊字符【"+sql_str()+"】");
                captcha.focus();
                return false
            }

            if(captcha.is(':visible') && filterSqlStr(captcha_val)){
                toastr.error("验证码不能有特殊字符【"+sql_str()+"】");
                captcha.focus();
                return false
            }

            if (submitBtn.hasClass('js-loading')) {
                return false;
            }

            var is_remember=$('[name="remember"]').is(':checked');
            if(is_remember){
                $.cookie('login_name', user_name_val, { expires: 7, path: '/' });
            }

            var action;
            if($("#user_type").val()==0){
                action = "/user/login";
            }else{
                action = "/cust/login";
            }
            var data = form.serialize();
            var loading = App.showLoading(submitBtn);
            $.ajax({
                url: action,
                type: 'post',
                data: data,
                dataType: 'text',
                success: function (response) {
                    var suc = response.split("#")[0];
                    var msg = response.split("#")[1];
                    loading.revert();
                    if (suc == 'true') {
                        submitBtn.unbind('click');
                        $.cookie('loginErrorTimes',0);
                        toastr.success('', '登录成功');
                        if($("#user_type").val()==0){
                            window.location.href = "/user/index";
                        }else{
                            window.location.href = "/cust/index";
                        }
                    } else {
                        errorTimes++;
                        if(errorTimes>3){
                            refreshCheck();
                            $('#captcha').show();
                        }
                        $.cookie('loginErrorTimes',errorTimes);
                        toastr.error(msg, '登录失败');
                        refreshCheck();
                    }
                },
                error: function () {
                    loading.revert();
                }
            });
        });

        $(".js-refresh-check").click(function (event) {
            refreshCheck();
        });
    });



    //过滤一些敏感字符函数
    function filterSqlStr(value){
        var sqlStr=sql_str().split(',');
        var flag=false;
        for(var i=0;i<sqlStr.length;i++){
            if(value.toLowerCase().indexOf(sqlStr[i])!=-1){
                flag=true;
                break;
            }
        }
        return flag;
    }


    function sql_str(){
        var str="*,',join,>,<";
        return str;
    }

    function clickRadio(id){
        $("#user_type").val(id);
    }

    //获取校验码
    function refreshCheck() {
        var url = '/index/captcha';
        $('.check-code').attr('src', url + '?t=' + new Date().getTime());
        $('.captcha').val('').focus();
    }

    // 判断当前访问者的客户端设备类型、操作系统及浏览器类型
    function jupmBrowserType() {
        var browser = {
            versions: function () {
                var u = navigator.userAgent, app = navigator.appVersion;
                return { // 客户端浏览器版本信息
                    trident: u.indexOf('Trident') > -1, // IE内核
                    webKit: u.indexOf('AppleWebKit') > -1, // 苹果、谷歌内核
                    mobile: !!u.match(/AppleWebKit.*Mobile.*/), // 是否为移动终端
                    android: u.indexOf('Android') > -1 || u.indexOf('Linux') > -1, // android终端或者uc浏览器
                    iPhone: u.indexOf('iPhone') > -1 || u.indexOf('Mac') > -1 // 是否为iPhone或者QQHD浏览器
                };
            } ()
        }
        // 是否为移动终端
        if (!browser.versions.mobile) {
            // 是否为IE内核
            if (browser.versions.trident) {
                return 4;
            } else if (browser.versions.webKit) { // 是否为苹果、谷歌内核
                return 1;
            } else {
                return 0;
            }
        } else {
            // 是否为android终端
            if (browser.versions.android) {
                return 2;
            } else if (browser.versions.iPhone) { //是否为iPhone终端
                return 3;
            } else {
                return 0;
            }
        }
    }
</script>

<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
        $("#ismobile").val(jupmBrowserType());
    });




    function login() {
        var usernameStr = $("#username").val();
        var passwordStr = $("#password").val();
       /* alert(usernameStr+"denglu+++"+passwordStr)*/
        $.post("member/login",
            {account:usernameStr,password:passwordStr},
            function (data) {
                if(data.code == 1){
                    //登录成功
                    window.location.href="goods.do?m=selectGoodsByPage";
                } else {
                    alert("登录失败：" + data.msg);
                }
            });
    }
</script>

<!--
<script type="text/javascript" src="/script/lhgdialog/lhgdialog.min.js"></script>
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
$.dialog({
    title: '会员公告',
    content: '<font style="font-size:16px;color:#cc0033">全体微力汇会员：<br/>&nbsp;&nbsp;&nbsp;您们好，由于最近两天系统更新和升级，导致帐号出现登录问题，<br/>请及时联系首页上方客服咨询，望大家理解!</font>',
    cancelVal: '明白了',
    cancel: true
});
</script>
-->
<script type="text/javascript">

    //自动弹出公告
    var str = 12;
    if( !str || str != 13 ){
        var nstitle = '网站公告';
        var nstext = '网站公告22a';
        if( nstitle!='' && nstext!=''){
            var modal=Win.open({
                title:nstitle,
                content:nstext,
                width:710,
                height:340
            });


        }

    }

</script>


<div id="topcontrol" title="返回顶部" style="position: fixed; bottom: 110px; right: 10px; opacity: 0; cursor: pointer;"><div class="back-to-top"></div></div></body></html>
