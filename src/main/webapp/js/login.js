$(function () {
  //错误提示
  var errMsg;
  $.each($("input"), function (i, val) {
      $(val).blur(function () {
          if($(val).attr("name") == "username") {
              $(".nickMsg").remove();
              var username = val.value;
              var regName = /\b\d{12}\b/
              if (username == "" || username.trim() == "") {
                  errMsg = "<span class='nickMsg' style='color:red;margin-left: 75px;'>工号不能为空</span>";
              } else if (!regName.test(username)) {
                  errMsg = "<span class='nickMsg' style='color:red;margin-left: 75px;'>请使用工号登录</span>";
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
          }
      });
  });
  //登录
  $(".submit_btn").click(function () {
      var username = $('input[name="username"]').val();
      var password = $('input[name="password"]').val();
      var identity = $("input[type='radio']:checked").val();
      var data = {
          "jobNumber": username,
          "password": password,
          "identity":identity
      };
      console.log(data);
      $.ajax({
          url:"http://localhost:8080/login/in",
          type:"Get",
          data:data,
          success:function(result){
              console.log(result);
              if (result.code == -1)
                  alert(result.message);
              else{
                  alert(result.message);
                  window.location.href="http://localhost:8080/index.jsp";
              }
        }});
  });
  //注册
  $(".register").click(function () {
      window.location.href="../register.jsp";
  });
});