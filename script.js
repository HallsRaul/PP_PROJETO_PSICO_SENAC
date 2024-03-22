$("a").click(function() {
    if($(".intern").css("height") != "100px") {
      $(".intern").css("height", "100px");
      $(".intern li").css("marginLeft", "0px");
    }
    
    else {
      $(".intern").css("height", "0px");
      $(".intern li").css("marginLeft", "-52px");
    }
  });