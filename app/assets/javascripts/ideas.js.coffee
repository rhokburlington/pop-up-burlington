$ ->
  $('#goto_step1a,#back_step1a').click ->
  	$('#step2a,#step3a,#step4a,#goto_step3a,#goto_step4a,#complete_stepsa,#back_step1a,#back_step2a,#back_step3a').hide()
  	$('#step1a,#goto_step2a').show()  	

  $('#goto_step2a,#back_step2a').click ->
  	$('#step1a,#step3a,#step4a,#goto_step2a,#goto_step4a,#complete_stepsa,#back_step2a,#back_step3a').hide()
  	$('#step2a,#goto_step3a,#back_step1a').show() 

  $('#goto_step3a,#back_step3a').click ->
  	$('#step1a,#step2a,#step4a,#goto_step2a,#goto_step3a,#complete_stepsa,#back_step1a,#back_step3a').hide()
  	$('#step3a,#goto_step4a,#back_step2a').show()

  $('#goto_step4a').click ->
  	$('#step1a,#step2a,#step3a,#goto_step2a,#goto_step3a,#goto_step4a,#back_step1a,#back_step2a').hide()
  	$('#step4a,#complete_stepsa,#back_step3a').show()