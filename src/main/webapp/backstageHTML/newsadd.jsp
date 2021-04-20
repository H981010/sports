<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="x-admin-sm">
	<head>
	    <meta charset="UTF-8">
	    <title>发布新闻</title>
	    <link rel="stylesheet" href="css/notice.css">
	    <link rel="stylesheet" href="css/summernote-bs4.css" >
	    <link rel="stylesheet" href="css/starlight.css">
	    <script src="lib/layui/layui.js" charset="utf-8"></script>
	    <script type="text/javascript" src="js/index.js"></script>
	</head>
	<body>
		<div class="layui-fluid">
		    <div class="layui-row layui-col-space15">
		        <div class="layui-col-md12">
		            <div class="layui-card">
		                <div class="layui-card-body layui-table-body layui-table-main">
		                   <form class="layui-form layui-form-pane" action="">
		                        <div class="layui-form-item">
		                            <label class="layui-form-label">
		                                <span class='x-red'>*</span>新闻标题
		                            </label>
		                            <div class="layui-input-block">
		                                <input type="text" name="name" autocomplete="off"
		                                class="layui-input" lay-verify="required">
		                            </div>
		                        </div>
		                        <div class="layui-form-item">
		                            <label class="layui-form-label">
		                                <span class='x-red'>*</span>发布人
		                            </label>
		                            <div class="layui-input-block">
		                                <input type="text" name="name" autocomplete="off"
		                                class="layui-input" lay-verify="required">
		                            </div>
		                        </div>
		                        <div class="layui-form-item">
		                            <label class="layui-form-label">
		                                <span class='x-red'>*</span>发布时间
		                            </label>
		                            <div class="layui-input-block">
		                                <input type="text" name="name" autocomplete="off"
		                                class="layui-input" lay-verify="required">
		                            </div>
		                        </div>
		                        <div class="layui-form-item">
		                            <label class="layui-form-label">
		                                <span class='x-red'>*</span>上传图片
		                            </label>
		                            <div class="layui-input-block" style="margin-left: 50px;">
		                                <input type="file" id="exampleInputFile">
		                            </div>
		                        </div>
		                        <div class="layui-form-item layui-form-text">
		                            <label class="layui-form-label">公告内容</label>
									<div id="summernote">Hello, universe!</div>
		                        </div>
		                        <div class="layui-form-item">
		                            <button class="layui-btn" lay-submit="" lay-filter="*">提交</button>
		                        </div>
                    		</form> 
		                </div>
		            </div>
		        </div>
		    </div>
		</div>

	</body>
	<script>
	    layui.use(['laydate','form'], function(){
	        var laydate = layui.laydate;
	        var  form = layui.form;
	        // 监听全选
	        form.on('checkbox(checkall)', function(data){
	
	            if(data.elem.checked){
	                $('tbody input').prop('checked',true);
	            }else{
	                $('tbody input').prop('checked',false);
	            }
	            form.render('checkbox');
	        });
	
	        //执行一个laydate实例
	        laydate.render({
	            elem: '#start' //指定元素
	        });
	        //执行一个laydate实例
	        laydate.render({
	            elem: '#end' //指定元素
	        });
	    });
	
	    /*用户-删除*/
	    function member_del(obj,id){
	        layer.confirm('确认要删除吗？',function(index){
	            //发异步删除数据
	            $(obj).parents("tr").remove();
	            layer.msg('已删除!',{icon:1,time:1000});
	        });
	    }
	    function delAll (argument) {
	        var ids = [];
	
	        // 获取选中的id
	        $('tbody input').each(function(index, el) {
	            if($(this).prop('checked')){
	                ids.push($(this).val())
	            }
	        });
	
	        layer.confirm('确认要删除吗？'+ids.toString(),function(index){
	            //捉到所有被选中的，发异步进行删除
	            layer.msg('删除成功', {icon: 1});
	            $(".layui-form-checked").not('.header').parents('tr').remove();
	        });
	    }
	</script>
    <script src="js/jquery.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/perfect-scrollbar.jquery.js"></script>
    <script src="js/medium-editor.js"></script>
    <script src="js/summernote-bs4.min.js"></script>
    <script src="js/starlight.js"></script>
    <script>
      $(function(){
        'use strict';

        // Inline editor
        var editor = new MediumEditor('.editable');

        // Summernote editor
        $('#summernote').summernote({
          height: 150,
          tooltip: false
        })
      });
    </script>
</html>