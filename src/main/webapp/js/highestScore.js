// 加载学院和班级信息
$(function () {
    $.ajax({
        url:"http://localhost:8080/max/score",
        type:"Get",
        data:{
            "sex":"女"
        },
        success:function(result){
            if (result.code === -1)
                alert(result.message);
            else{
                var data = result.data;
                console.log(data);
                var tableHtml = "";
                for (var i=0;i<data.length;i++){
                    tableHtml = tableHtml + "<tr>"
                        + "<td>"+data[i].eventName+"</td>"
                        + "<td>"+data[i].user.classes.college.collegeName+"</td>"
                        + "<td>"+data[i].user.userName+"</td>"
                        + "<td>"+data[i].score+"</td>"
                        + "<td>"+data[i].date+"</td>"
                        + "</tr>";
                }
                $(".girlScore").html(tableHtml);
            }
        }
    });
    $.ajax({
        url:"http://localhost:8080/max/score",
        type:"Get",
        data:{
            "sex":"男"
        },
        success:function(result){
            if (result.code === -1)
                alert(result.message);
            else{
                var data = result.data;
                console.log(data);
                var tableHtml = "";
                for (var i=0;i<data.length;i++){
                    tableHtml = tableHtml + "<tr>"
                        + "<td>"+data[i].eventName+"</td>"
                        + "<td>"+data[i].user.classes.college.collegeName+"</td>"
                        + "<td>"+data[i].user.userName+"</td>"
                        + "<td>"+data[i].score+"</td>"
                        + "<td>"+data[i].date+"</td>"
                        + "</tr>";
                }
                $(".boyScore").html(tableHtml);
            }
        }
    });
});
