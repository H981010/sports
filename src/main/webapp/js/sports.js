$(function () {
    getInfo();

    // 删除
    $(".project_content").on("click","#delete",function(){
        var eventId = $(this).attr("name");
        $.ajax({
            url:"http://localhost:8080/event/"+eventId,
            type:"Delete",
            success:function(result){
                if (result.code === -1)
                    alert(result.message);
                else{
                    alert("删除成功");
                    getInfo();
                }
            }
        });
    });
    // 跳转到详情页面
    $(".project_content").on("click","#info",function(){
        var id = $(this).attr("name");
        window.location.href = "dailyedit.jsp?id="+id;
    });

    // // 查询
    // $("#cat_id").change(function () {
    //     var select = $(this).attr("value");
    //     var data = getSelect(select);
    //     getWhereInfo(data);
    // });

    // 模糊查询
    $("#select").click(function () {
        // var select = $("#cat_id option:selected").attr("value");
        // var data = getSelect(select);
        var name = $("#inpMain").val();
        var data = {
            'eventName':name
        };
        getWhereInfo(data);
    });

    // 开通报名
    $("#kaiTong").click(function() {
        //获取标签
        var ck = $("input[type=checkbox]:checked");
        if (ck.length === 0) {
            alert("至少选择一条");
        } else {
            var eventIds = [];
            ck.each(function () {
                var eventId = $(this).val();
                if (eventId !== 'on')
                    eventIds.push(eventId);
            });
            $.ajax({
                url:"http://localhost:8080/event/pub",
                data: {
                    "ids[]":eventIds
                },
                type:"Post",
                success:function(result){
                    if (result.code === -1)
                        alert("开通失败："+result.message);
                    else{
                        alert("开通成功");
                        getInfo();
                    }
                }
            });
        }
    });

    // 关闭报名
    $("#guanBi").click(function() {
        //获取标签
        var ck = $("input[type=checkbox]:checked");
        if (ck.length === 0) {
            alert("至少选择一条");
        } else {
            var eventIds = [];
            ck.each(function () {
                var eventId = $(this).val();
                if (eventId !== 'on')
                    eventIds.push(eventId);
            });
            $.ajax({
                url:"http://localhost:8080/event/pub/no",
                data: {
                    "ids[]":eventIds
                },
                type:"Post",
                success:function(result){
                    if (result.code === -1)
                        alert("关闭失败："+result.message);
                    else{
                        alert("关闭成功");
                        getInfo();
                    }
                }
            });
        }
    });

    //批量删除
    $("#shanchu").click(function() {
       //获取标签
        var ck = $("input[type=checkbox]:checked");
        if(ck.length === 0) {
            alert("至少选择一条");
        }else{
            var eventIds = [];
            ck.each(function () {
                var eventId = $(this).val();
                if (eventId !== 'on')
                    eventIds.push(eventId);
            });
            alert(eventIds);
            $.ajax({
                url:"http://localhost:8080/event/delete",
                data: {
                    "eventIds[]":eventIds
                },
                type:"Delete",
                success:function(result){
                    if (result.code === -1)
                        alert("删除失败："+result.message);
                    else{
                        alert("删除成功");
                        getInfo();
                    }
                }
            });
        }

    });


    //全选-全不选
    var flag = true;
    $("#chkall").click(function() {
        var cb = $("input[type=checkbox]")
        for(var i = 0; i < cb.length; i++) {
            cb[i].checked = flag;
        }
        flag = !flag
    });



    function getInfo(){
        $.ajax({
            url:"http://localhost:8080/event/get/ready/info",
            type:"Get",
            success:function(result){
                success(result);
            }
        });
    }
    function getWhereInfo(data){
        $.ajax({
            url:"http://localhost:8080/event/get/where/info",
            data: data,
            type:"Get",
            success:function(result){
                success(result);
            }
        });
    }


    function success(result) {
        if (result.code === -1)
            alert(result.message);
        else{
            var data = result.data;
            console.log(data);
            var tableHtml = "";
            for (var i=0;i<data.length;i++){
                var type = '';
                if (data[i].type === 0)
                    type = '田赛';
                else
                    type = '径赛';
                var xianZhi = '';
                if (data[i].xianZhi === 0)
                    xianZhi = '女子';
                else
                    xianZhi = '男子';
                var state = '';
                if (data[i].state === 0)
                    state = '未开始';
                else if (data[i].state === 1)
                    state = '进行中';
                else
                    state = '已结束';
                var signStatus = '';
                if (data[i].signStatus === 0)
                    signStatus = '未开始';
                else if (data[i].signStatus === 1)
                    signStatus = '报名中';
                else
                    signStatus = '结束报名';
                tableHtml = tableHtml + "<tr>"
                    +"<td><input type='checkbox' name='checkbox[]' value='"+data[i].eventId+"' lay-skin=\"primary\"/></td>"
                    + "<td>"+(i+1)+"</td>"
                    + "<td>"+data[i].eventName+"</td>"
                    + "<td>"+xianZhi+"</td>"
                    // + "<td>"+data[i].description+"</td>"
                    + "<td>"+type+"</td>"
                    +"<td ><button class=\"going_on\">"+ signStatus +"</button></td>"
                    +"<td><button class=\"not_start\">"+ state +"</button></td>"
                    + "<td class=\"td-manage\">\n"
                    +"<div class=\"d-flex\">\n"
                    +"<a title=\"编辑\" href=\"javascript:;\" onclick=\"xadmin.open('修改比赛项目信息','sportsedit.jsp?id="+ data[i].eventId +"','800','510')\" class=\"btn btn-primary shadow btn-xs sharp mr-1\"><i class=\"fa fa-pencil\"></i></a>\n"
                    +"<button class=\"btn btn-danger shadow btn-xs sharp\" id = 'delete' name = '"+ data[i].eventId +"'><i class=\"fa fa-trash\"></i></button>\n"
                    +"</div>\n"
                    +"</td>"
                    + "</tr>";
            }
            $(".project_content").empty();
            $(".project_content").html(tableHtml);
        }
    }
    // function getSelect(select){
    //     var data = {};
    //     var name = $(".inpMain").val();
    //     if (select == 0){
    //         data = {
    //             'eventName':name
    //         };
    //     }
    //     else if (select == 1){
    //         data = {
    //             'type':1,
    //             'eventName':name
    //         };
    //     }else if (select == 2){
    //         data = {
    //             'type':0,
    //             'eventName':name
    //         };
    //     }else if (select == 3){
    //         data = {
    //             'xianzhi':2,
    //             'eventName':name
    //         };
    //     }else {
    //         data = {
    //             'xianzhi':1,
    //             'eventName':name
    //         };
    //     }
    //     return data;
    // }
});
