<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>My Page</title>
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
		var birth = $("#birth").val();
		var birth1 = birth.substring(0,4);
		var birth2 = birth.substring(5,7);
		var birth3 = birth.substring(8,10);
		$("#birth1").val(birth1);
		$("#birth2").val(birth2);
		$("#birth3").val(birth3);
		var phone = $("#phone").val();
		var phone1 = phone.substring(0,3);
		var phone2 = phone.substring(4,8);
		var phone3 = phone.substring(9,13);
		$("#phone1").val(phone1);
		$("#phone2").val(phone2);
		$("#phone3").val(phone3);
		
		
		$('form').on('submit',function(){
			var b = $("#birth1").val()+"/"+$("#birth2").val()+"/"+$("#birth3").val();
			var p = $("#phone1").val()+"-"+$("#phone2").val()+"-"+$("#phone3").val();
			$("#birth").val(b);
			$("#phone").val(p);
			
			if ($("#pw").val() == "") {
			    alert("비밀번호를 꼭 입력하세요!");
			    $("#pw").focus();
			    return false;
			} else if ($('#pw').val().length <= 5){
				alert("비밀번호는 6자리 이상 작성하세요!");
				$("#pw").val("");
			    $("#pw").focus();
			    return false;
			}else if (!isNaN($("#pw").val())){
				alert("비밀번호를 영문자/숫자 조합으로 하세요!");
				$("#pw").val("");
			    $("#pw").focus();
			    return false;
			}else if ($("#pw").val() != $("#pw2").val()) {
			    alert("비밀번호와 비밀번호 확인이 일치하지않습니다!");
			    $("#pw2").val("");
			    $("#pw2").focus();
			    return false;
			}else if ($("#name").val() == ""){
				alert("이름을 꼭 입력하세요!");
			    $("#name").focus();
			    return false;
			}else if ($("#birth1").val().length != 4 || !$.isNumeric($("#birth1").val())){
				alert("생년월일의 '년도'를 4자리의 숫자로 입력하세요!");
				$("#birth1").val("");
			    $("#birth1").focus();
			    return false; 
			}else if ($("#birth2").val().length != 2 || !$.isNumeric($("#birth2").val())){
				alert("생년월일의 '월'을 2자리의 숫자로 입력하세요!");
				$("#birth2").val("");
			    $("#birth2").focus();
			    return false; 
			}else if ($("#birth3").val().length != 2 || !$.isNumeric($("#birth3").val())){
				alert("생년월일의 '일'을 2자리의 숫자로 입력하세요!");
				$("#birth3").val("");
			    $("#birth3").focus();
			    return false; 
			}else if ($("#phone1").val().length != 3 || !$.isNumeric($("#phone1").val())){
				alert("전화번호를 3자리의 숫자로 입력하세요!");
				$("#phone1").val("");
			    $("#phone1").focus();
			    return false;
			}else if ($("#phone2").val().length != 4 || !$.isNumeric($("#phone2").val())){
				alert("전화번호를 4자리의 숫자로 입력하세요!");
				$("#phone2").val("");
			    $("#phone2").focus();
			    return false;
			}else if ($("#phone3").val().length != 4 || !$.isNumeric($("#phone3").val())){
				alert("전화번호를 4자리의 숫자로 입력하세요!");
				$("#phone3").val("");
			    $("#phone3").focus();
			    return false;
			}else if ($("#addr").val() == ""){
				alert("주소를 꼭 입력하세요!");
			    $("#addr").focus();
			    return false;
			}else if ($("#email").val() == ""){
				alert("이메일을 꼭 입력하세요!");
			    $("#email").focus();
			    return false;
			}else if ($("#email").val() != ""){
				var str = $("#email").val();
				var n = str.indexOf("@");
				if(n==-1){
					alert("이메일 형식이 잘못되었습니다!");
				    $("#email").focus();
				    return false;
				}else{
					alert("정상적으로 가입완료");					
				}
			}else{
				alert("정상적으로 가입완료");
			}
			
		});
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
            <li><a href="/pro03/logout">로그아웃</a></li>
           	<li class="active"><a href="/pro03/mypage">My Page</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">
      <div class="starter-template">
       <form class="form-horizontal" action="/pro03/UserUpdate" method="post">
       
		  <div class="form-group">
		    <label for="pw" class="col-sm-4 control-label">비밀번호</label>
		    <div class="col-sm-6">
		      <input type="password" class="form-control" id="pw" name="pw" value="${bean.pw }" />
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="pw2" class="col-sm-4 control-label">비밀번호 확인</label>
		    <div class="col-sm-6">
		      <input type="password" class="form-control" id="pw2" name="pw2"  />
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="name" class="col-sm-4 control-label">이름</label>
		    <div class="col-sm-6">
		      <input type="text" class="form-control" id="name" name="name" value="${bean.name }"/>
		    </div>
		  </div>
		  
		 <div class="form-group">
		    <label for="birth" class="col-sm-4 control-label">생년월일</label>
		    <div class="col-sm-2">
		       <input type="text" class="form-control" id="birth1" value=""/>&nbsp;년
		    </div>
		    <div class="col-sm-2">
		       <input type="text" class="form-control" id="birth2"  value=""/>&nbsp;월
		    </div>
		    <div class="col-sm-2">
		       <input type="text" class="form-control" id="birth3"  value=""/>일
		    </div>
		    <input type="hidden" class="form-control" id="birth" name="birth" value="${bean.birth }"/>
		  </div>
		  
		  <div class="form-group">
		    <label for="phone" class="col-sm-4 control-label">전화번호</label>
		     <div class="col-sm-2">
		       <input type="text" class="form-control" id="phone1" name="phone1" size="2" maxlength="3"/>&nbsp;-
		    </div>
		    <div class="col-sm-2">
		       <input type="text" class="form-control" id="phone2" name="phone2" size="3" maxlength="4"/>&nbsp;-
		    </div>
		    <div class="col-sm-2">
		       <input type="text" class="form-control" id="phone3" name="phone3" size="3" maxlength="4"/>
		    </div>
		    <input type="hidden" class="form-control" id="phone" name="phone" value="${bean.phone }"/>
		  </div>
		  
		  <div class="form-group">
		    <label for="email" class="col-sm-4 control-label">이메일</label>
		    <div class="col-sm-6">
		      <input type="text" class="form-control" id="email" name="email" value="${bean.email }" />
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="addr" class="col-sm-4 control-label">주소</label>
		    <div class="col-sm-6">
		      <input type="text" class="form-control" id="addr" name="addr" value="${bean.addr }"/>
		    </div>
		  </div>
		 
		  
		  <div class="form-group">
		    <div class="col-sm-offset-5 col-sm-5">	
		      <button type="submit" class="btn btn-success">수정 완료</button>
		    </div>
		  </div>
		</form>
		
      </div>

    </div><!-- /.container -->
</body>
</html>