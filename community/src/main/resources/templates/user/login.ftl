<#include "/common/header.ftl">
<div class="layui-container fly-marginTop">
    <div class="fly-panel fly-panel-user" pad20>
        <div class="layui-tab layui-tab-brief" lay-filter="user">
            <ul class="layui-tab-title">
                <li class="layui-this">登入</li>
                <li><a href="/user/reg">注册</a></li>
            </ul>
            <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
                <div class="layui-tab-item layui-show">
                    <div class="layui-form layui-form-pane">
                        <form id="login" onsubmit="return false">
                            <div class="layui-form-item">
                                <label for="username" class="layui-form-label">用户名</label>
                                <div class="layui-input-inline">
                                    <input type="text" id="username" name="username" required lay-verify="required" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label for="password" class="layui-form-label">密码</label>
                                <div class="layui-input-inline">
                                    <input type="password" id="password" name="password" required lay-verify="required" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <#--<div class="layui-form-item">-->
                                <#--<label for="L_vercode" class="layui-form-label">人类验证</label>-->
                                <#--<div class="layui-input-inline">-->
                                    <#--<input type="text" id="L_vercode" name="vercode" required lay-verify="required" placeholder="请回答后面的问题" autocomplete="off" class="layui-input">-->
                                <#--</div>-->
                                <#--<div class="layui-form-mid">-->
                                    <#--<span style="color: #c00;">{{d.vercode}}</span>-->
                                <#--</div>-->
                            <#--</div>-->
                            <div class="layui-form-item">
                                <button id="sub" class="layui-btn" lay-filter="*" type="submit">立即登录</button>
                                <span style="padding-left:20px;">
                  <a href="forget.html">忘记密码？</a>
                </span>
                            </div>
                            <div class="layui-form-item fly-form-app">
                                <span>或者使用社交账号登入</span>
                                <a href="" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-qq" title="QQ登入"></a>
                                <a href="" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-weibo" title="微博登入"></a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $("#sub").click(function() {
        $.ajax({
            type: "POST",
            dataType: 'json',
            async:true,
            url: "/auth/login",
            data: $('#login').serialize(),
            success:function(data){
                if(data.code == 200){
                    $.cookie("token",data.data.token,{ expires: 7, path: '/' });
                    $.cookie("userId",data.data.userId,{ expires: 7, path: '/' });
                    $.cookie("username",data.data.username,{ expires: 7, path: '/' });
                    $.cookie("photo",data.data.photo,{ expires: 7, path: '/' });
                    window.location.href = '/community';
                }else{
                    alert("登陆失败，请检查用户名密码是否正确！")
                }
            },
            error:function (data) {
                alert("登陆失败"+data);
            }
        });

    });
</script>
<#include "/common/footer.ftl">
