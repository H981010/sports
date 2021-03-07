$(function(){
    $(".submit_btn").click(function () {
        var username = $("#username").val();
        var password = $("#password").val();
        $.ajax({
            url:"http://localhost:8080/login/in",
            type:"Get",
            data:{
                "jobNumber": username,
                "password": password
            },
            success:function(result){
                if (result.code == -1)
                    alert(result.message);
                else{
                    alert(result.message);
                    window.location.href="../index.jsp";
                }
            }});
    });
    $(".register").click(function () {
        window.location.href="../register.jsp";
    })
});
