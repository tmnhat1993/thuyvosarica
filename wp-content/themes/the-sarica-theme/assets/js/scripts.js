$(document).ready(function(){
  $('.sale-slider').slick({
    prevArrow:`<button type="button" class="slick-prev">
            <i class="fa fa-angle-left"></i>
        </button>`,
    nextArrow:`<button type="button" class="slick-next">
            <i class="fa fa-angle-right"></i>
        </button>`
  });

  let subMenuContainer = $('.sub-menu-container')
  let currentShowSubMenu = false
  let finishShowMenu = true

  subMenuContainer.on('click', (e) => {

    if(!currentShowSubMenu && finishShowMenu){

      finishShowMenu = false
      $(e.target).parents('.sub-menu-container')
        .find('.navbar__sub-menu')
        .slideDown('fast', () => {
          finishShowMenu = true
          currentShowSubMenu = true
        });

    } else {

      if(finishShowMenu) {

        finishShowMenu = false
        $('.navbar__sub-menu').slideUp('fast', () => {
          finishShowMenu = true
          currentShowSubMenu = false
        })

      }
    }
  })


  $('.navbar__sub-menu').click((e) => {
    e.stopPropagation()
  })


  $('body').click((e) => {
    if(currentShowSubMenu && finishShowMenu){
      currentShowSubMenu = false
      finishShowMenu = false
      $('.navbar__sub-menu').slideUp('fast', () => {
        finishShowMenu = true
      })
    }
  })

});
