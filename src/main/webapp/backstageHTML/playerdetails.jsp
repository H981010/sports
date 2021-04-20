<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8">
        <title>运动员参赛项目</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="css/font.css">
        <link rel="stylesheet" href="css/index.css">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <script src="./lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="./js/index.js"></script>
    </head>
    <body>
        <div class="layui-card">
            <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">

              <div class="layui-tab-content" >
                <div class="layui-tab-item layui-show">
                    <form class="layui-form layui-form-pane" action="">
                        <table class="table table-hover">
                        	<tr>
                        		<th>序号</th>
                        		<th>姓名</th>
                        		<th>参赛项目</th>
                        		<th>比赛时间</th>
                        		<th>比赛地点</th>
                        	</tr>
                        	<tr>
                        		<td>01</td>
                        		<td>yyq</td>
                        		<td>女子100米</td>
                        		<td>2020年11月2日 8:20</td>
                        		<td>田径场</td>
                        	</tr>
                        	<tr>
                        		<td>02</td>
                        		<td>yyq</td>
                        		<td>女子400米</td>
                        		<td>2020年11月2日 9:30</td>
                        		<td>田径场</td>
                        	</tr>
                        	<tr>
                        		<td>03</td>
                        		<td>yyq</td>
                        		<td>女子跳高</td>
                        		<td>2020年11月2日 8:20</td>
                        		<td>田径场</td>
                        	</tr>
                        </table>
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