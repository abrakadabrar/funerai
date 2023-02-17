jQuery(function ($) {
    $("#sigin-in-register").on("click", function (e) {
        e.preventDefault();
        $("#registerModal").modal("hide");
        $("#loginModal").modal("show");
        return false;
    });
    $("#register-in-sigin").on("click", function (e) {
        e.preventDefault();

        $("#registerModal").modal("show");
        $("#loginModal").modal("hide");
        return false;
    });
    $("#btn-download").click(function (e) {
        e.preventDefault();

        if ($("#main-content-wrapper").data("isGuest")) {
            $("#loginModal").modal("show");
        }
        return false;
    });
    $(".submit-modal").click(function (e) {
        $(this).parent().parent().find("form:first").submit();
    });
    $(".forgot-password").on("click", function (e) {
        e.preventDefault();
        $("#loginModal").modal("hide");
        $("#registerModal").modal("hide");
        $("#forgotModal").modal("show");
        return false;
    });

    $(window).on('load', function (){
        /*new Splide( '.splide' , {
            //perPage: 1,//Math.floor($('#roadmap2-wrapper').width() / 280)
            //perMove: 1,
            wheel    : true,
            autoWidth: true,
            arrows: false,
        }).mount();*/
        var swiper = new Swiper(".mySwiper", {
            slidesPerView: "auto",
            spaceBetween: 30,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
        });
    });
});