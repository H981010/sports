<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8">
        <title>添加比赛项目</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="css/font.css">
        <link rel="stylesheet" href="css/index.css">
        <script src="js/jquery.js"></script>
        <script src="admin_js/sportsEdit.js"></script>
        <script src="lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="js/index.js"></script>
    </head>
    <body>
    <div class="layui-card">
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">

            <div class="layui-tab-content" >
                <div class="layui-tab-item layui-show">
                    <form class="layui-form layui-form-pane" action="">
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>项目编号
                            </label>
                            <div class="layui-input-block">
                                <input type="text" id="eventId" name="projectNumber" class="layui-input" value="1" disabled style="background-color: #EBEAEA;">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>项目类别
                            </label>
                            <div class="layui-input-block">
                                <select id="projectType" name="projectType">
                                    <option value="0">田赛</option>
                                    <option value="1">径赛</option>
                                </select>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>项目名称
                            </label>
                            <div class="layui-input-block">
                                <input type="text" id="eventName" name="projectName" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>比赛时间
                            </label>
                            <div class="layui-input-block">
                                <input type="text" id="startTime" name="projectTime" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>比赛地点
                            </label>
                            <div class="layui-input-block">
                                <input type="text" id="place" name="projectPlace" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>项目限制
                            </label>
                            <div class="layui-input-block">
                                <label><input type="radio" name="projectLimit" value="0">女&nbsp;&nbsp;&nbsp;&nbsp;子</label>
                                <label><input type="radio" name="projectLimit" value="1">男&nbsp;&nbsp;&nbsp;&nbsp;子</label>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>报名状态
                            </label>
                            <div class="layui-input-block">
                                <label><input type="radio" name="signUpState" value="0">未开始</label>
                                <label><input type="radio" name="signUpState" value="1">报名中</label>
                                <label><input type="radio" name="signUpState" value="2">截止报名</label>
                            </div>
                        </div>
                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">项目说明</label>
                            <div class="layui-input-block">
                                <textarea placeholder="请输入内容" class="layui-textarea" id="description" name="info"></textarea>
                            </div>
                        </div>
                    </form>
                        <div class="layui-form-item">
                            <button id="update" class="layui-btn" lay-submit="" lay-filter="*">保存</button>
                        </div>
                    <div style="height:100px;"></div>
                </div>

              </div>
            </div> 
        </div>

        <script>
            layui.use(['element','layer','form'], function(){
                $ = layui.jquery;//jquery
              lement = layui.element();//面包导航
              layer = layui.layer;//弹出层
              form = layui.form()
                okLoading.close($);

              
             //监听提交
              form.on('submit(*)', function(data){
                var name = $("input[name=name]").val();
                if(name ==""){
                    layer.msg("文章分类名称不能为空！",{icon:5,time:2000});return false;
                }
                var data = data.field;
                $.ajax({
                    type:"post",
                    url:"",
                    data:data,
                    dataType:"json",
                    success:function (data) {
                        if(data.status==1){
                            layer.msg(data.info,{icon:1,time:1000});
                            setTimeout(function(){
                                window.parent.location.reload();
                                var index = parent.layer.getFrameIndex(window.name);
                                parent.layer.close(index);
                            },1000);
                            return false;
                        }else{
                            layer.msg(data.info,{icon:5,time:2000});return false;
                        }
                    }
                });
                return false;
              });

              })
        </script>
    </body>
</html>