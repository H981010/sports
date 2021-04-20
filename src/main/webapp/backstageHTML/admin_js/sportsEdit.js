$(function () {
    function getQueryString(name) {
        var reg = new RegExp('(^|&)' + name + '=([^&]*)(&|$)', 'i');
        var r = window.location.search.substr(1).match(reg);
        if (r != null) {
            return unescape(r[2]);
            //return decodeURI(r[2]); //解决中文乱码问题
        }
    }
    // alert(window.location.href);
    // alert(window.location.search);
    //调用参数
    var id=getQueryString("id");
    console.log("id = " + id);
    getInfo(id);

    $("#update").click(function () {
        updateInfo(eventId);
    });

    /**
     * 修改比赛信息
     */
    function updateInfo(id){
        alert($(':radio[name="status"]:checked').val());
        $.ajax({
            url:"http://localhost:8080/event/update",
            type:"Put",
            data:{
               "eventId":id,
               "eventName": $("#eventName").val(),
               // "times": $("#times").val(),
               "startTime":  $("#startTime").val(),
               "place": $("#place").val(),
               "description": $("#description").val(),
               "state": $(':radio[name="signUpState"]:checked').val(),
               "type": $('#projectType:selected').val(),
               "xianZhi": $(':radio[name="projectLimit"]:checked').val()
            },
            success:function(result){
                if (result.code === -1)
                    alert(result.message);
                else{
                    window.parent.location.reload();
                    var index = parent.layer.getFrameIndex(window.name);
                    parent.layer.close(index);
                }
            }
        });
    }

    /**
     *  获取比赛信息
     */
    function getInfo(id){
        $.ajax({
            url:"http://localhost:8080/event/"+id,
            type:"Get",
            success:function(result){
                if (result.code === -1)
                    alert(result.message);
                else{
                    var data = result.data;
                    console.log(data);
                    // 赋值页面
                    $("#eventId").val(id);
                    $("#eventName").val(data.eventName);
                    // $("#times").val(data.times);
                    $("#startTime").val(data.startTime);
                    $("#place").val(data.place);
                    $("#description").val(data.description);
                    var status = data.state;
                    var type = data.type;
                    var xianZhi = data.xianZhi;
                    $(':radio[name="signUpState"]').eq(parseInt(status)).prop("checked",true);
                    $("#projectType option[value="+parseInt(type)+"]").prop("selected", true);
                    $(':radio[name="projectLimit"]').eq(parseInt(xianZhi)).prop("checked",true);
                }
            }
        });
    }
});
