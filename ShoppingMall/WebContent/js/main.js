$(function() {
	
	$("tr").click(function() {
		if ($(this).attr("id") != "head") {
				$(location).attr('href','productInfo.do?cmd=productInfo&productNo='+$(this).attr("id"));
		}
	});
	
	$("input#sendLogin").click(function(){
		if($("input#id").val().trim().length == 0 ||$("input#pw").val().trim().length == 0 ){
			$("input#id").val('');
			$("input#pw").val('');
			alert('id와 pw를 확인하세요.');
		}else{
			$("form#frm").submit();
		}
	});
	
	$("input").click(function(){
		$(location).attr('href', 'productCartDelete.do?cmd=productCartDelete&productNo='+$(this).attr("id"));
	});
	
	$("img#bagImg1").mouseover(function() {
		$("img#bagImg1").attr("src", $("img#bagSmallImg2").attr("src"));
	});
	
	$("img#bagImg1").mouseout(function() {
		$("img#bagImg1").attr("src", $("img#bagSmallImg1").attr("src"));
	});
	
	$("input#cartSend").click(function(){
		$(location).attr('href', 'productCart.do?cmd=productCart&productNo='+$("td#tdId").text());
	});
	
	$("li").click().each(function(){
		if($("li").text()==$(this).text()){
			$(this).addClass("active");
		}else{
			$(this).removeClass("active");
		}
	});
	
	$("a#home").click(function(){
		$(location).attr('href', 'home.jsp');
	});
	
	$("a#bag").click(function(){
		$(location).attr('href', 'bagList.do?cmd=bagList');
	});
	
	$("a#cart").click(function(){
		$(location).attr('href', 'productCart.jsp');
	});
	
	$("a#logout").click(function(){
		$(location).attr('href', 'logout.do?cmd=logout');
	});
	
});