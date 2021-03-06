<#include "/common/header.ftl">
<script>
    $(document).ready(function(){
        $.ajax({
            type: "POST",
            headers:{
                Accept: "application/json; charset=utf-8",
                token:$.cookie("token"),
                userId:$.cookie("userId")
            },
            dataType: 'json',
            async:true,
            url: "/user/topicInfo?id="+$.cookie("userId"),
            success:function(data){
                var topics = data.data.topics;
                var date = new Date();
                if(topics.length<1){
                    $("topic").html("<div class=\"comm-none\">您还没发过帖子呢，感觉发一个吧！</div>");
                }
                for(var i = 0;i<topics.length;i++){
                    date.setTime(topics[i].date);
                    var year = date.getFullYear();
                    var month = date.getMonth();
                    var day = date.getDay();
                    var dateFormat = year+"/"+month+"/"+day;
                    $("#topic").append('<li>\n' +
    '                                 <a class="jie-title" href="/comment/detail/'+topics[i].id +'">'+topics[i].title+'</a>\n' +
    '                                 <i>'+dateFormat+'</i>\n' +
    '                                 <#--<a class="mine-edit" href="/jie/edit/8116">编辑</a>-->\n' +
    '                                 <em>'+topics[i].totalView+'阅/'+topics[i].totalAnswer+'答</em>\n' +
    '                             </li>');
                }
            }
        });
    });
</script>
<div class="layui-container comm-marginTop comm-user-main">
    <ul class="layui-nav layui-nav-tree layui-inline" lay-filter="user">
        <li class="layui-nav-item">
            <a href="home.ftl">
                <i class="layui-icon">&#xe609;</i>
                我的主页
            </a>
        </li>
        <li class="layui-nav-item">
            <a href="center.ftl">
                <i class="layui-icon">&#xe620;</i>
                基本设置
            </a>
        </li>
        <li class="layui-nav-item layui-this">
            <a href="/user/topicView">
                <i class="layui-icon">&#xe611;</i>
                帖子信息
            </a>
        </li>
        <li class="layui-nav-item">
            <a href="postTopic.ftl">
                <i class="layui-icon">&#xe611;</i>
                发帖
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
        <!--
        <div class="comm-msg" style="margin-top: 15px;">
          您的邮箱尚未验证，这比较影响您的帐号安全，<a href="activate.html">立即去激活？</a>
        </div>
        -->
        <div class="layui-tab layui-tab-brief" lay-filter="user">
            <ul class="layui-tab-title" id="LAY_mine">
                <li data-type="mine-jie" lay-id="index" class="layui-this">我发的帖（<span>89</span>）</li>
                <#--<li data-type="collection" data-url="/collection/find/" lay-id="collection">我收藏的帖（<span>16</span>）</li>-->
            </ul>
            <div class="layui-tab-content" style="padding: 20px 0;">
                <div class="layui-tab-item layui-show">
                    <ul class="mine-view jie-row" id="topic">
                    </ul>
                    <div id="LAY_page"></div>
                </div>
                <#--<div class="layui-tab-item">-->
                    <#--<ul class="mine-view jie-row">-->
                        <#--<li>-->
                            <#--<a class="jie-title" href="../jie/detail.html" target="_blank">基于 layui 的极简社区页面模版</a>-->
                            <#--<i>收藏于23小时前</i>  </li>-->
                    <#--</ul>-->
                    <#--<div id="LAY_page1"></div>-->
                <#--</div>-->
            </div>
        </div>
    </div>
</div>
<#include "/common/footer.ftl">