<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://bootswatch.com/4/litera/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.rawgit.com/innks/NanumSquare/master/nanumsquare.min.css">
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
<link rel="stylesheet" href="res/css/mypage.css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="res/css/header.css">
<script src="http://code.jquery.com/jquery-latest.min.js"
	type="text/javascript"></script>
<!-- Website CSS style -->
<link rel="stylesheet" type="text/css" href="assets/css/main.css">

<!-- Website Font style -->

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" 
integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>

<!-- header -->
<link rel="stylesheet" href="res/css/header.css">
<script src="http://code.jquery.com/jquery-latest.min.js"
	type="text/javascript"></script>
<script src="res/js/header.js"></script>	

<title>학생 마이페이지 </title>
</head>
<body>
	<div id="jb-container">
		<div id="jb-header">
		<div id='cssmenu'>
			<ul>
				<li><a href='#'
					style="padding: 8px; padding-left: 15px; padding-right: 0px;"><img src="res/img/logo.jpg" width="29" height="29"></a></li>
				<li><a href='#'><span>나의졸업요건</span></a></li>
				<li><a href='#'><span>수강목록 조회</span></a></li>
				<li><a href='#'><span>졸업요건 조회</span></a></li>
				<li><a href='#'><span>공지사항 및 문의</span></a></li>
				<li style="float: right"><a href='#'><span>LOGOUT</span></a></li>
				<li style="float: right"><a href='#'><span>개인정보변경</span></a></li>
			</ul>
		</div>
	</div>

	<div id="jb-content justify-content-center">
			<div class="container">
			<div class="row main">
				<div class="main-login main-center">
					<form class="form-horizontal" method="post" action="#" style="width: 300px">
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">이름</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true" style="margin-top: 10px;"></i></span>
									&nbsp;&nbsp;
									<input type="text" class="form-control" name="name" id="name"  placeholder="Kim Ji Hye" style="height: 37px;"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">이메일</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"  style="margin-top: 10px;"></i></span>
									&nbsp;&nbsp;
									<input type="text" class="form-control" name="email" id="email"  placeholder="jihye@example.com"  style="height: 37px;"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="phone" class="cols-sm-2 control-label">전화번호</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-phone fa" aria-hidden="true"  style="margin-top: 10px;"></i></span>
									&nbsp;&nbsp;
									<input type="tel" class="form-control" name="phone" id="phone"  placeholder="010-1111-5389" style="height: 37px;"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">비밀번호</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock  " aria-hidden="true"  style="margin-top: 8px;"></i></span>
									&nbsp;&nbsp;
									<input type="password" class="form-control" name="password" id="password" data-toggle="popover" placeholder="비밀번호 입력" style="height: 37px;"/>
								</div>
				
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">비밀번호 확인</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock" aria-hidden="true"  style="margin-top: 8px;"></i></span>
									&nbsp;&nbsp;
									<input type="password" class="form-control" name="confirm" id="confirm"  placeholder="비밀번호 확인 입력" style="height: 37px;"/>
								</div>
								
							</div>
						</div>
						<div class="form-group" style="margin-top: 20pt;">	
							<div class="cols-sm-10">
								<div class="input-group" style="font-size: 13pt;">
								<span class="input-group-addon">
									<i class="fas fa-pen-square" ></i>&nbsp; 편입생
								</span>
									<input type="checkbox" name="kind" id="kind" style="margin-left:20px; width:25px; height:25px;"/>
								</div>
								
								<div class="input-group" style="font-size: 13pt; margin-top: 8px;">
									<span class="input-group-addon">
									<i class="fas fa-pen-square" ></i>&nbsp; 사회봉사면제여부
									</span>
									<input type="checkbox" name="kind" id="kind" style="margin-left:20px; width:25px; height:25px;"/>
								</div>
							</div>
						</div>
						<div class="form-group" style="margin-top: 25px;">
							<label for ="major" class="cls-sm-2 control-label">학부/학과</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-graduation-cap fa" aria-hidden="true"  style="margin-top: 10px;"></i></span>
									&nbsp;&nbsp;
									<select name="major" class="form-control" id="major" style="height: 37px; font-size: 13pt;">
										<option value="notSelect">주전공을 선택해주세요</option>
										<option value="소프트웨어 공학과">소프트웨어공학과</option>
										<option value="컴퓨터공학과">컴퓨터공학과</option>
										<option value="인문융합자율학부">인문융합 자율학부</option>
										<option value="사회융합자율학부">사회융합 자율학부</option>
										<option value="미디어컨텐츠융합자율학부">미디어컨텐츠융합 자율학부</option>
										<option value="it융합자율학부">IT융합 자율학부</option>
									</select>
								</div>
							</div>
						
							<div class="cols-sm-10" style="margin-top:5px;">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-graduation-cap fa" aria-hidden="true"  style="margin-top: 10px;"></i></span>
									&nbsp;&nbsp;
									<select name="subMajor" class="form-control" id="subMajor" style="height: 37px; font-size: 13pt;" >
										<option value="notSelect">부/복수전공을 선택해주세요</option>
										<option value="소프트웨어 공학과">소프트웨어공학과</option>
										<option value="컴퓨터공학과">컴퓨터공학과</option>
										<option value="정보통신공학과">정보통신 공학과</option>
										<option value="글로컬IT학과">글로컬IT학과</option>
										<option value="디지털컨텐츠">디지털컨텐츠</option>
										<option value="신문방송학과">신문방송학과</option>
										<option value="경영학부">경영학부</option>
										<option value="사회과학부">사회과학부</option>
										<option value="사회복지학과">사회복지학과</option>
										<option value="중어중국학과">중어중국학과</option>
										<option value="일어일본학과">일어일본학과</option>
										<option value="영어학과">영어학과</option>
										<option value="신학과">신학과</option>
										<option value="해외창">해외창</option>
										<option value="문화기획전공">문화기획전공</option>
								</select>
								</div>
							</div>
							<div class="cols-sm-10" style="margin-top:5px;">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-graduation-cap fa" aria-hidden="true"  style="margin-top: 10px;"></i></span>
									&nbsp;&nbsp;
									<select name="class" class="form-control" id="class" style="height: 37px; font-size: 13pt;">
										<option value="notSelect">반을 선택해주세요</option>
										<option value="1반">1반</option>
										<option value="2반">2반</option>
										<option value="3반">3반</option>
										<option value="4반">4반</option>
										<option value="5반">5반</option>
									</select>
								</div>
							</div>
						</div>
						
						<div class="form-group" style="margin-top:5px;">
							<label for ="semester" class="cls-sm-2 control-label">학기</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user-graduate fa" aria-hidden="true"  style="margin-top: 10px;"></i></span>
									&nbsp;&nbsp;
									<select name="semester" class="form-control" id="semester" style="height: 37px; font-size: 13pt;" >
										<option value="1학기">1학기</option>
										<option value="2학기">2학기</option>
										<option value="3학기">3학기</option>
										<option value="4학기">4학기</option>
										<option value="5학기">5학기</option>
										<option value="6학기">6학기</option>
										<option value="7학기">7학기</option>
										<option value="8학기">8학기</option>
										<option value="9학기">9학기</option>
										<option value="10학기">10학기</option>
								</select>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="file" class="cols-sm-2 control-label">file</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-file-upload fa" aria-hidden="true" style="margin-top: 10px;"></i></span>
									&nbsp;&nbsp;
									<input type="file" class="form-control" name="file" id="file"/>
								</div>
							</div>
						</div>
						
						<div class="form-group" style="margin-top: 36px; margin-left: 31%; width: 120px;">
							<button type="button" class="btn btn-primary btn-lg btn-block login-button" >수정하기</button>
						</div>
					
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>