//加载最高纪录信息
$(function () {
    $.ajax({
            url:"http://localhost:8080/highestRecord/allRecord",
            type:"Get",
            success:function(result){

            }
        }
    )
})