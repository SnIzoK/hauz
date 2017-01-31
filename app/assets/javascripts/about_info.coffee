$('.more_info').click((e)->

    e.preventDefault()
    
    $this = $(this)

    #     b u t t o n

    if $this.hasClass('opened')
        $this.removeClass('opened')
    else
        $this.addClass('opened')
  
    #     a c c o r d i o n

    if $this.prev().hasClass('show')
        $this.prev().removeClass('show')
        $this.prev().slideUp(350)
    else
        $this.prev().toggleClass('show')
        $this.prev().slideToggle(350)
)