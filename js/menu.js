(function() {
  var selectMenuItem, thumbnail;

  if ($("#portfolio").length > 0) {
    thumbnail = $('.thumbnail');
    selectMenuItem = function() {
      var anchor, element;
      $(".menu a").removeClass('selected');
      anchor = window.location.hash.substring(1);
      element = $(".menu a[href='/portfolio.html#" + anchor + "']");
      if (element.length > 0) {
        element.addClass('selected');
      }
      if (anchor === "") {
        return thumbnail.show();
      } else {
        thumbnail.filter("[data-category='" + anchor + "']").show();
        return thumbnail.not("[data-category='" + anchor + "']").hide();
      }
    };
    window.onhashchange = function() {
      return selectMenuItem();
    };
    selectMenuItem();
  }

}).call(this);
