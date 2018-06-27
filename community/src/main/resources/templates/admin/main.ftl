<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>大大话社区</title>
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

            }else{}

        });

        function logout() {
            $.cookie('token', '', { expires: -1,path: '/' });
            $.cookie('username', '', { expires: -1,path: '/' });
            $.cookie('userId', '', { expires: -1,path: '/' });
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
            <a href="">Admin</a>
        </li>
    </ul>
    <div class="layui-container comm-marginTop comm-user-main">
        <ul class="layui-nav layui-nav-tree layui-inline" lay-filter="user">
            <li class="layui-nav-item layui-this">
                <a href="main.ftl">
                    <i class="layui-icon">&#xe609;</i>
                    我的主页
                </a>
            </li>
            <li class="layui-nav-item">
                <a href="user.ftl">
                    <i class="layui-icon">&#xe620;</i>
                    用户管理
                </a>
            </li>
            <li class="layui-nav-item">
                <a href="topic.ftl">
                    <i class="layui-icon">&#xe611;</i>
                    帖子管理
                </a>
            </li>
            <li class="layui-nav-item layui-this">
                <a href="type.ftl">
                    <i class="layui-icon">&#xe611;</i>
                    类别管理
                </a>
            </li>
        </ul>

        <div class="site-tree-mobile layui-hide">
            <i class="layui-icon">&#xe602;</i>
        </div>
        <div class="site-mobile-shade"></div>

        <div class="site-tree-mobile layui-hide">
            <i class="layui-icon">&#xe602;</i>
        </div>
        <div class="site-mobile-shade"></div>


        <div class="comm-panel comm-panel-user" pad20>
            <div class="layui-tab-brief" lay-filter="user">
                wlecome admin
            </div>
        </div>
    </div>

    <div class="comm-footer">
        <p><a href="http://fly.layui.com/" target="_blank">大话社区</a> 2018 &copy; <a href="http://www.layui.com/" target="_blank">layui.com 出品</a></p>
        <p>
            <a href="http://fly.layui.com/jie/3147/" target="_blank">付费计划</a>
            <a href="http://fly.layui.com/jie/2461/" target="_blank">微信公众号</a>
        </p>
    </div>

</body>
</html>