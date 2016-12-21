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
		/* 
		$("button").click(function() {
			if($(this).text()=="회원 정보 수정"){
				if($(this).attr("type")=="button"){
					$(".star").remove();
					$(".grade").remove();
					$("input").removeAttr("readonly");
					$(this).attr("type","submit");
					return false;
				}
			}else{
				$.post(
						"/pro03/delete"
						,{'id':'${bean.id }'}
						,function(){
							window.location.replace("/pro03/");
						}
				);
			}
		}); */
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
       <form class="form-horizontal" action="/pro03/update" method="get">
       
		  <div class="form-group">
		    <label for="id" class="col-sm-4 control-label">아이디</label>
		    <div class="col-sm-6">
		      <label for="id" class="col-sm-6 control-label" >${bean.id }</label>
		    </div>
		  </div>
		  		  
		  <div class="form-group">
		    <label for="name" class="col-sm-4 control-label">이름</label>
		    <div class="col-sm-6">
		      <label for="name" class="col-sm-6 control-label" >${bean.name }</label>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="birth" class="col-sm-4 control-label">생년월일</label>
		    <div class="col-sm-6">
		      <label for="birth" class="col-sm-6 control-label" >${bean.birth }</label>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="phone" class="col-sm-4 control-label">전화번호</label>
		    <div class="col-sm-6">
		      <label for="phone" class="col-sm-6 control-label" >${bean.phone }</label>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="email" class="col-sm-4 control-label">이메일</label>
		    <div class="col-sm-6">
		      <label for="email" class="col-sm-6 control-label" >${bean.email }</label>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="addr" class="col-sm-4 control-label">주소</label>
		    <div class="col-sm-6">
		      <label for="addr" class="col-sm-6 control-label" >${bean.addr }</label>
		    </div>
		  </div>
		  
		  <div class="form-group star">
		    <label for="star" class="col-sm-4 control-label">★</label>
		    <div class="col-sm-6">
		      <label for="star" class="col-sm-6 control-label" >${bean.star }</label>
		    </div>
		  </div>
		  
		  <div class="form-group grade">
		    <label for="grade" class="col-sm-4 control-label">등급</label>
		    <div class="col-sm-6">
		      <label for="grade" class="col-sm-6 control-label" >${bean.grade }</label>
		    </div>
		  </div>
		  
		 
		  
		  <div class="form-group">
		    <div class="col-sm-offset-5 col-sm-5">	
		      <button type="submit" class="btn btn-success">회원 정보 수정</button>
		      <button type="button" class="btn btn-danger">회원 탈퇴</button>
		    </div>
		  </div>
		</form>
		
      </div>

    </div><!-- /.container -->
</body>
</html>