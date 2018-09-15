<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://bootswatch.com/4/litera/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.rawgit.com/innks/NanumSquareRound/master/nanumsquareround.min.css">
<link rel="stylesheet" href="headernFooter.css">
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="board.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
		
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<link rel="stylesheet" href="mypage.css">
		<link rel="stylesheet" href="headernFooter.css">
		<!-- Website CSS style -->
		<link rel="stylesheet" type="text/css" href="assets/css/main.css">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

	<title>Mypage</title>
</head>
<body>
	<div id="jb-container">
		<div id="jb-header">
			<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
				<a class="navbar-brand" href="main.html">ⓛⓞⓖⓞ</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarColor01" aria-controls="navbarColor01"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarColor01">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item active"><a class="nav-link" href="#">
								<span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#">졸업요건</a></li>
						<li class="nav-item"><a class="nav-link" href="#">공지사항 및 문의</a></li>
					</ul>
					<form class="form-inline my-2 my-lg-0">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item"><a class="nav-link" href="#">로그아웃</a></li>
							<li class="nav-item"><a class="nav-link" href="#">마이페이지</a></li>
						</ul>
					</form>
				</div>
			</nav>
		</div>
		<div id="jb-content justify-content-center">
			<div class="container">
			<div class="row main">
				
				<div class="main-login main-center">
					<form class="form-horizontal" method="post" action="#">
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="name" id="name"  placeholder="Kim Ji Hye"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Email</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="email" id="email"  placeholder="jihye@example.com"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="phone" class="cols-sm-2 control-label">Phone</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-phone fa" aria-hidden="true"></i></span>
									<input type="number" class="form-control" name="phone" id="phone"  placeholder="010-1111-5389"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for ="state" class="cls-sm-2 control-label">State</label>
							<div class="cols-sm-10">
								</br>
								<div class="input-group">
									<label><input type="radio" name="state" value="전공"> 전공</label>&nbsp&nbsp
									<label><input type="radio" name="state" value="부전공"> 부전공</label>&nbsp&nbsp
									<label><input type="radio" name="state" value="복수전공"> 복수전공</label>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for ="school" class="cls-sm-2 control-label">School</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-graduation-cap fa" aria-hidden="true"></i></span>
									<select name="school" class="form-control" id="school"/>
									 <option value="소프트웨어공학과">소프트웨어공학과</option>
									 <option value="정보통신공학과">정보통신공학과</option>
            						</select>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="file" class="cols-sm-2 control-label">file</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-file fa" aria-hidden="true"></i></span>
									<input type="file" class="form-control" name="file" id="file"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="password" id="password" data-toggle="popover" placeholder="Enter your Password"/>
								</div>
								<span id="passwordInfo" class="hide">
								    <ul>
								        <li>At least 6 characters.</li>
								        <li>Use of special Characters like, [@, $].</li>
								        <li>Use of uppercase [A – Z] and lowercase [a – z] letters.</li>
								        <li>Use of numbers [0 – 9].</li>
								    </ul>
								</span>
								<span id="result"></span>
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="confirm" id="confirm"  placeholder="Confirm your Password"/>
								</div>
								<span id="confirmPass"></span>
							</div>
						</div>

						<div class="form-group ">
							<button type="button" class="btn btn-primary btn-lg btn-block login-button">Update</button>
						</div>
						<div class="login-register">
				            <a href="randing.jsp">logout</a>
				         </div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div id="jb-footer">
		<p>ⓛⓞⓖⓞ</p>
	</div>
	</div>
</body>
</html>