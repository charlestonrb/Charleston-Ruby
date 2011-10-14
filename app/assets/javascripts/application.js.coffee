$ ->
  $('div#flash_notice').fadeOut(2000)
  $("ul.nav li##{$('body').attr('id')}").addClass('active')
  $('.noisy').noisy
    intensity: 0.9, 
    size: 200, 
    opacity: 0.08,
    fallback: 'fallback.png',
    monochrome: false
  