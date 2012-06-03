$ ->
  $('#goto_step1b,#back_step1b').click ->
  	$('#step2b,#step3b,#step4b,#goto_step3b,#goto_step4b,#complete_stepsb,#back_step1b,#back_step2b,#back_step3b').hide()
  	$('#step1b,#goto_step2b').show()  	

  $('#goto_step2b,#back_step2b').click ->
  	$('#step1b,#step3b,#step4b,#goto_step2b,#goto_step4b,#complete_stepsb,#back_step2b,#back_step3b').hide()
  	$('#step2b,#goto_step3b,#back_step1b').show() 

  $('#goto_step3b,#back_step3b').click ->
  	$('#step1b,#step2b,#step4b,#goto_step2b,#goto_step3b,#complete_stepsb,#back_step1b,#back_step3b').hide()
  	$('#step3b,#goto_step4b,#back_step2b').show()

  $('#goto_step4b').click ->
  	$('#step1b,#step2b,#step3b,#goto_step2b,#goto_step3b,#goto_step4b,#back_step1b,#back_step2b').hide()
  	$('#step4b,#complete_stepsb,#back_step3b').show()