$ ->
  $('#goto_step1,#back_step1').click ->
  	$('#step2,#step3,#step4,#goto_step3,#goto_step4,#complete_steps,#back_step1,#back_step2,#back_step3').hide()
  	$('#step1,#goto_step2').show()  	

  $('#goto_step2,#back_step2').click ->
  	$('#step1,#step3,#step4,#goto_step2,#goto_step4,#complete_steps,#back_step2,#back_step3').hide()
  	$('#step2,#goto_step3,#back_step1').show() 

  $('#goto_step3,#back_step3').click ->
  	$('#step1,#step2,#step4,#goto_step2,#goto_step3,#complete_steps,#back_step1,#back_step3').hide()
  	$('#step3,#goto_step4,#back_step2').show()

  $('#goto_step4').click ->
  	$('#step1,#step2,#step3,#goto_step2,#goto_step3,#goto_step4,#back_step1,#back_step2').hide()
  	$('#step4,#complete_steps,#back_step3').show()