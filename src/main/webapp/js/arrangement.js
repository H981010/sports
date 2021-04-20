// 加载学院和班级信息
$(function () {
    $.ajax({
        url:"http://localhost:8080/event/get/ready/info",
        type:"Get",
        success:function(result){
            if (result.code === -1)
                alert(result.message);
            else{
                var data = result.data;
                console.log(data);
                var tableHtml = "";
                for (var i=0;i<data.length;i++){
                    var groups = parseInt(data[i].users.length/6);
                    tableHtml = tableHtml + "<tr>"
                        + "<td>"+(i+1)+"</td>"
                        + "<td>"+data[i].eventName+"</td>"
                        + "<td>"+data[i].users.length+"</td>"
                        + "<td>"+(groups === 0 && data[i].users.length === 0 ? 0 : groups+1) +"</td>"
                        + "<td>"+data[i].times+"</td>"
                        + "<td>"+data[i].startTime+"</td>"
                        + "<td>"+data[i].place+"</td>"
                        + "</tr>";
                }
                $(".arrangement_content").html(tableHtml);
            }
        }
    });
});
