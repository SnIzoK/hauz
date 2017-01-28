$('document').ready ->
  $('.owl-carousel').owlCarousel()

  item = $('.testemonials_img')

  item.on 'click', ->

    text = $(this).closest('.testemonials_box').find('.feedback').text()
    console.log text
    $('.testemonials').text(text)
    $('.text-testemonials').removeClass('active')
    $(this).next().addClass('active')