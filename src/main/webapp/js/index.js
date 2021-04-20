$(function(){
    var date = new Date();
    console.log(date);
    $.ajax({
        url:"http://localhost:8080/event/get/info",
        type:"Get",
        data:{
            "startTime":date,
            "endTime":new Date("2021-12-12")
        },
        success:function(result){
            console.log(result);
            if (result.code === -1)
                alert(result.message);
            else{
                var data = result.data;
                var content = result.data.content;
                var tableHtml = "";
                for (var i=0;i<content.length;i++){
                    tableHtml = tableHtml + "<tr>"
                        + "<td>"+(i+1)+"</td>"
                        + "<td>"+content[i].eventName+"</td>"
                        + "<td>"+content[i].times+"</td>"
                        + "<td>"+content[i].users.length+"</td>"
                        + "<td>"+(parseInt(content[i].users.length/6) + 1) +"</td>"
                        + "<td>"+content[i].startTime+"</td>"
                        + "<td>"+content[i].place+"</td>"
                        + "</tr>";
                }
                $(".contentTable").html(tableHtml);
                console.log(data);
                console.log(data.content);
                console.log(data.pageable.pageNumber);
                console.log(data.pageable.pageSize);
                console.log(data.totalElements);
            }
        }
    });
});
