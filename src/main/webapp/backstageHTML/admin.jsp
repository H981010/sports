<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8">
        <title>管理员列表</title>
        <link rel="stylesheet" href="css/font.css">
        <link rel="stylesheet" href="css/index.css">
	    <link href="../css/bootstrap-select.min.css" rel="stylesheet">
    	<link href="../css/style.css" rel="stylesheet">
        <script src="./lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="./js/index.js"></script>
    </head>
    <body>
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body ">
                            <form class="layui-form layui-col-space5">
                            	<span id="">用户名：</span>
                                <div class="layui-inline layui-show-xs-block">
                                    <input type="text" name="username"  placeholder="请输入用户名" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-inline layui-show-xs-block">
                                    <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                                </div>
                            </form>
                        </div>
                        <div class="layui-card-header">
                            <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
                            <button class="layui-btn" onclick="xadmin.open('添加用户','adminadd.jsp',600,400)"><i class="layui-icon"></i>添加管理员</button>
                        </div>
                        <div class="layui-card-body ">
                            <table class="layui-table layui-form">
	                            <thead>
	                                <tr>
		                                  <th>
		                                    <input type="checkbox" name=""  lay-skin="primary">
		                                  </th>
		                                  <th>用户编号</th>
		                                  <th>用户名</th>
		                                  <th>联系电话</th>
		                                  <th>联系邮箱</th>
		                                  <th>角色</th>
		                                  <th>拥有权限规则</th>
		                                  <th>操作</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                                <tr>
		                                <td>
		                                    <input type="checkbox" name=""  lay-skin="primary">
		                                </td>
		                                <td>1</td>
		                                <td>yyq</td>
		                                <td>123456789</td>
		                                <td>123456789@qq.com</td>
		                                <td>管理员</td>
		                                <td>对运动员信息后台系统进行操作</td>
		                               	<td class="td-manage">
		                                    <a title="编辑" href="javascript:;" onclick="xadmin.open('编辑','adminedit.jsp','800','510')" class="btn btn-primary shadow btn-xs sharp mr-1"><i class="fa fa-pencil"></i></a>
											<a href="#" class="btn btn-danger shadow btn-xs sharp"><i class="fa fa-trash"></i></a>
		                                </td>
	                                </tr>
	                                <tr>
		                                <td>
		                                    <input type="checkbox" name=""  lay-skin="primary">
		                                </td>
		                                <td>1</td>
		                                <td>yyq</td>
		                                <td>123456789</td>
		                                <td>123456789@qq.com</td>
		                                <td>管理员</td>
		                                <td>对运动员信息后台系统进行操作</td>
		                               	<td class="td-manage">
		                                    <a title="编辑" href="javascript:;" onclick="xadmin.open('编辑','adminedit.jsp','800','510')" class="btn btn-primary shadow btn-xs sharp mr-1"><i class="fa fa-pencil"></i></a>
											<a href="#" class="btn btn-danger shadow btn-xs sharp"><i class="fa fa-trash"></i></a>
		                                </td>
	                                </tr>
	                            </tbody>
                            </table>
                        </div>
                        <div class="layui-card-body ">
                            <div class="page">
                                <div>
                                  <a class="prev" href="">&lt;&lt;</a>
                                  <a class="num" href="">1</a>
                                  <span class="current">2</span>
                                  <a class="num" href="">3</a>
                                  <a class="num" href="">489</a>
                                  <a class="next" href="">&gt;&gt;</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </body>
    <script>
      layui.use(['laydate','form'], function(){
        var laydate = layui.laydate;
        var form = layui.form;
        
        //执行一个laydate实例
        laydate.render({
          elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
          elem: '#end' //指定元素
        });
      });

       /*用户-停用*/
      function member_stop(obj,id){
          layer.confirm('确认要停用吗？',function(index){

              if($(obj).attr('title')=='启用'){

                //发异步把用户状态进行更改
                $(obj).attr('title','停用')
                $(obj).find('i').html('&#xe62f;');

                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已停用');
                layer.msg('已停用!',{icon: 5,time:1000});

              }else{
                $(obj).attr('title','启用')
                $(obj).find('i').html('&#xe601;');

                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');
                layer.msg('已启用!',{icon: 5,time:1000});
              }
              
          });
      }

      /*用户-删除*/
      function member_del(obj,id){
          layer.confirm('确认要删除吗？',function(index){
              //发异步删除数据
              $(obj).parents("tr").remove();
              layer.msg('已删除!',{icon:1,time:1000});
          });
      }



      function delAll (argument) {

        var data = tableCheck.getData();
  
        layer.confirm('确认要删除吗？'+data,function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
      }
    </script>
    <script>var _hmt = _hmt || []; (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
      })();</script>
</html>