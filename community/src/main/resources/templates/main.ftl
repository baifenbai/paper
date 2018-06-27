<#include "/common/header.ftl">
<div class="comm-panel comm-column">
    <div class="layui-container" style="padding-top: 15px">
        <div class="comm-column-right layui-hide-xs">
            <input type="text" name="title" id="sc" required lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input comm-search">
            <a href="javascript:search();" class="layui-btn" id="search">搜索</a>
            <a href="jie/add.html" class="layui-btn">发表新帖</a>
        </div>
        <div class="layui-hide-sm layui-show-xs-block" style="margin-top: -10px; padding-bottom: 10px; text-align: center;">
            <a href="jie/add.html" class="layui-btn">发表新帖</a>
        </div>
    </div>
</div>
<div class="layui-container comm-content">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md8">
            <!--话题列表-->
            <div class="comm-topic">
                <div class="comm-panel">
                    <div class="layui-row layui-col-space15">
                        <div class="layui-col-md8">
                            <ul class="conmm-default comm-list" id="lst">

                            </ul>
                        </div>
                    </div>

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
                    </#list>
                <#else>
                    <div class="comm-none">没有相关数据</div>
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
    layui.config({
        version: '1515376178709' //为了更新 js 缓存，可忽略
    });

    layui.use(['laydate', 'laypage', 'element','flow'], function(){
        var laydate = layui.laydate //日期
                ,laypage = layui.laypage //分页
                ,element = layui.element; //元素操作

        var flow = layui.flow;//流加载

        var page = 0;
        flow.load({
            elem: '#lst' //流加载容器
            ,scrollElem: '#lst' //滚动条所在元素，一般不用填，此处只是演示需要。
            ,done: function(page, next){ //执行下一页的回调
                var data;
                $.ajax({
                    type: "POST",
                    dataType: 'json',
                    async:false,
                    url: "/comment/findComments?curr=" + (page-1) +"&"+ "size="+10 ,
                    data: { curr: 1, size:5 },
                    success:function(d){
                        data = d;
                    },
                    error:function (d) {
                        data = d;
                    }
                });
                var comms = data["comments"];
                var total  = data["totalPage"];
                page = page+1;

                var date = new Date();
                //模拟数据插入
                setTimeout(function(){

                    var lis = [];
                    for(var i = 0;i<comms.length;i++) {

                        date.setTime(comms[i].date);
                        var year = date.getFullYear();
                        var month = date.getMonth();
                        var day = date.getDay();
                        var dateFormat = year+"/"+month+"/"+day;

                        lis.push('<li>\n' +
'                                        <a href="comment/detail/' + comms[i].id + '" class="comm-avatar">\n' +
'                                            <img src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg" alt="贤心">\n' +
'                                        </a>\n' +
'                                        <h2>\n' +
'                                            <a class="layui-badge">动态</a>\n' +
'                                            <a href="/comment/detail/' + comms[i].id + '">' + comms[i].title + '</a>\n' +
'                                        </h2>\n' +
'                                        <div class="comm-list-info">\n' +
'                                            <span>' + dateFormat + '</span>\n' +
'                                            <span class="comm-list-kiss layui-hide-xs" title="同意"><i class="layui-icon" style="font-size: 15px; color: #1E9FFF;">&#xe6c6;</i> ' + comms[i].totalAgree + '</span>\n' +
'                                            <span class="comm-list-kiss layui-hide-xs" title="不同意"><i class="layui-icon" style="font-size: 15px; color: #1E9FFF;">&#xe6c5;</i>' + comms[i].totalDisagree + '</span>\n' +
'                                            <span class="comm-list-kiss layui-hide-xs" title="分享"><i class="layui-icon" style="font-size: 15px; color: #1E9FFF;">&#xe641;</i></span>\n' +
'                                            <span class="comm-list-nums"><i class="iconfont icon-pinglun1" title="回答"></i> ' + comms[i].totalAnswer + '</span>\n' +
'                                        </div>\n' +
'                                        <div class="comm-list-badge">\n' +
'                                            <!--\n' +
'                                            <span class="layui-badge layui-bg-black">置顶</span>\n' +
'                                            <span class="layui-badge layui-bg-red">精帖</span>\n' +
'                                            -->\n' +
'                                        </div>\n' +
'                                    </li>')
                    }
                    //执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
                    //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
                    next(lis.join(''), page < total);
                }, 500);
            }  //----------------
        });
    });

  function search() {
        var date = new Date();
        $.ajax({
            type: "POST",
            dataType: 'json',
            async:false,
            url: "/comment/search?key="+$("#sc").val(),
            success:function(comms){
                $("#lst").html("");
                for(var i=0;i<comms.length;i++){
                    date.setTime(comms[i].date);
                    var year = date.getFullYear();
                    var month = date.getMonth();
                    var day = date.getDay();
                    var dateFormat = year+"/"+month+"/"+day;
                    $("#lst").append('<li>\n' +
'                                        <a href="comment/detail/' + comms[i].id + '" class="comm-avatar">\n' +
'                                            <img src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg" alt="贤心">\n' +
'                                        </a>\n' +
'                                        <h2>\n' +
'                                            <a class="layui-badge">动态</a>\n' +
'                                            <a href="/comment/detail/' + comms[i].id + '">' + comms[i].title + '</a>\n' +
'                                        </h2>\n' +
'                                        <div class="comm-list-info">\n' +
'                                            <span>' + dateFormat + '</span>\n' +
'                                            <span class="comm-list-kiss layui-hide-xs" title="同意"><i class="layui-icon" style="font-size: 15px; color: #1E9FFF;">&#xe6c6;</i> ' + comms[i].totalAgree + '</span>\n' +
'                                            <span class="comm-list-kiss layui-hide-xs" title="不同意"><i class="layui-icon" style="font-size: 15px; color: #1E9FFF;">&#xe6c5;</i>' + comms[i].totalDisagree + '</span>\n' +
'                                            <span class="comm-list-kiss layui-hide-xs" title="分享"><i class="layui-icon" style="font-size: 15px; color: #1E9FFF;">&#xe641;</i></span>\n' +
'                                            <span class="comm-list-nums"><i class="iconfont icon-pinglun1" title="回答"></i> ' + comms[i].totalAnswer + '</span>\n' +
'                                        </div>\n' +
'                                        <div class="comm-list-badge">\n' +
'                                            <!--\n' +
'                                            <span class="layui-badge layui-bg-black">置顶</span>\n' +
'                                            <span class="layui-badge layui-bg-red">精帖</span>\n' +
'                                            -->\n' +
'                                        </div>\n' +
'                                    </li>');
                }
            },
            error:function (d) {
            }
        });
    }

</script>
<#include "/common/footer.ftl">
