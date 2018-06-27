<#include "/common/header.ftl">
<div class="layui-container comm-marginTop comm-user-main">
    <ul class="layui-nav layui-nav-tree layui-inline" lay-filter="user">
        <li class="layui-nav-item">
            <a href="home.ftl">
                <i class="layui-icon">&#xe609;</i>
                我的主页
            </a>
        </li>
        <li class="layui-nav-item layui-this">
            <a href="center.ftl">
                <i class="layui-icon">&#xe620;</i>
                基本设置
            </a>
        </li>
        <li class="layui-nav-item">
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
        <div class="layui-tab layui-tab-brief" lay-filter="user">
            <ul class="layui-tab-title" id="LAY_mine">
                <li class="layui-this" lay-id="info">我的资料</li>
                <li lay-id="avatar">头像</li>
                <li lay-id="pass">密码</li>
                <li lay-id="bind">帐号绑定</li>
            </ul>
            <div class="layui-tab-content" style="padding: 20px 0;">
                <div class="layui-form layui-form-pane layui-tab-item layui-show">
                    <form id="edit">
                        <div class="layui-form-item">
                            <label for="L_email" class="layui-form-label">邮箱</label>
                            <div class="layui-input-inline">
                                <input type="text" id="L_email" name="email" required lay-verify="email" autocomplete="off" value="" class="layui-input">
                            </div>
                            <div class="layui-form-mid layui-word-aux">如果您在邮箱已激活的情况下，变更了邮箱，需<a href="activate.html" style="font-size: 12px; color: #4f99cf;">重新验证邮箱</a>。</div>
                        </div>
                        <div class="layui-form-item">
                            <label for="L_username" class="layui-form-label">昵称</label>
                            <div class="layui-input-inline">
                                <input type="text" id="L_username" name="name" required lay-verify="required" autocomplete="off" value="" class="layui-input">
                            </div>
                            <div class="layui-inline">
                                <div class="layui-input-inline">
                                    <input type="radio" name="sex" value="0" checked title="男">
                                    <input type="radio" name="sex" value="1" title="女">
                                </div>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label for="L_city" class="layui-form-label">家庭住址</label>
                            <div class="layui-input-inline">
                                <input type="text" id="L_city" name="address" autocomplete="off" value="" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label for="L_city" class="layui-form-label">电话号码</label>
                            <div class="layui-input-inline">
                                <input type="text" id="phone" name="phone" autocomplete="off" value="" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item layui-form-text">
                            <label for="L_sign" class="layui-form-label">签名</label>
                            <div class="layui-input-block">
                                <textarea placeholder="随便写些什么刷下存在感" id="L_sign"  name="words" autocomplete="off" class="layui-textarea" style="height: 80px;"></textarea>
                            </div>
                        </div>

                        <input type="hidden" id="id" name="id" required lay-verify="required" autocomplete="off" value="" class="layui-input">

                        <div class="layui-form-item">
                            <button class="layui-btn" key="set-mine" lay-filter="*" lay-submit onclick="edit()">确认修改</button>
                        </div>
                </div>

                <div class="layui-form layui-form-pane layui-tab-item">
                    <div class="layui-form-item">
                        <div class="avatar-add">
                            <p>建议尺寸168*168，支持jpg、png、gif，最大不能超过50KB</p>
                            <button type="button" class="layui-btn upload-img" id="img_upload">
                                <i class="layui-icon">&#xe67c;</i>上传头像
                            </button>
                            <img src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg" id="photo">
                            <span class="loading"></span>
                        </div>
                    </div>
                </div>

                <div class="layui-form layui-form-pane layui-tab-item">
                    <form action="/user/repass" method="post">
                        <div class="layui-form-item">
                            <label for="L_nowpass" class="layui-form-label">当前密码</label>
                            <div class="layui-input-inline">
                                <input type="password" id="L_nowpass" name="nowpass" required lay-verify="required" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label for="L_pass" class="layui-form-label">新密码</label>
                            <div class="layui-input-inline">
                                <input type="password" id="L_pass" name="password" required lay-verify="required" autocomplete="off" class="layui-input">
                            </div>
                            <div class="layui-form-mid layui-word-aux">6到16个字符</div>
                        </div>
                        <div class="layui-form-item">
                            <label for="L_repass" class="layui-form-label">确认密码</label>
                            <div class="layui-input-inline">
                                <input type="password" id="L_repass" name="repass" required lay-verify="required" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <input type="hidden" id="id" name="id" autocomplete="off" value="" class="layui-input">
                        <div class="layui-form-item">
                            <button class="layui-btn" key="set-mine" lay-filter="*" lay-submit onclick="editPassword()">确认修改</button>
                        </div>
                    </form>
                </div>

                <div class="layui-form layui-form-pane layui-tab-item">
                    <ul class="app-bind">
                        <li class="comm-msg app-havebind">
                            <i class="iconfont icon-qq"></i>
                            <span>已成功绑定，您可以使用QQ帐号直接登录comm社区，当然，您也可以</span>
                            <a href="javascript:;" class="acc-unbind" type="qq_id">解除绑定</a>

                            <!-- <a href="" onclick="layer.msg('正在绑定微博QQ', {icon:16, shade: 0.1, time:0})" class="acc-bind" type="qq_id">立即绑定</a>
                            <span>，即可使用QQ帐号登录comm社区</span> -->
                        </li>
                        <li class="comm-msg">
                            <i class="iconfont icon-weibo"></i>
                            <!-- <span>已成功绑定，您可以使用微博直接登录comm社区，当然，您也可以</span>
                            <a href="javascript:;" class="acc-unbind" type="weibo_id">解除绑定</a> -->

                            <a href="" class="acc-weibo" type="weibo_id"  onclick="layer.msg('正在绑定微博', {icon:16, shade: 0.1, time:0})" >立即绑定</a>
                            <span>，即可使用微博帐号登录comm社区</span>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
</div>
<script>


    function edit() {
        $("#id").val($.cookie("userId"));
        $.ajax({
            type: "POST",
            headers:{
                Accept: "application/json; charset=utf-8",
                token:$.cookie("token"),
                userId:$.cookie("userId")
            },
            dataType: 'json',
            async:false,
            url:"/user/edit",
            data:$('#edit').serialize(),
            success:function (data) {
                $.cookie('username',data.name, { expires: 7,path: '/' });
                alert("修改成功");
            },
            error:function (data) {
                alert("error");
            }

        });
    }

    function editPassword() {
        $("#id_pass").val($.cookie("userId"));
        $.ajax({
            type: "POST",
            headers:{
                Accept: "application/json; charset=utf-8",
                token:$.cookie("token"),
                userId:$.cookie("userId")
            },
            dataType: 'json',
            async:false,
            url:"/user/edit",
            data:{id:$.cookie("userId"),password:$("#L_pass").val()},
            success:function (data) {
                $.cookie('username',data.name, { expires: 7,path: '/' });
                alert("修改成功");
            },
            error:function (data) {
                alert("error");
            }

        });
    }


    layui.use('upload', function() {
        var $ = layui.jquery
                , upload = layui.upload;

        //普通图片上传
        var photo;
        var uploadInst = upload.render({
            elem: '#img_upload'
            ,url: '/user/upload?id='+$.cookie("userId")
            ,accept: 'file'
            ,before: function (obj) {
                //预读本地文件示例，不支持ie8
                obj.preview(function (index, file, result) {
                    $('#photo').attr('src', result); //图片链接（base64）
                    photo = result;
                   console.log(result);
                    //$('#photo').attr('src', result); //图片链接（base64）
                });
            }
            ,data:{id:$.cookie("userId"),photo:photo}
            , done: function (res){
                //如果上传失败
                // if (res.code ==200) {
                //     return layer.msg('上传失败');
                // }
                //上传成功
                $.cookie("photo",res.data.user.photo,'/');
                //alert(res.data.user.photo);
            }
            , error: function () {
                //演示失败状态，并实现重传
                var demoText = $('#demoText');
                demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
                demoText.find('.demo-reload').on('click', function () {
                    uploadInst.upload();
                });
            }
        });

    });
</script>
<#include "/common/footer.ftl">