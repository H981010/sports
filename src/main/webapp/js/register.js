
jQuery(document).ready(function() {

    /*
        背景幻灯片
    */
    $.backstretch([
      "img/register1.jpg"
    , "img/register1.jpg"
    , "img/register1.jpg"
    ], {duration: 3000, fade: 750});

     //错误提示
     $(function () {
      var errMsg;
      $.each($("input"), function (i, val) {
        $(val).blur(function () {
          if($(val).attr("name") == "jobNumber") {
            $(".nickMsg").remove();
            var jobnumber = val.value;
            var regName = /\b\d{12}\b/
            if (jobnumber == "" || jobnumber.trim() == "") {
              errMsg = "<span class='nickMsg' style='color:red;margin-left: 75px;'>工号不能为空</span>";
            } else if (!regName.test(jobnumber)) {
              errMsg = "<span class='nickMsg' style='color:red;margin-left: 75px;'>由12位数字组成</span>";
            }
            $(this).parent().append(errMsg);
          } else if ($(val).attr("name") == "password") {
            $(".pwdMsg").remove();
            var password = val.value;
            var regPwd = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/;
            if (password == "" || password.trim() == "") {
              errMsg = "<span class='pwdMsg' style='color:red;margin-left: 75px;'>密码不能为空</span>";
            } else if (!regPwd.test(password)) {
              errMsg = "<span class='pwdMsg' style='color:red;margin-left: 75px;'>密码由英文字母和数字组成的8-16位字符</span>";
            } 
            $(this).parent().append(errMsg);
          } else if($(val).attr("name") == "username") {
            $(".nickMsg").remove();
            var username = val.value;
            var regName = /[\u4e00-\u9fa5]{2,6}/
            if (username == "" || username.trim() == "") {
              errMsg = "<span class='nickMsg' style='color:red;margin-left: 75px;'>姓名不能为空</span>";
            } else if (!regName.test(username)) {
              errMsg = "<span class='nickMsg' style='color:red;margin-left: 75px;'>由2-6个汉字组成</span>";
            }
            $(this).parent().append(errMsg);
          } else if ($(val).attr("name") == "email") {
            $(".emailMsg").remove();
            var email = val.value;
            var regEmail = /^\w+@\w+((\.\w+)+)$/;
            if (email == "" || email.trim() == "") {
              errMsg = "<span class='emailMsg' style='color:red;margin-left: 75px;'>邮箱不能为空</span>";
            } else if (!regEmail.test(email)) {
              errMsg = "<span class='emailMsg' style='color:red;margin-left: 75px;'>邮箱格式不正确，如：1719345183@qq.com</span>";
            } 
            $(this).parent().append(errMsg);
          }  else if ($(val).attr("name") == "phone") {
            $(".phoneMsg").remove();
            var phone = val.value;
            var regPhone = /^(13[0-9]|14[01456879]|15[0-35-9]|16[2567]|17[0-8]|18[0-9]|19[0-35-9])\d{8}$/;
            if (phone == "" || phone.trim() == "") {
              errMsg = "<span class = 'phoneMsg' style='color:red;margin-left: 75px;' > 手机号不能为空 </span>"
            } else if (!regPhone.test(phone)) {
              errMsg = "<span class = 'phoneMsg' style='color:red;margin-left: 75px;' > 格式错误 </span>"
            } 
            $(this).parent().append(errMsg);
          }
        });
      });
    });

    // 加载学院和班级信息
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
          $("#college").html(html);
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
              $("#classes").html(html);
            }
          });
        }
      }
    });
    $("#college").change(function () {
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
          $("#classes").empty();
          $("#classes").html(html);
        }
      });
    });
    $(".confirm").click(function () {
      $.ajax({
        url:"http://localhost:8080/register/register",
        type:"Post",
        data:{
          "jobNumber":$("#jobNumber").val(),
          "userName":$("#username").val(),
          "password":$("#password").val(),
          "classesId":$("#classes").val(),
          "email":$("#email").val(),
          "telephone":$("#phone").val(),
          "sex":$("input[name='sex']:checked").val(),
          "age":$("#age").val(),
          "height":$("#height").val(),
          "weight":$("#weight").val(),
          "hobby":$("#hobby").val()
        },
        success:function(result){
          if (result.code == -1)
            alert(result.message);
          else{
            alert("注册成功，点击确认返回登录页面");
            window.location.href = "http://localhost:8080/login.jsp"
          }
        }
      });
    });

});


