<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8">
        <title>修改管理员信息</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="css/font.css">
        <link rel="stylesheet" href="css/index.css">
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
                                <span class='x-red'>*</span>用户编号
                            </label>
                            <div class="layui-input-block">
                                <input type="text" name="name" autocomplete="off" class="layui-input" lay-verify="required" value="1">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>用户名
                            </label>
                            <div class="layui-input-block">
                                <input type="text" name="name" autocomplete="off" placeholder="yyq"
                                class="layui-input" lay-verify="required">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>联系电话
                            </label>
                            <div class="layui-input-block">
                                <input type="text" name="name" autocomplete="off" placeholder="123456789"
                                class="layui-input" lay-verify="required">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>联系邮箱
                            </label>
                            <div class="layui-input-block">
                                <input type="text" name="name" autocomplete="off" placeholder="123456789@qq.com"
                                class="layui-input" lay-verify="required">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>拥有权限规则
                            </label>
                            <div class="layui-input-block">
                                <input type="text" name="name" autocomplete="off" placeholder="对运动员信息后台系统进行操作"
                                class="layui-input" lay-verify="required">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <button class="layui-btn" lay-submit="" lay-filter="*">保存</button>
                        </div>
                    </form>
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