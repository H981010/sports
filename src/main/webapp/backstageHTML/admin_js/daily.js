$(function () {
    var data = {
        "signStatus":2
    };
    getWhereInfo(data);
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
                    + "<td>"+(i+1)+"</td>"
                    + "<td>"+data[i].eventName+"</td>"
                    + "<td>"+xianZhi+"</td>"
                    + "<td>"+type+"</td>"
                    + "<td>"+data[i].users.length+"</td>"
                    + "<td>"+data[i].groupRouteCount+"</td>"
                    + "<td>"+data[i].startTime+"</td>"
                    + "<td>"+data[i].place+"</td>"
                    + "<td><button class='not_start'>"+ state +"</button></td>"
                    + "<td class='td-manage'> <button class='btn_details' >修改状态</button> </td>"
                    + "</tr>";
            }
            $(".project_content").empty();
            $(".project_content").html(tableHtml);
        }
    }
});
