
jQuery(document).ready(function() {

    /*
        Background slideshow
    */
    $.backstretch([
      "img/backgrounds/register1.jpg"
    , "img/backgrounds/register1.jpg"
    , "img/backgrounds/register1.jpg"
    ], {duration: 3000, fade: 750});

    /*
        Tooltips
    */
    $('.links a.home').tooltip();
    $('.links a.blog').tooltip();

    $('.register form').submit(function(){
//      $(this).find("label[for='college']");
//      $(this).find("label[for='lastname']").html('Last Name');
//      $(this).find("label[for='username']").html('Username');
//      $(this).find("label[for='email']").html('Email');
//      $(this).find("label[for='password']").html('Password');
        ////
        var college = $(this).find('input#college').val();
        var lastname = $(this).find('input#lastname').val();
        var username = $(this).find('input#username').val();
        var email = $(this).find('input#email').val();
        var password = $(this).find('input#password').val();
        if(college == '') {
            $(this).find("label[for='college']").append("<span style='display:none' class='red'> - Please enter your college name.</span>");
            $(this).find("label[for='college'] span").fadeIn('medium');
            return false;
        }
        if(lastname == '') {
            $(this).find("label[for='lastname']").append("<span style='display:none' class='red'> - Please enter your last name.</span>");
            $(this).find("label[for='lastname'] span").fadeIn('medium');
            return false;
        }
        if(username == '') {
            $(this).find("label[for='username']").append("<span style='display:none' class='red'> - Please enter a valid username.</span>");
            $(this).find("label[for='username'] span").fadeIn('medium');
            return false;
        }
        if(email == '') {
            $(this).find("label[for='email']").append("<span style='display:none' class='red'> - Please enter a valid email.</span>");
            $(this).find("label[for='email'] span").fadeIn('medium');
            return false;
        }
        if(password == '') {
            $(this).find("label[for='password']").append("<span style='display:none' class='red'> - Please enter a valid password.</span>");
            $(this).find("label[for='password'] span").fadeIn('medium');
            return false;
        }
    });


});


