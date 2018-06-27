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
            <li class="layui-nav-item">
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
            <li class="layui-nav-item layui-this">
                <a href="topic.ftl">
                    <i class="layui-icon">&#xe611;</i>
                    帖子管理
                </a>
            </li>
            <li class="layui-nav-item">
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
                <div class="demoTable">
                搜索ID：
                <div class="layui-inline">
                    <input class="layui-input" name="id" id="demoReload" autocomplete="off">
                </div>
                <button class="layui-btn" data-type="reload">搜索</button>
                </div>

                <table class="layui-hide" id="topic" lay-filter="topic"></table>
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
    <script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
    </script>
    <script>
        layui.use('table', function(){
            var table = layui.table;
            //方法级渲染
            table.render({
                elem: '#topic'
                ,url: '/admin/topicInfo'
                ,cols: [[
                    {checkbox: true, fixed: true}
                    ,{field:'id', title: '编号', width:80, sort: true, fixed: true}
                    ,{field:'title', title: '标题', width:80}
                    ,{field:'content', title: '内容', width:80, sort: true}
                    ,{field:'date', title: '发布日期'}
                    ,{field:'totalAnswer', title: '评论数', sort: true, width:80}
                    ,{field:'totalAgree', title: '赞同次数', sort: true, width:80}
                    ,{field:'totalView', title: '浏览次数', width:80}
                    ,{field:'userId', title: '用户编号', width:80}
                    ,{field:'job', title: '职业', width:80}
                    ,{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}
                ]]
                ,id: 'testReload'
                ,page: true
                ,height: 400,
                request: {
                    pageName: 'curr' //页码的参数名称，默认：page
                    ,limitName: 'size' //每页数据量的参数名，默认：limit
                },
                response: {
                    statusName: 'code' //数据状态的字段名称，默认：code
                    ,statusCode: 200 //成功的状态码，默认：0
                    ,msgName: 'message' //状态信息的字段名称，默认：msg
                    ,countName: 'count' //数据总数的字段名称，默认：count
                    ,dataName: 'list' //数据列表的字段名称，默认：data
                }
            });

            //监听工具条
            table.on('tool(topic)', function(obj){
                var data = obj.data;
                if(obj.event === 'detail'){
                    layer.msg('ID：'+ data.id + ' 的查看操作');
                } else if(obj.event === 'del'){
                    layer.confirm('真的删除行么', function(index){
                        obj.del();
                        layer.close(index);
                    });
                } else if(obj.event === 'edit'){
                    layer.alert('编辑行：<br>'+ JSON.stringify(data))
                }
            });


            // var $ = layui.$, active = {
            //     reload: function(){
            //         var demoReload = $('#demoReload');
            //
            //         //执行重载
            //         table.reload('testReload', {
            //             page: {
            //                 curr: 1 //重新从第 1 页开始
            //             }
            //             ,where: {
            //                 key: {
            //                     id: demoReload.val()
            //                 }
            //             }
            //         });
            //     }
            // };
            //
            // $('.demoTable .layui-btn').on('click', function(){
            //     var type = $(this).data('type');
            //     active[type] ? active[type].call(this) : '';
            // });
        });
    </script>
</body>
</html>