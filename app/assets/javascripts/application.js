// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap/alert
//= require bootstrap/dropdown
//= require bootstrap-sprockets
//= require bootstrap/collapse
//= require bootstrap-wysihtml5
//= require bootstrap-wysihtml5/locales/zh-CN
//= require_tree .




  // 图片自适应大小支持代码块
  // 在product/show.html.erb的页面中，对img图片用这一格式进行校正
  // 让图片在大于div宽度时自动缩小不而溢出，确保版面的公正和美观
  function ReImgSize(){
    for (j=0;j<document.images.length;j++)
    {
      document.images[j].width=(document.images[j].width>420)?"420":document.images[j].width;
    }
  }

function browserRedirect() {
    var sUserAgent = navigator.userAgent.toLowerCase();
    var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
    var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
    var bIsMidp = sUserAgent.match(/midp/i) == "midp";
    var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
    var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
    var bIsAndroid = sUserAgent.match(/android/i) == "android";
    var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
    var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";

    if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {
        //phone;
        //alert("phonetest");
        //$(".hero hgroup .h1").css("font-size","2em");
        //$(".hero hgroup .h3").css("font-size","1.5em");
        $(".about-title-e").css("font-size","1.5em");
        $(".fade-carousel").css("height","360px");
        $(".fade-carousel .carousel-inner .item ").css("height","360px");
        $(".fade-carousel .slides .slide-1").css("height","360px");
        $(".fade-carousel .slides .slide-2").css("height","360px");
        $(".fade-carousel .slides .slide-3").css("height","360px");
        $(".slide-1").css("backgroundImage","url(https://ww1.sinaimg.cn/large/006tKfTcgy1fhuxx13m39j30mf09zach.jpg)");
        $(".slide-2").css("backgroundImage","url(https://ww1.sinaimg.cn/large/006tKfTcgy1fhuxsi8534j30lm0a00un.jpg)");
        $(".slide-3").css("backgroundImage","url(https://ww3.sinaimg.cn/large/006tNc79gy1fhrx7nucg2j30qo0am78p.jpg)");
    } else {
        //pc;
        //alert("pctest");
        $(".navbar-rwd").removeClass("navbar-rwd");
        $(".fade-carousel").css("height","616px");
        $(".fade-carousel .carousel-inner .item ").css("height","616px");
        $(".slide-1").css("height","616px");
        $(".slide-2").css("height","616px");
        $(".slide-3").css("height","616px");
        $(".slide-1").css("backgroundImage","url(https://ww3.sinaimg.cn/large/006tKfTcgy1fhqrkzul02j31hc0itahv.jpg)");
        $(".slide-2").css("backgroundImage","url(https://ww2.sinaimg.cn/large/006tKfTcgy1fhqreo57adj30q40c3tbd.jpg)");
        $(".slide-3").css("backgroundImage","url(https://ww3.sinaimg.cn/large/006tNc79gy1fhrx7nucg2j30qo0am78p.jpg)");
    }
}
$(document).ready(function(){
  browserRedirect();
});





// 袁龙添加的代码
define("js/aboutOneplus/aboutOneplus", [], function(t, o, i) {
    function e(t) {
        var o = t.getBoundingClientRect()
          , i = document.documentElement.clientTop
          , e = document.documentElement.clientLeft;
        return {
            top: o.top - i,
            bottom: o.bottom - i,
            left: o.left - e,
            right: o.right - e
        }
    }
    function n(t) {
        $("#abtus-menu2 a").eq(t).addClass("now").siblings().removeClass("now"),
        $("#abtus-menu a").eq(t).addClass("now").siblings().removeClass("now")
    }
    var u = document.getElementById("abtus-menu")
      , l = $("#abtus-culture")[0]
      , c = $("#abtus-contact")[0]

      , s = $("#abtus-menu2");
    $(window).scroll(function() {
        var t = $("#abtus-menu2").height();
        e(u).top < 0 ? s.addClass("show") : s.removeClass("show"),
        n(e(c).top <= t + 5 ? 2 : e(l).top <= t + 5 && e(c).top > t ? 1 : 0)
    }),
    $("#abtus-culture-article li div").not($("#abtus-culture-article li.li03 div")).height($("#abtus-culture-article li.li03 div").height()),
    $(window).resize(function() {
        $("#abtus-culture-article li div").not($("#abtus-culture-article li.li03 div")).height($("#abtus-culture-article li.li03 div").height())
    }),
    $(".to-introduction").click(function() {
        $("body,html").stop().animate({
            scrollTop: $("#abtus-introduction").position().top - s.height()
        }, "500")
    }),
    $(".to-culture").click(function() {
        $("body,html").stop().animate({
            scrollTop: $("#abtus-culture").position().top - s.height()
        }, "500")
    }),
    $(".to-contact").click(function() {
        $("body,html").stop().animate({
            scrollTop: $("#abtus-contact").position().top - s.height()
        }, "500")
    })


});
