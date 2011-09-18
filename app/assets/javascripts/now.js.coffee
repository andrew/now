$ ->
  hash = window.location.hash
  if hash == ''
    $('#now, li.now').toggleClass('current')
  else
    $("#{hash}, li.#{hash.replace('#','')}").toggleClass('current')

  $('.context li').click ->
    $(this).toggleClass('active')

  $('#menu a').click ->
    context = $(this).data().context
    $('#task_context').val context
    $('#menu li, ul.context').removeClass 'current'
    $("##{context}, li.#{context}").toggleClass 'current'
    
  $('select.change').change ->
    console.log('change')
    $(this).closest("form").submit()