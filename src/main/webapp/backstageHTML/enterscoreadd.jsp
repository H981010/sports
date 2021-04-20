<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8">
        <title>录入成绩</title>
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
                                <span class='x-red'>*</span>项目编号
                            </label>
                            <div class="layui-input-block">
                            	<select name="">
                            		<option value="1">---选择项目编号---</option>
                            		<option value="1">01</option>
                            		<option value="2">02</option>
                            		<option value="3">03</option>
                            		<option value="4">04</option>
                            		<option value="5">05</option>
                            	</select>
                                <!--<input type="text" name="name" autocomplete="off" class="layui-input" lay-verify="required" value="">-->
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>项目名称
                            </label>
                            <div class="layui-input-block">
                            	<select name="">
                            		<option value="1">---选择项目名称---</option>
                            		<option value="1">女子100米</option>
                            		<option value="2">男子100米</option>
                            		<option value="3">女子跳远</option>
                            		<option value="4">男子跳远</option>
                            		<option value="5">男子后抛实心球</option>
                            	</select>
                                <!--<input type="text" name="name" autocomplete="off" class="layui-input" lay-verify="required" value="">-->
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>学号
                            </label>
                            <div class="layui-input-block">
                                <input type="text" name="name" autocomplete="off" class="layui-input" lay-verify="required" value="">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>姓名
                            </label>
                            <div class="layui-input-block">
                                <input type="text" name="name" autocomplete="off" class="layui-input" lay-verify="required" value="">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                                <span class='x-red'>*</span>学院
                            </label>
                            <div class="layui-input-block">
                            	<select name="">
                            		<option value="1">---选择所属学院---</option>
                            		<option value="1">启迪数字学院</option>
                            		<option value="2">计通学院</option>
                            		<option value="3">土建学院</option>
                            		<option value="4">生化学院</option>
                            		<option value="5">理学院</option>
                            	</select>
                                <!--<input type="text" name="name" autocomplete="off" class="layui-input" lay-verify="required" value="启迪数字学院">-->
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                            	<span class='x-red'>*</span>班级
                            </label>
                            <div class="layui-input-block">
                            	<select name="">
                            		<option value="1">---选择所属班级---</option>
                            		<option value="1">软件Q171班</option>
                            		<option value="2">软件Q172班</option>
                            		<option value="3">软件Q173班</option>
                            		<option value="4">软件Q174班</option>
                            		<option value="5">软件Q175班</option>
                            	</select>
                                <!--<input type="text" name="name" autocomplete="off" class="layui-input" lay-verify="required" value="软件Q171班">-->
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">
                            	<span class='x-red'>*</span>成绩
                            </label>
                            <div class="layui-input-block">
                                <input type="text" name="name" autocomplete="off" class="layui-input" lay-verify="required" value="">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <button class="layui-btn" lay-submit="" lay-filter="*">提交</button>
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