var ready = function() {
  if(window.isStaticPage) {
    var standardPCWidth = 250;
    var standardPCHeight = 200;
    $("body").css({
      "background-color": "black"
    });

    $("#polaris-animation").css({
      width: $(window).width()
    });

    $(".anim-container-main").css({
      height: $(".polaris-main").height()*.6
    });
    $(".anim-container-reflection").css({
      height: $(".polaris-reflection").height()*.6/2
    });
    $(".anim-container-slogan").css({
      height: $(".slogan").height(),
      width: $(".slogan").width()*1.01
    });
    $(".polaris-main").css({
      bottom: -$(".polaris-main").height(),
      opacity: 1
    });
    $(".polaris-reflection").css({
      top: -$(".polaris-reflection").height()*.7,
      opacity: .5
    });

    var originalContainerHeight = $("#polaris-animation").height();
    var originalMenuHeight = $("#home-menu").height();

    $("#home-menu").css({
      height: 0
    });

    $(window).resize(function() {
      $("#polaris-animation").css({
        height: $(window).height(),
        width: $(window).width()
      });
    });
    $(window).resize();

    $(".slogan").css({
      left: -$(".slogan").width(),
      opacity: 1
    });
    $(".polaris-reflection").css({
      top: -$(".polaris-reflection").height()*.7,
      opacity: .5
    });
    $(".polaris-main").animate({
      bottom: "-35%"
    }, animateTime);
    $(".polaris-reflection").animate({
      top: "-120%"
    }, animateTime, function() {
      $(".slogan").animate({
        left: 0
      }, animateTime/4, function() {
        $("#polaris-animation").animate({
          height: originalContainerHeight
        }, animateTime);
        $("#home-projects").css({
          opacity: 1
        });
        $("#home-projects").animate({
          height: $(window).height() - originalContainerHeight - originalMenuHeight
        }, animateTime, function() {
          $(".project-container").animate({
            opacity: 1
          }, animateTime);
          $("#home-menu").animate({
            height: originalMenuHeight
          }, animateTime/4, function () {
            $("#home-menu").animate({
              opacity: 1
            }, animateTime);
          });
        });
        if($("#home-projects").length <= 0){
          $("#home-menu").css({
            height: originalMenuHeight,
            opacity: 1
          });
        } else {
          document.cookie="seen_intro= true"
        }
        $(window).off("resize");
        $(window).resize(function() {
          $("#polaris-animation").css({
            width: $(window).width()
          });
          $("#home-projects").css({
            height: $(window).height() - originalContainerHeight - originalMenuHeight
          });
        });
        $(window).resize();
      });
    });
  }
};

$(document).on("page:change", ready);