<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>大话社区</title>
    <link rel="stylesheet" href="/moudle/layui/css/layui.css">
    <link rel="stylesheet" href="/moudle/css/global.css">
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="/moudle/layui/layui.js"></script>
    <script type="text/javascript" src="/js/jquery.cookie.js"></script>
    <style>
        body{margin: 10px;}
        .comm-content{margin-top:40px}
        .comm-topic{width:100%;}
    </style>
    <script>
        $(document).ready(function(){
            if($.cookie("token") !="null" && typeof($.cookie("token")) != "undefined"){
                $("#user").html('<a href=""><img src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg" class="layui-nav-img">'+$.cookie("username")+'</a>\n' +
                        '            <dl class="layui-nav-child">\n' +
                        '                <dd><a href="javascript:;">修改信息</a></dd>\n' +
                        '                <dd><a href="javascript:;">安全管理</a></dd>\n' +
                        '                <dd><a href="javascript:logout();">退了</a></dd>\n' +
                        '            </dl>');
                $("#uc").html('<a id="center" href="/user/center.ftl" >个人中心<span class="layui-badge-dot"></span></a>');
            }else{
                $("#user").html("<a>请登录</a>");
                $("#isLogin").html(' <li class="layui-nav-item">\n' +
                        '                <a class="iconfont icon-touxiang layui-hide-xs" href="user/login.ftl"></a>\n' +
                        '            </li>\n' +
                        '            <li class="layui-nav-item">\n' +
                        '                <a href="/user/login">登入</a>\n' +
                        '            </li>\n' +
                        '            <li class="layui-nav-item">\n' +
                        '                <a href="/user/reg">注册</a>\n' +
                        '            </li>\n' +
                        '            <li class="layui-nav-item layui-hide-xs">\n' +
                        '                <a href="/app/qq/" onclick="layer.msg(\'正在通过QQ登入\', {icon:16, shade: 0.1, time:0})" title="QQ登入" class="iconfont icon-qq"></a>\n' +
                        '            </li>\n' +
                        '            <li class="layui-nav-item layui-hide-xs">\n' +
                        '                <a href="/app/weibo/" onclick="layer.msg(\'正在通过微博登入\', {icon:16, shade: 0.1, time:0})" title="微博登入" class="iconfont icon-weibo"></a>\n' +
                        '            </li>');
            }
        });

        function logout() {
            $.cookie('token', '', { expires: -1,path: '/' });
            $.cookie('username', '', { expires: -1,path: '/' });
            $.cookie('userId', '', { expires: -1,path: '/' });
            $.cookie('photo', '', { expires: -1,path: '/' });
            location.reload();
        }
    </script>
    <script>

        layui.config({
            version: '1515376178709' //为了更新 js 缓存，可忽略
        });
        layui.use(['laydate', 'laypage', 'layer', 'upload','table', 'element','flow'], function(){
            var laydate = layui.laydate //日期
                    ,laypage = layui.laypage //分页
                    ,layer = layui.layer //弹层
                    ,element = layui.element; //元素操作

        });
    </script>
</head>
<body>

<!--导航栏-->
<div id="nav">
    <ul class="layui-nav comm-header">
        <li class="layui-nav-item">
            <a href="/community">首页<span class="layui-badge">9</span></a>
        </li>
        <li class="layui-nav-item" id="uc">

        </li>
        <li class="layui-nav-item" id="user">

        </li>
        <!-- 未登入的状态 -->
        <div class="comm-nav-user" id="isLogin">
            <!-- 登入后的状态 -->

        </div>
    </ul>
