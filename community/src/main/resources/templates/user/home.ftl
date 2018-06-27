<#include "/common/header.ftl">
<script>
    $(document).ready(function(){
        //$("#img").attr('src', $.cookie("photo"));
        $.ajax({
            type: "GET",
            headers:{
                Accept: "application/json; charset=utf-8",
                token:$.cookie("token"),
                userId:$.cookie("userId")
            },
            dataType: 'json',
            async:false,
            url: "/user/userInfo?id="+$.cookie("userId"),
            success:function(data){
                var user = data.data.user;
                var username = user.name;
                var comments = data.data.comments;
                var  topics = data.data.topics;

                var date = new Date();//转换日期
                date.setTime(user.date);
                var year = date.getFullYear();
                var month = date.getMonth();
                var day = date.getDay();

                $(".username").text(username);
                $("#regTime").text(year+"/"+month+"/"+day);
                $("#address").text(user.address);
                $("#topic").html("");
                for(var i = 0;i<topics.length;i++){
                    date.setTime(topics[i].date);
                    year = date.getFullYear();
                    month = date.getMonth();
                    day = date.getDay();

                    $("#topic").append(
                    "<li>\n" +
                    "                        <i>"+year+"/"+month+"/"+day+"</i>\n" +
                    "                        <span class=\"comm-jing\"></span>\n" +
                    "                        <a href=\"/comment/detail/"+topics[i].id+"\" class=\"jie-title\"> "+topics[i].title+"</a>\n" +
                    "                        <em class=\"layui-hide-xs\">"+topics[i].totalView+"阅/"+topics[i].totalAnswer+"答</em>\n" +
                    "                    </li>"
                    );
                }
                for(var i = 0;i<comments.length;i++){
                    $("#comment").append('<li>\n' +
                            '                        <p>\n' +
                            '                            <a href="/comment/detail/'+comments[i].id + '">'+comments[i].title+'</a>\n' +
                            '                        </p>\n' +
                            '                    <#--<div class="home-dacontent">-->\n' +
                            '                    <#--Fly社区采用的是NodeJS。分享出来的只是前端模版-->\n' +
                            '                    <#--</div>-->\n' +
                            '                    </li>');
                }
            },
            error:function (data) {
                alert("error");
            }
        });
    });
</script>
<div class="comm-home comm-panel" style="background-image: url();">
    <img id="img" src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg" alt="贤心">
    <i class="iconfont icon-renzheng" title="大话社区认证"></i>
    <h1>
        <i class="username" style="font-size:25px;" title="用户名"></i>
        <i class="iconfont icon-nan"></i>
        <!-- <i class="iconfont icon-nv"></i>  -->
        <i class="layui-badge comm-badge-vip">VIP3</i>
        <!--
        <span style="color:#c00;">（管理员）</span>
        <span style="color:#5FB878;">（社区之光）</span>
        <span>（该号已被封）</span>
        -->
    </h1>

    <p style="padding: 10px 0; color: #5FB878;">认证信息：用户</p>

    <p class="comm-home-info">
        <i class="iconfont icon-kiss" title="飞吻"></i><span style="color: #FF7200;">66666 飞吻</span>
        <i class="iconfont icon-shijian"></i><span id="regTime" title="注册日期">2018 4 21</span>
        <i class="iconfont icon-chengshi"></i><span id="address" title="地址"></span>
    </p>

    <p class="comm-home-sign">（人生仿若一场修行）</p>

    <#--<div class="comm-sns" data-user="">-->
        <#--<a href="javascript:;" class="layui-btn layui-btn-primary comm-imActive" data-type="addFriend">加为好友</a>-->
        <#--<a href="javascript:;" class="layui-btn layui-btn-normal comm-imActive" data-type="chat">发起会话</a>-->
    <#--</div>-->

</div>

<div class="layui-container">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md6 comm-home-jie">
            <div class="comm-panel">
                <h3 class="comm-panel-title"><span class="username"></span> 最近的提问</h3>
                <ul class="home-jieda" id="topic" style="min-height: 500px; padding: 5px 20px;">

                    <!-- <div class="comm-none" style="min-height: 50px; padding:30px 0; height:auto;"><i style="font-size:14px;">没有发表任何求解</i></div> -->
                </ul>
            </div>
        </div>

        <div class="layui-col-md6 fly-home-da">
            <div class="comm-panel">
                <h3 class="comm-panel-title"><span class="username"></span> 最近的回答</h3>
                <ul class="home-jieda" id="comment" style="min-height: 500px; padding: 5px 20px;">
                    <!-- <div class="fly-none" style="min-height: 50px; padding:30px 0; height:auto;"><span>没有回答任何问题</span></div> -->
                </ul>
            </div>
        </div>
    </div>
</div>
<#include "/common/footer.ftl">