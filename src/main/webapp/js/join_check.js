function reg_check(){

	idvalue = $("#usid").val().trim();

	//아이디 미입력시	
	if(idvalue.length < 1){
		$('#idspan').html("아이디를 입력하세요").css('color', 'green');
		
		return false;
	}else{
		$('#idspan').html("");
	}
				
	// 아이디 길이 4~12자리
	if (idvalue.length < 4 || idvalue.length > 12) {
		$('#idspan').html("아이디 4~12 사이의 자리로 입력해주세요").css('color', 'green');
		
		return false;
	}else{
		$('#idspan').html("");
	}
		
	// 아이디 정규식 소문자와 숫자만 가능 4자리 ~ 10자리
	idreg = /^[a-z0-9]{3,10}$/;
	if(!(idreg.test(idvalue))){
		$('#idspan').html("소문자와 숫자로 4~10자리 입니다").css('color','green');
		
		return false;
	}else{
		$('#idspan').html("");
	}
	
	//비밀번호 정규식 대소문자 숫자 특수문자 하나씩 6~12자리
	pass = $("#password").val().trim();
	pass_ck = $("#password_ck").val().trim();
	reg_pass = /^([A-z0-9]{5,12})$/;
	
	if(pass.length < 1){
		$('#passwordspan').html("비밀번호를 입력해주세요").css('color','green');
		
		return false;
	}else{
		$('#passwordspan').html("");
	}
	
	if(pass.length < 5 || pass.length > 13){
		$('#passwordspan').html("6~12자리 맞춰서 입력해주세요").css('color','green');
		
		return false;
	}else{
		$('#passwordspan').html("");
	}
	
	if(!(reg_pass.test(pass))){
		$('#passwordspan').html("비밀번호 형식에 맞지 않습니다").css('color','green');
	
		return false;
	}else{
		$('#passwordspan').html("");
	}
	
	if(pass != pass_ck){
		$('#passwordspan').html("비밀번호가 다릅니다").css('color','green');
		return false;
	}else{
		$('#passwordspan').html("");
	}
	
	name = $('#usernm').val().trim();
	reg_name = /^[가-힣a-zA-Z]{3,12}$/;
	
	if(name.length < 1){
		$('#namespan').html("이름을 입력해주세요").css('color','green');
		return false;
	}else{
		$('#namespan').html("");
	}
	
	if(!(reg_name.test(name))){
		$('#namespan').html("한글 또는 영어 대소문자로 3~12 자리를 입력해주세요").css('color','green');
		return false;
	}else{
		$('#namespan').html("");
	}
	
	
		return true;
	}