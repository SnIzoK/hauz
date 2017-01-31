class window.Feedback
  constructor: ->
    owl = $('.owl-carousel')
    width = window.innerWidth
    @perPage       = 4
    # if(width > 1440)
    #   @perPage     = 6
    # if(width < 640)
    #   @perPage     = 2
    @widthRange    = 22
    @startPosition = 20
    owl.owlCarousel( {items: @perPage, responsive: false} )

    item = $('.testemonials_img')

    item.on 'click', (e) =>
      $element = $(e.currentTarget)
      index = $element.data('imgindex')
      position = index - @activePage() * @perPage
      width = @startPosition + @widthRange * position
      $('.svg_zrub').css("left","#{width}%")
      text = $element.closest('.testemonials_box').find('.feedback').text()
      $('.testemonials').text(text)
      $('.text-testemonials').removeClass('active')
      $element.next().addClass('active')

    $('.owl-page').on 'click', (e) =>
      current = @activePage() * @perPage + 1
      $("[data-imgindex='" + current + "']").click()


  activePage:->
    pages = _.map $('.owl-page'),(el) ->
      $(el).hasClass('active')
    _.indexOf pages, true
