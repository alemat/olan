$(function(){
  var first_number_selector = $('#first_number');
  var second_number_selector = $('#second_number');
  var result_selector = $('#result');
    

  $("#first_number, #second_number, #standard").on('input', function()
    {
      var operator = $("#standard").val();
      var first_number = first_number_selector.val();
      var second_number = second_number_selector.val();
      result = calculate(parseInt(first_number), parseInt(second_number), operator);
      result_selector.html(result);
  });

  $("#first_number, #second_number, #scientfic").on('input', function()
    {
      var operator = $("#scientfic").val();
      var first_number = first_number_selector.val();
      var second_number = second_number_selector.val();
      result = calculate(parseInt(first_number), parseInt(second_number), operator);
      result_selector.html(result);
  });

  $("#first_number, #second_number, #programmer").on('input', function()
    {
      var operator = $("#programmer").val();
      var first_number = first_number_selector.val();
      var second_number = second_number_selector.val();
      result = calculate(parseInt(first_number), parseInt(second_number), operator);
      result_selector.html(result);
  });

  function calculate(first_number, second_number, operator){
    switch(operator) {
      case "+":
        return first_number + second_number
        break;
      case "-":
        return first_number - second_number
        break;
      case "*":
        return first_number * second_number
        break;
      case "/":
        return first_number / second_number
        break;
      case "x^y":
        return Math.pow(first_number, second_number);
        break;
      case "x root y":
        return Math.pow(Math.abs(second_number), 1/first_number)
        break;
      case "x mood y":
        return first_number % second_number
        break;        
    } 
  }

  $('input[type=radio][name=calculator_mode]').change(function(){
    $("#first_number,#second_number,#result").val('')
    $("#result").text('')
    if ($(this).val()=="standard") {
      $('#standard').show()
      $('#scientfic,#programmer').hide()
      $('#scientfic,#programmer,#standard').val('')
    }else if ($(this).val() == 'scientfic') {
      $('#scientfic').show()
      $('#standard,#programmer').hide()
      $('#scientfic,#programmer,#standard').val('')
    }else{
      $('#programmer').show()
      $('#standard,#scientfic').hide()
      $('#scientfic,#programmer,#standard').val('')
    }
  })

  $('#scientfic').hide()
  $('#programmer').hide()

});

