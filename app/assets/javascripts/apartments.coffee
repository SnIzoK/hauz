$('document').ready ->
  $('.owl-carousel').owlCarousel()



  thumb = $('.thumbs .img_box')
  #     знаходим контейнер з картинками, що будуть змінюватись
  # img_apartments = $('.img_prev')

  thumb.on 'click', ->
    #     взяття ындексу (порядкового номера) даного блока
    index = $(this).index()
    #     виводив для перевырки чи взагалы знаходить змынну та бере ындекс
    # console.log(index)
    #     забираєм у всіх елементів, які є сусідами кнопки клас активний
    $(this).siblings().removeClass('active')
    #     і даєм клас активний цій, на яку натиснули
    $(this).addClass('active')
    #     в контейнері картинок знаходим всі дочірні елементи і забираєм клас актів
    # img_apartments.find('.bg_apartaments').removeClass('active')
    bg_container = $(this).closest('.flat_box')
    bg_container.find('.bg_apartaments').removeClass('active')
    bg_container.find('.bg_apartaments').eq(index).addClass('active')



  accordion_button = $('.accordion-button')

  accordion_button.on 'click', ->
    
    #     changing button active
    $(this).parent().find('.accordion-button').removeClass('active')
    $(this).addClass('active')

    #     add active class to first appartment
    # $(this).next().children().removeClass('active')
    # $(this).next().children().first().addClass('active')

    #     changing apartment floor
    index_button = $(this).attr('data-attr')
    $('.apartment_wrapper').removeClass('active')
    $('.apartment_wrapper').eq(index_button).addClass('active')

  plan = $('.sub_title_plan')

  plan.on 'click', ->
    $(this).parent().children().removeClass('active')
    $(this).addClass('active')




    plan_index = $(this).index()

    floor_index = $(this).parent().prev().attr('data-attr')

    # console.log(floor_index)

    $('.apartment_wrapper').eq(floor_index).find('.flat_box').removeClass('active')
    $('.apartment_wrapper').eq(floor_index).find('.flat_box').eq(plan_index).addClass('active')