<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입</title>
<!-- 부트스트랩 -->
    <link href="/pro03/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
	body {
		  padding-top: 200px;
		}
</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		/* $(function() { 
			$("#addrFind").postcodifyPopUp(); 
		}); */ 
		
		$('#idCK').on('click',function(){
			$.ajax({
				url:"/pro03/idck",
				dataType:'html',
				type: 'post',
				data: ({
					id: $("#id").val()
				}),
				success: function(data){
					if($.trim(data)=='YES'){
						alert("사용 가능합니다.");
						$("#hid").val("1");
					}else{
						alert("사용 불가능합니다.");
						$("#id").val("");
					}
				}
			});
		});
		
		
		/* $('form').on('submit',function(){
			
			if ($("#id").val() == "") {
			    alert("아이디를 꼭 입력하세요!");
			    $("#id").focus();
			    return false;
			} else if($("#hid").val() == "0"){
				alert("아이디 중복검사 하세요!");
				return false;
				$("#id").focus();
			}else if ($("#pw").val() == "") {
			    alert("비밀번호를 꼭 입력하세요!");
			    $("#pw").focus();
			    return false;
			} else if ($('#pw').val().length <= 5){
				alert("6자리 ~ 12자리 입니다!");
				$("#pw").val("");
			    $("#pw").focus();
			    return false;
			}else if (!isNaN($("#pw").val())){
				alert("영문자/숫자 조합으로 하세요!");
				$("#pw").val("");
			    $("#pw").focus();
			    return false;
			}else if ($("#pw").val() != $("#pwChk").val()) {
			    alert("비밀번호와 비밀번호 확인이 일치하지않습니다.");
			    $("#pwChk").val("");
			    $("#pwChk").focus();
			    return false;
			}else if ($("#name").val() == ""){
				alert("이름을 꼭 입력하세요!");
			    $("#name").focus();
			    return false;
			}else if ($("#email").val() == ""){
				alert("이메일을 꼭 입력하세요!");
			    $("#email").focus();
			    return false;
			}else if ($("#email1").val() == ""){
				alert("이메일을 꼭 입력하세요!");
			    $("#email1").focus();
			    return false;
			}else if ($("#addr").val() == ""){
				alert("주소를 꼭 입력하세요!");
			    $("#addr").focus();
			    return false;
			}else if ($("#phone1").val() == ""){
				alert("전화번호를 꼭 입력하세요!");
			    $("#phone1").focus();
			    return false;
			}else if ($("#phone1").val().length != 3 || !$.isNumeric($("#phone1").val())){
				alert("3자리의 숫자로 입력하세요");
				$("#phone1").val("");
			    $("#phone1").focus();
			    return false;
			}else if ($("#phone2").val() == ""){
				alert("전화번호를 꼭 입력하세요!");
			    $("#phone2").focus();
			    return false;
			}else if ($("#phone2").val().length != 4 || !$.isNumeric($("#phone2").val())){
				alert("4자리의 숫자로 입력하세요");
				$("#phone2").val("");
			    $("#phone2").focus();
			    return false;
			}else if ($("#phone3").val() == ""){
				alert("전화번호를 꼭 입력하세요!");
			    $("#phone3").focus();
			    return false;
			}else if ($("#phone3").val().length != 4 || !$.isNumeric($("#phone3").val())){
				alert("4자리의 숫자로 입력하세요");
				$("#phone3").val("");
			    $("#phone3").focus();
			    return false;
			}else{
				alert("정상적으로 가입완료");
			}
			
		});	 */
	});
</script>
</head>
<body>

    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="/pro03/js/bootstrap.min.js"></script>
    
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/pro03/">Project name</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="/pro03/">Home</a></li>
            <li class="active"><a href="/pro03/joinform">회원가입</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">
      <div class="starter-template">
       <form class="form-horizontal" action="/pro03/userInsert" method="post">
       
		  <div class="form-group">
		    <label for="inputId" class="col-sm-2 control-label">아이디</label>
		    <div class="col-sm-7">
		      <input type="text" class="form-control" id="inputId" name="id" placeholder="영문,숫자 조합">
		      <input type="hidden" id="hid" name="hid" value="0"/>
		    </div>
		    <div class="col-sm-3">
		      <button type="button" class="btn btn-default" id="idCK">중복확인</button>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="inputPassword1" class="col-sm-2 control-label">비밀번호</label>
		    <div class="col-sm-8">
		      <input type="password" class="form-control" id="inputPassword1" name="pw" placeholder="6자 이상">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="inputPassword2" class="col-sm-2 control-label">비밀번호 확인</label>
		    <div class="col-sm-8">
		      <input type="password" class="form-control" id="inputPassword2" name="pw2" placeholder="위의 비밀번호와 동일하게 작성">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="name" class="col-sm-2 control-label">이름</label>
		    <div class="col-sm-8">
		      <input type="text" class="form-control" id="name" name="name" placeholder="실명">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="birth" class="col-sm-2 control-label">생년월일</label>
		    <div class="col-sm-8">
		      <input type="text" class="form-control" id="birth" name="birth" placeholder="1900/01/01">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="phone" class="col-sm-2 control-label">전화번호</label>
		    <div class="col-sm-8">
		      <input type="text" class="form-control" id="phone" name="phone" placeholder="010-1234-5678">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="email" class="col-sm-2 control-label">이메일</label>
		    <div class="col-sm-8">
		      <input type="email" class="form-control" id="email" name="email" >
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="addr" class="col-sm-2 control-label">ADDRESS</label>
		    <div class="col-sm-7">
		      <input type="text" class="form-control" id="addr" name="addr">
		    </div>
		    <div class="col-sm-3">
		      <button type="button" class="btn btn-default" id="addrFind">주소찾기</button>
		    </div>
		  </div>
		  
		  
		  <div class="form-group">
		    <div class="col-sm-offset-5 col-sm-5">	
		      <button type="submit" class="btn btn-success">회원가입</button>
		      <button type="reset" class="btn btn-default">취소</button>
		    </div>
		  </div>
		</form>
		
      </div>

    </div><!-- /.container -->

</body>
</html>