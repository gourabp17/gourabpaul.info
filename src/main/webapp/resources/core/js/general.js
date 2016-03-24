//var actualurl = "http://localhost/gourabpaul";
var actualurl = "http://www.gourabpaul.info";
$(document).ready(function () {
    $('#mynavbar').hide();
    $('ul#topnavbar li a').hide();
    $('.bar').hide();
    fixnavbar();
    highlightnavbar();
    hidegodown();
    backtotop();
});
$(window).on('scroll', function () {
    fixnavbar();
    highlightnavbar();
    hidegodown();
});
function highlightnavbar() {
    var scrollTop = $(window).scrollTop();
    $('#contact,#abilities, #experience, #myprofile').each(function () {
        var topDistance = $(this).offset().top;
        var thisheight = $(this).height();

        if ((topDistance - 10) < scrollTop && (topDistance + thisheight) > scrollTop + 10) {
            $('.' + $(this).attr('id')).parent().css('background', '#22A39F');

        }
        else {

            $('.' + $(this).attr('id')).parent().css('background', 'rgba(0, 0, 0, 0.7)');

        }
    });
}
function fixnavbar() {
    var scrollTop = $(window).scrollTop();

    var imgheight = $('#topimage').height();
    if (scrollTop > ((imgheight / 2) - (imgheight / 4))) {

        $('#mynavbar').show(1000);
        $('ul#topnavbar li a').hide(500);
        $('ul#topnavbar li').hide(520);
        $('#mynavbar').css('position', 'fixed');
    }
    else {
        $('ul#topnavbar li').show();
        $('ul#topnavbar li a').show(1000);

        $('#mynavbar').hide(1000);

    }
}

function hidegodown() {
    var scrollTop = $(window).scrollTop();
    if (scrollTop > 50) {
        $('.bar').hide();

    }
    else {
        $('.bar').show();

    }
}

function backtotop() {
    var offset = 220;
    var duration = 500;
    jQuery(window).scroll(function () {
        if (jQuery(this).scrollTop() > offset) {
            jQuery('#back-to-top').fadeIn(duration);
        } else {
            jQuery('#back-to-top').fadeOut(duration);
        }
    });

    jQuery('#back-to-top').click(function (event) {
        event.preventDefault();
        jQuery('html, body').animate({scrollTop: 0}, duration);
        return false;
    });
}

function download_count(type) {
    $.get(actualurl + "/downloads/" + type);
}

function contact() {
    var name = document.getElementById("contactName").value;
    var email = document.getElementById("contactEmail").value;
    var phone = document.getElementById("contactPhone").value;
    var subject = document.getElementById("subject").value;
    var comment = document.getElementById("comment").value;

    if (name != "" && email != "" && phone != "" && subject != "" && comment != "") {

        $.get(actualurl + "/contact/contactme",
                {
                    name: name,
                    email: email,
                    phone: phone,
                    subject: subject,
                    comment: comment

                }, function (data) {

            if (data != '1') {
                alert("Error ocured. Please fill all the input");
            }
            else {
                alert("Thanks. Your message has been submitted")
            }
        });
    }
    else {
        alert("Please fill all the fields")
    }
}
function mail(type) {

    var radiovalue = type;
    var email = $('#sendEmail').val();
    if (email == null || email.trim() == "") {
        alert("Please Enter Email Address");
    }
    else {
        $.get("contact/maildoctype",
                {
                   radiovalue: radiovalue,
                    email: email
                }, function (data) {

            if (data != '1') {
                alert("An error occured. Try later!!")
            }

            else {
                alert("Mail has been send to "+email+". Please check your spam box if you have not received it.");
            }
        });
    }
}