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
});