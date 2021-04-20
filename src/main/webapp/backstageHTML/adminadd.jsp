<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8">
        <title>添加管理员</title>
        <link rel="stylesheet" href="css/font.css">
        <link rel="stylesheet" href="css/index.css">
        <link rel="stylesheet" type="text/css" href="../css/style.css"/>
	    <link href="../css/lightgallery.min.css" rel="stylesheet">
        <script src="lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="js/index.js"></script>
        <script src="../js/dlabnav-init.js"></script>
		<script src="../js/global.min.js"></script>
	    <script src="../js/custom.min.js"></script>
    </head>
    <body>
        <div class="layui-card">
            <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">

              <div class="layui-tab-content" >
                <div class="layui-tab-item layui-show">
                    <div class="card">
	                            <div class="card-body">
	                                <div class="profile-tab">
	                                    <div class="custom-tab-1">
	                                        <ul class="nav nav-tabs">
	                                            <li class="nav-item"><a href="#my-posts" data-toggle="tab" class="nav-link active show">新增管理员</a></li>
	                                            <li class="nav-item"><a href="#about-me" data-toggle="tab" class="nav-link">管理员权限</a></li>
	                                        </ul>
	                                        <div class="tab-content">
	                                            <div id="my-posts" class="tab-pane fade active show">
	                                                <form class="layui-form layui-form-pane" action="">
	                                                	<div class="layui-form-item">
								                            <label class="layui-form-label">
								                                <span class='x-red'>*</span>用户名
								                            </label>
								                            <div class="layui-input-block">
								                                <input type="text" name="name" autocomplete="off" 
								                                class="layui-input" lay-verify="required">
								                            </div>
								                        </div>
								                        <div class="layui-form-item">
								                            <label class="layui-form-label">
								                                <span class='x-red'>*</span>初始密码
								                            </label>
								                            <div class="layui-input-block">
								                                <input type="text" name="name" autocomplete="off" 
								                                class="layui-input" lay-verify="required">
								                            </div>
								                        </div>
								                        <div class="layui-form-item">
								                            <label class="layui-form-label">
								                                <span class='x-red'>*</span>联系电话
								                            </label>
								                            <div class="layui-input-block">
								                                <input type="text" name="name" autocomplete="off" 
								                                class="layui-input" lay-verify="required">
								                            </div>
								                        </div>
								                        <div class="layui-form-item">
								                            <label class="layui-form-label">
								                                <span class='x-red'>*</span>联系邮箱
								                            </label>
								                            <div class="layui-input-block">
								                                <input type="text" name="name" autocomplete="off" 
								                                class="layui-input" lay-verify="required">
								                            </div>
								                        </div>
	                                                	<div class="layui-form-item">
								                            <button class="layui-btn" lay-submit="" lay-filter="*">提交</button>
								                        </div>
	                                                </form>
	                                            </div>
	                                            <div id="about-me" class="tab-pane fade">
	                                            	<form class="layui-form layui-form-pane" action="">
	                                            		<table class="layui-table layui-form">
									                    <thead>
										                    <tr>
											                    <th>用户编号</th>
											                    <th>用户名</th>
											                   	<th>联系电话</th>
											                    <th>联系邮箱</th>
											                    <th>管理员权限</th>
										                    </tr>
									                    </thead>
									                    <tbody>
									                        <tr>
									                        	<td>01</td>
									                        	<td>伍冰如</td>
									                        	<td>18624560936</td>
									                        	<td>1248756093@qq.com</td>
									                        	<td><input type="checkbox" name=""  lay-skin="primary"></td>
									                        </tr>
									                        <tr>
									                        	<td>02</td>
									                        	<td>谢明芳</td>
									                        	<td>18629368903</td>
									                        	<td>1248756093@qq.com</td>
									                        	<td><input type="checkbox" name=""  lay-skin="primary"></td>
									                        </tr>
									                        <tr>
									                        	<td>03</td>
									                        	<td>曾小洋</td>
									                        	<td>18624564563</td>
									                        	<td>1248756093@qq.com</td>
									                        	<td><input type="checkbox" name=""  lay-skin="primary"></td>
									                        </tr>
									                    </tbody>
	                                                </table>
	                                            		<div class="layui-form-item">
									                        <button class="layui-btn" lay-submit="" lay-filter="*">确定</button>
									                    </div>
	                                            	</form>
	                                            	
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
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