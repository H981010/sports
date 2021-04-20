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
        <link rel="stylesheet" href="./css/font.css">
        <link rel="stylesheet" href="./css/index.css">
        <script src="js/jquery.js"></script>
        <script src="./lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="./js/index.js"></script>
        <script src="admin_js/sportsAdd.js"></script>
    </head>
    <body>
    <div class="layui-card">
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">

            <div class="layui-tab-content" >
                <div class="layui-tab-item layui-show">
                    <form class="layui-form layui-form-pane" action="">
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
                                <label><input type="radio" name="projectLimit" value="0">女子</label>
                                <label><input type="radio" name="projectLimit" value="1">男子</label>
                            </div>
                        </div>

                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">项目说明</label>
                            <div class="layui-input-block">
                                <textarea placeholder="请输入内容" id="description" class="layui-textarea" name="info"></textarea>
                            </div>
                        </div>
                    </form>
                    <div class="layui-form-item">
                            <button class="layui-btn" lay-submit="" lay-filter="*" id="addEvent">提交</button>
                    </div>
                    <div style="height:100px;"></div>
                </div>

            </div>
        </div>
    </div>

    <script>
        layui.use(['form'], function () {
            var upload = layui.upload;
            var form = layui.form;
            //此处即为 radio 的监听事件
            form.on('radio(levelM)', function(data){
                console.log(data.elem); //得到radio原始DOM对象
                console.log(data.value); //被点击的radio的value值
                var level = data.value;//被点击的radio的value值
                $(".sel-parent-msg").hide();
                $(".sel-parent-msg-"+level).show();
            });
        });
    </script>
    </body>
</html>