<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<!-- 부트스트랩 -->
    <link href="/pro03/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
	body {
		  padding-top: 50px;
		}
</style>
</head>
<body>
    <h1>Hello, world!</h1>

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
            <li class="active"><a href="/pro03/">Home</a></li>
            <%
            String id = (String)session.getAttribute("id");
            
            if(session.getAttribute("id")!=null){ 	//id값이 널이 아니면(로그인중이면)
    			if((Boolean)session.getAttribute("result")){ 
            %>
            <li><a href="/pro03/logout">로그아웃</a></li>
           	<li><a href="/pro03/mypage">My Page</a></li>
            <%
    			}
            }else{
            %>
            <li><a href="/pro03/login">로그인</a></li>
            <li><a href="/pro03/joinform">회원가입</a></li>
            <%
            }
            %>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">

      <div class="starter-template">
        <h1>메인화면</h1>
        <p class="lead">Use this document as a way to quickly start any new project.<br> All you get is this text and a mostly barebones HTML document.</p>
      </div>

    </div><!-- /.container -->
    
</body>
</html>