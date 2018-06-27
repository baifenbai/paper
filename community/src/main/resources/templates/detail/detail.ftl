<#include "/common/header.ftl">
<div class="layui-container comm-content">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md8">
            <class="layui-col-md8 content detail">
            <div class="comm-panel detail-box">
                <h1>${comment.title}</h1>
                <div class="comm-detail-info">
                    <!-- <span class="layui-badge">审核中</span> -->
                    <span class="layui-badge layui-bg-green comm-detail-column">动态</span>

                    <span class="layui-badge" style="background-color: #999;">未结</span>
                    <!-- <span class="layui-badge" style="background-color: #5FB878;">已结</span>

                    <span class="layui-badge layui-bg-black">置顶</span>
                    <span class="layui-badge layui-bg-red">精帖</span> -->

                    <div class="comm-admin-box" data-id="123">
                        <span class="layui-btn layui-btn-xs jie-admin" type="del">删除</span>

                        <span class="layui-btn layui-btn-xs jie-admin" type="set" field="stick" rank="1">置顶</span>
                        <!-- <span class="layui-btn layui-btn-xs jie-admin" type="set" field="stick" rank="0" style="background-color:#ccc;">取消置顶</span> -->

                        <span class="layui-btn layui-btn-xs jie-admin" type="set" field="status" rank="1">加精</span>
                        <!-- <span class="layui-btn layui-btn-xs jie-admin" type="set" field="status" rank="0" style="background-color:#ccc;">取消加精</span> -->
                    </div>
                    <span class="comm-list-nums">
            <a href="#comment"><i class="iconfont" title="回答">&#xe60c;</i> 66</a>
            <i class="iconfont" title="人气">&#xe60b;</i> 99999
          </span>
                </div>
                <div class="detail-about">
                    <a class="comm-avatar" href="../user/home.html">
                        <img src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg" alt="贤心">
                    </a>
                    <div class="comm-detail-user">
                        <a href="../user/home.html" class="comm-link">
                            <cite>贤心</cite>
                            <i class="iconfont icon-renzheng" title="认证信息：{{ rows.user.approve }}"></i>
                            <i class="layui-badge comm-badge-vip">VIP3</i>
                        </a>
                        <span>2017-11-30</span>
                    </div>
                    <div class="detail-hits" id="LAY_jieAdmin" data-id="123">
                        <span style="padding-right: 10px; color: #FF7200">悬赏：60飞吻</span>
                        <span class="layui-btn layui-btn-xs jie-admin" type="edit"><a href="add.html">编辑此贴</a></span>
                    </div>
                </div>
                <div class="detail-body photos">
                    <p>${comment.content}</p>
                    <img src="../../res/images/fly.jpg" alt="Fly社区">
                </div>
            </div>

            <div class="comm-panel detail-box" id="flyReply">
                <fieldset class="layui-elem-field layui-field-title" style="text-align: center;">
                    <legend>回帖</legend>
                </fieldset>

                <ul class="jieda" id="jieda">
                <#if comments?exists>
                    <#list comments as item>
                    <li data-id="111" class="jieda-daan">
                        <a name="item-1111111111"></a>
                        <div class="detail-about detail-about-reply">
                            <a class="comm-avatar" href="">
                                <img src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg" alt=" ">
                            </a>
                            <div class="comm-detail-user">
                                <a href="" class="comm-link">
                                    <cite>${user.name}</cite>
                                    <i class="iconfont icon-renzheng" title="认证信息：XXX"></i>
                                    <i class="layui-badge comm-badge-vip">VIP3</i>
                                </a>

                                <span>(楼主)</span>
                                <!--
                                <span style="color:#5FB878">(管理员)</span>
                                <span style="color:#FF9E3F">（社区之光）</span>
                                <span style="color:#999">（该号已被封）</span>
                                -->
                            </div>

                            <div class="detail-hits">
                                <span></span>
                            </div>

                            <i class="iconfont icon-caina" title="最佳答案"></i>
                        </div>
                        <div class="detail-body jieda-body photos">
                            <p>${item.content}</p>
                        </div>
                        <div class="jieda-reply">
              <span class="jieda-zan zanok" type="zan" title="${item.id}">
                <i class="iconfont icon-zan"></i>
                <em>${item.totalAgree}</em>
              </span>
                            <span type="reply">
                <i class="iconfont icon-svgmoban53"></i>
                回复
              </span>
                            <div class="jieda-admin">
                                <span type="edit">编辑</span>
                                <span type="del">删除</span>
                                <!-- <span class="jieda-accept" type="accept">采纳</span> -->
                            </div>
                        </div>
                    </li>
                    </#list>

                </#if>
                <#if (comments?size< 1)>
                <!-- 无数据时 -->
                 <li class="comm-none">消灭零回复</li>
                </#if>

                </ul>

                <div class="layui-form layui-form-pane">
                    <form id="replay" onsubmit="return false" method="post">
                        <div class="layui-form-item layui-form-text">
                            <a name="comment"></a>
                            <div class="layui-input-block">
                                <textarea id="repaly" name="content" required lay-verify="required" placeholder="请输入内容"  class="layui-textarea comm-editor" style="height: 150px;"></textarea>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <input type="hidden" name="parentId" value="${comment.id}">
                            <input type="hidden" name="userId" id ="userId">
                            <input type="hidden" name="dateTime" id ="datetime">
                            <button type="button" class="layui-btn" lay-filter="*" onclick="replay();" lay-submit>提交回复</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="layui-col-md4">
            <!--本月热议-->
            <dl class="comm-panel comm-list-one">
                <dt class="comm-panel-title"><h3>本月热议</h3></dt>
            <#if hot?exists>
                <#list hot as comment>
                    <dd>
                        <a href="/comment/detail/${comment.id}">${comment.title}</a>
                        <span><i class="iconfont icon-pinglun1"></i> 16</span>
                    </dd>
                <#else>
                    <#--<div class="comm-none">没有相关数据</div>-->
                </#list>
            </#if>
            </dl>
            <div class="comm-panel">
                <div class="comm-panel-main" style="text-align:center;">
                    <div><img src="/pic/mobai.jpg" style="width: 90%;height: 90%;"></div>
                    <a href="http://layim.layui.com/?from=fly" target="_blank" class="comm-zanzhu" time-limit="2017.09.25-2099.01.01">摩拜单车，快乐出行</a>
                </div>
            </div>

            <div class="comm-panel comm-link">
                <h3 class="comm-panel-title">友情链接</h3>
                <dl class="comm-panel-main" style="font-size: 10;line-height: 24px;position: relative;padding-left:13px;flex-direction: ;">
                    <dd><a href=https://www.zhihu.com/" target="_blank"><span >知乎-发现更大的世界</span></a><dd>
                    <dd><a href="https://tieba.baidu.com/" target="_blank">百度贴吧-全球最大的中文社区</a><dd>
                    <dd><a href="https://www.csdn.net/" target="_blank">CSDN-专业IT技术社区</a><dd>
                    <dd><a href="https://segmentfault.com/" target="_blank">开发社区-segmentfault-SegementFault思否</a><dd>
                </dl>
            </div>
        </div>
    </div>
</div>


<script>

    //表单提交
    function replay() {
        var date = new Date();
        $("#userId").val($.cookie("userId"));
        $("#datetime").val(date.getTime());
        $.ajax({
            type: "POST",
            headers:{
                Accept: "application/json; charset=utf-8",
                token:$.cookie("token"),
                userId:$.cookie("userId")
            },
            dataType: 'json',
            async:true,
            url: "/comment/addComment",
            data: $('#replay').serialize(),
            success:function(data){
                setTimeout(function(){
                    $('#jieda').append('<li data-id="111" class="jieda-daan">\n' +
'                        <a name="item-1111111111"></a>\n' +
'                        <div class="detail-about detail-about-reply">\n' +
'                            <a class="comm-avatar" href="">\n' +
'                                <img src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg" alt=" ">\n' +
'                            </a>\n' +
'                            <div class="comm-detail-user">\n' +
'                                <a href="" class="comm-link">\n' +
'                                    <cite>'+"用戶"+'</cite>\n' +
'                                    <i class="iconfont icon-renzheng" title="认证信息：XXX"></i>\n' +
'                                    <i class="layui-badge comm-badge-vip">VIP3</i>\n' +
'                                </a>\n' +
'                                <span>(楼主)</span>\n' +
'                                <!--\n' +
'                                <span style="color:#5FB878">(管理员)</span>\n' +
'                                <span style="color:#FF9E3F">（社区之光）</span>\n' +
'                                <span style="color:#999">（该号已被封）</span>\n' +
'                                -->\n' +
'                            </div>\n' +
'\n' +
'                            <div class="detail-hits">\n' +
'                                <span>'+11+'</span>\n' +
'                            </div>\n' +
'\n' +
'                            <i class="iconfont icon-caina" title="最佳答案"></i>\n' +
'                        </div>\n' +
'                        <div class="detail-body jieda-body photos">\n' +
'                            <p>'+data.content+'</p>\n' +
'                        </div>\n' +
'                        <div class="jieda-reply">\n' +
'              <span class="jieda-zan zanok" type="zan">\n' +
'                <i class="iconfont icon-zan"></i>\n' +
'                <em id="">'+data.totalAgree+'</em>\n' +
'              </span>\n' +
'                            <span type="reply">\n' +
'                <i class="iconfont icon-svgmoban53"></i>\n' +
'                回复\n' +
'              </span>\n' +
'                            <div class="jieda-admin">\n' +
'                                <span type="edit">编辑</span>\n' +
'                                <span type="del">删除</span>\n' +
'                                <!-- <span class="jieda-accept" type="accept">采纳</span> -->\n' +
'                            </div>\n' +
'                        </div>\n' +
'                    </li>')
                }, 500);
            },
            error:function (data) {
                alert("error");
            }
        });
    }

    //点赞功能
    $(".zanok").click(function() {
        var d;
        $.ajax({
            type: "GET",
            headers:{
                Accept: "application/json; charset=utf-8",
                token:$.cookie("token"),
                userId:$.cookie("userId")
             },
            async:false,
            url:"/comment/agree?id=" + this.title,   //title裡面方的id
            dataType:"JSON",
            success: function(data){
                d=data;
            },
            error:function(data) {
                alert("error"+$.cookie("userId"));
        }
        });
        $(this).html('<i class="iconfont icon-zan"></i>\n' +
                '                <em>'+d+'</em>')
    });

    layui.config({
        version: '1515376178709' //为了更新 js 缓存，可忽略
    });

    layui.use(['laydate', 'laypage', 'form','flow','element'], function(){
        var laydate = layui.laydate //日期
                ,laypage = layui.laypage //分页
                ,form = layui.form //表格
                ,flow = layui.flow;//流加载

        // //监听提交
        // form.on('submit(formDemo)', function(data){
        //         alert(data);
        // });


        // 监听Tab切换
        // element.on('tab(demo)', function(data){
        //     layer.msg('切换了：'+ this.innerHTML);
        //     console.log(data);
        // });

        // //监听工具条
        // table.on('tool(demo)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
        //     var data = obj.data //获得当前行数据
        //             ,layEvent = obj.event; //获得 lay-event 对应的值
        //     if(layEvent === 'detail'){
        //         layer.msg('查看操作');
        //     } else if(layEvent === 'del'){
        //         layer.confirm('真的删除行么', function(index){
        //             obj.del(); //删除对应行（tr）的DOM结构
        //             layer.close(index);
        //             //向服务端发送删除指令
        //         });
        //     } else if(layEvent === 'edit'){
        //         layer.msg('编辑操作');
        //     }
        // });

        flow.load({
            elem: '#LAY_demo1' //流加载容器
            ,scrollElem: '#LAY_demo1' //滚动条所在元素，一般不用填，此处只是演示需要。
            ,done: function(page, next){ //执行下一页的回调

                //模拟数据插入
                setTimeout(function(){
                    var lis = [];
                    for(var i = 0; i < 8; i++){
                        lis.push('<li>'+ ( (page-1)*8 + i + 1 ) +'</li>')
                    }

                    //执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
                    //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
                    next(lis.join(''), page < 10); //假设总页数为 10
                }, 500);
            }
        });
    });
</script>
<#include "/common/footer.ftl">
