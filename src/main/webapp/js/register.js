// 加载学院和班级信息
$(function () {
    $.ajax({
        url:"http://localhost:8080/register/college",
        type:"Get",
        success:function(result){
            if (result.code === -1)
                alert(result.message);
            else{
                var data = result.data;
                var html = "";
                for (var i=0;i<data.length;i++){
                    html = html + "<option value="+ data[i].collegeId + ">" + data[i].collegeName + "</option>"
                }
                $(".college").html(html);
                $.ajax({
                    url:"http://localhost:8080/register/classes",
                    type:"Get",
                    data:{
                        "id":data[0].collegeId
                    },
                    success:function(result){
                        var data = result.data;
                        var html = "";
                        for (var i=0;i<data.length;i++){
                            html = html + "<option value="+ data[i].classesId + ">" + data[i].className + "</option>"
                        }
                        $(".classes").html(html);
                    }
                });
            }
        }
    });
    $(".college").change(function () {
        var college = $(this).val();
        $.ajax({
            url:"http://localhost:8080/register/classes",
            type:"Get",
            data:{
                "id":college
            },
            success:function(result){
                var data = result.data;
                var html = "";
                for (var i=0;i<data.length;i++){
                    html = html + "<option value="+ data[i].classesId + ">" + data[i].className + "</option>"
                }
                $(".classes").empty();
                $(".classes").html(html);
            }
        });
    });
    $(".confirm").change(function () {
        $.ajax({
            url:"http://localhost:8080/register/classes",
            type:"Get",
            data:{
                "jobNumber":$(".jobNumber").val(),
                "userName":$(".username").val(),
                "password":$(".password").val(),
                "collegeId":$(".college").val(),
                "classesId":$(".classes").val(),
                "email":$(".email").val(),
                "telephone":$(".telephone").val(),
                "sex":$(".sex").val(),
                "height":$(".height").val(),
                "weight":$(".weight").val(),
                "hobby":$(".hobby").val()
            },
            success:function(result){
               if (result.code == -1)
                   alert(result.message);
               else{
                   alert(result.message);
                   window.location.href = "../index.jsp"
               }
            }
        });
    });
});
