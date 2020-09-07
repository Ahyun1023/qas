function loginCheck(){
	if($('#isLogin').val() != "true"){
		alert('로그인되어 있지 않습니다.');
		location.href = "./login.jsp";
	}
}

function pwCheck(){
	$("#pw").on("propertychange change keyup paste input", ()=>{
		pwchecking();
	})

	$("#pw_check").on("propertychange change keyup paste input", ()=>{
		pwchecking();
	})
}

function pwchecking(){
	if($('#pw_check').val() == ''){
		$('#isPwTrue').text('');
	} else if($('#pw').val() != $('#pw_check').val()){
		$('#isPwTrue').css('color', 'red');
		$('#isPwTrue').text('비밀번호가 틀렸습니다. 다시 입력해주세요.');
	} else{
		$('#isPwTrue').css('color', 'green');
		$('#isPwTrue').text('옳은 비밀번호 입니다.');
	}
}

function alreadyLogin(){
	if($('#isLogin').val() == "true"){
		alert('이미 로그인되어 있습니다.');
		location.href='/test/main';
	}
}