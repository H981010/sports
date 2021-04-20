$(function () {
    $("#addEvent").click(function () {
        $.ajax({
            url:"http://localhost:8080/event/add",
            type:"Post",
            data:{
                "eventName": $("#eventName").val(),
                "startTime":  $("#startTime").val(),
                "place": $("#place").val(),
                "description": $("#description").val(),
                "type": $("#projectType").find("option:selected").val(),
                "xianZhi": $(':radio[name="projectLimit"]:checked').val()
            },
            success:function(result){
                console.log(result);
                if (result.code === -1)
                    console.log(result.message);
                else{
                    window.parent.location.reload();
                    var index = parent.layer.getFrameIndex(window.name);
                    parent.layer.close(index);
                }
            }
        });
    });
});
