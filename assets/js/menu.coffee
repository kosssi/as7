if $("#portfolio").length > 0
  thumbnail = $('.thumbnail')

  selectMenuItem = ->
    $(".menu a").removeClass('selected')
    anchor  = window.location.hash.substring(1);
    element = $(".menu a[href='/portfolio.html#" + anchor + "']")
    if element.length > 0
      element.addClass('selected')
    if anchor == ""
      thumbnail.show()
    else
      thumbnail.filter("[data-category='" + anchor + "']").show()
      thumbnail.not("[data-category='" + anchor + "']").hide()

  window.onhashchange = ->
    selectMenuItem()

  selectMenuItem()
