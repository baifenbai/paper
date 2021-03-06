<#include "/common/header.ftl">
<div class="layui-container comm-marginTop">
    <div class="comm-panel" pad20 style="padding-top: 5px;">
        <!--<div class="comm-none">没有权限</div>-->
        <div class="layui-form layui-form-pane">
            <div class="layui-tab layui-tab-brief" lay-filter="user">
                <ul class="layui-tab-title">
                    <li class="layui-this">发表新帖<!-- 编辑帖子 --></li>
                </ul>
                <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
                    <div class="layui-tab-item layui-show">
                        <form method="post" id="postTopic" onsubmit="return false">
                            <div class="layui-row layui-col-space15 layui-form-item">
                                    <div class="layui-col-md3">
                                        <label class="layui-form-label">所在专栏</label>
                                        <div class="layui-input-block">
                                            <select name="class" lay-filter="column">
                                                <option></option>
                                                <option value="0">提问</option>
                                                <option value="1">话题</option>
                                            </select>
                                        </div>
                                </div>
                                <div class="layui-col-md9">
                                    <label for="L_title" class="layui-form-label">标题</label>
                                    <div class="layui-input-block">
                                        <input type="text" id="L_title" name="title" required lay-verify="required" autocomplete="off" class="layui-input">
                                        <!-- <input type="hidden" name="id" value="{{d.edit.id}}"> -->
                                    </div>
                                </div>
                            </div>
                            <div class="layui-form-item layui-form-text">
                                <div class="layui-input-block">
                                    <textarea id="L_content" name="content" required lay-verify="required" placeholder="详细描述" class="layui-textarea fly-editor" style="height: 260px;"></textarea>
                                </div>
                            </div>
                            <div>
                                <input type="hidden" id="userId" name="userId">
                                <input type="hidden" name="dateTime" id ="date_topic">
                            </div>
                            <#--<div class="layui-form-item">-->
                                <#--<div class="layui-inline">-->
                                    <#--<label class="layui-form-label">悬赏飞吻</label>-->
                                    <#--<div class="layui-input-inline" style="width: 190px;">-->
                                        <#--<select name="experience">-->
                                            <#--<option value="20">20</option>-->
                                            <#--<option value="30">30</option>-->
                                            <#--<option value="50">50</option>-->
                                            <#--<option value="60">60</option>-->
                                            <#--<option value="80">80</option>-->
                                        <#--</select>-->
                                    <#--</div>-->
                                    <#--<div class="layui-form-mid layui-word-aux">发表后无法更改飞吻</div>-->
                                <#--</div>-->
                            <#--</div>-->
                            <#--<div class="layui-form-item">-->
                                <#--<label for="L_vercode" class="layui-form-label">人类验证</label>-->
                                <#--<div class="layui-input-inline">-->
                                    <#--<input type="text" id="L_vercode" name="vercode" required lay-verify="required" placeholder="请回答后面的问题" autocomplete="off" class="layui-input">-->
                                <#--</div>-->
                                <#--<div class="layui-form-mid">-->
                                    <#--<span style="color: #c00;">1+1=?</span>-->
                                <#--</div>-->
                            <#--</div>-->
                            <div class="layui-form-item">
                                <button class="layui-btn" lay-filter="*" onclick="posTopic();" lay-submit>立即发布</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function posTopic() {
        var date = new Date();
        $("#userId").val($.cookie("userId"));
        $("#date_topic").val(date.getTime());
        $.ajax({
            type: "POST",
            headers:{
                Accept: "application/json; charset=utf-8",
                token:$.cookie("token"),
                userId:$.cookie("userId")
            },
            dataType: 'json',
            async:false,
            url:"/user/addTopic",
            data:$('#postTopic').serialize(),
            success:function (data) {
                //var comment = data.data;
               window.location.href="/comment/detail/"+data.id;
            },
            error:function (data) {
                alert("error");
            }

        });
    }
</script>
<#include "/common/footer.ftl">