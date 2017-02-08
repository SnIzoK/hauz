$(document).on("click", ".popup_button",
  ()->
    $(".popup").addClass("active")
    $("body").addClass("has-opened-popup")
) 

close_popup = (e)->

  $(".popup").removeClass("active")
  $("body").removeClass("has-opened-popup")

$(document).on("click",".popup-close-button, .popup-overlay",close_popup)