jQuery(function ($) {
    $("#viewProductModal").modal("show");
    $("#editProductModal").modal("show");
    $("#editProduct-link-submit").click(function () {
        $("#edit-product-form").submit();
    });
});