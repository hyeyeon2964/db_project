<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.List"%>
<%@ page import="net.skhu.dto.*" %>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="https://bootswatch.com/4/litera/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${R}res/css/header.css">
<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
<script src="${R}res/js/header.js"></script>
<title>필수과목 수정</title>
</head>
<script>

</script>
<body>
	<div id="jb-container">
		<div id="jb-header">
		<div id='cssmenu'>
			<ul>
				<li>
					<a style="padding: 8px; padding-left: 15px; padding-right: 0px;">
						<img src="${R}res/img/logo.jpg" width="29" height="29">
					</a>
				</li>
				<li><a href='../admin/admin_stu_search'><span>학생 조회</span></a></li>
				<li class='active has-sub' ><a><span>졸업요건 수정</span></a>
					<ul>
						<li class='last'><a href='../admin/admin_allSearchEdit'><span>졸업요건표 수정</span></a></li>
						<li class='last'><a href='#'><span>필수학점 수정</span></a></li>
						<li class='last'><a href='../admin/admin_changeGraduation'><span>필수과목 수정</span></a></li>
					</ul>
				</li>
				<li class='active has-sub' ><a><span>과목 목록 수정</span></a>
					<ul>
						<li class='last'><a href='../admin/admin_all_subject'><span>전체과목 목록</span></a></li>
						<li class='last'><a href='../admin/admin_replace_list'><span>대체과목 목록</span></a></li>
					</ul>
				</li>
				<li><a href='../user/board'><span>공지사항 및 문의</span></a></li>
				<li><a href='../admin/calenderEdit'><span>대학일정 관리</span></a></li>
				<li style="float: right"><a href='../user/logout'><span>LOGOUT</span></a></li>
				<li style="float: right"><a href='../user/check_password'><span>개인정보변경</span></a></li>
			</ul>
		</div>
	</div>
		<div id="jb-content" style="padding-left: 6%">
		
					<form  class ="form-inline mb5" action="graduationSelect" form="post">
				<div style="font-size: 14pt;">
					<select name="departmentId" class="form-control"
						value="${departmentList}" style="width: 400px">
							<option >학과를 선택하세요</option>
						<c:forEach var="department" items="${departments}">
							<option value="${department.id}"
								${departmentId == department.id ? "selected" : ""}>${department.name}</option>
						</c:forEach>

					</select>&nbsp;&nbsp;
				&nbsp;
				<select name="year" class="form-control">
					<option value="2018">2018</option>
					<option value="2017" >2017</option>
					<option value="2016" >2016</option>
					<option value="2015" >2015</option>
					<option value="2014">2014</option>
					<option value="2013">2013</option>
				</select>	
				&nbsp;
				<button type="submit" class="btn btn-outline-primary" style="font-size: 13px;">조회하기</button>	
			</div>
			</form>
			<br/>
		<div style="font-size: 20pt;">		
				소프트웨어공학과 16학번 이수과목
			</div>
	<table id="table1" style="margin-top: 2%; width: 100%;">
				<thead>
					<tr>
						<th scope="col" colspan="2" id="th1"
							style="border-right: 1px solid white">1학년</th>
						<th scope="col" colspan="2" id="th1">2학년</th>
					</tr>
				</thead>
				<tr>
					<td id="td1" style="border-right: 1px solid silver"><strong>
							1학기 </strong></td>
					<td id="td1" style="border-right: 1px solid black"><strong>
							2학기 </strong></td>
					<td id="td1" style="border-right: 1px solid silver"><strong>
							1학기 </strong></td>
					<td id="td1"><strong> 2학기 </strong></td>
				</tr>
				<tr>
					<td id="td2" style="border-right: 1px solid silver">
						
						<span>C프로그래밍Ⅰ </span>
							<br /> 
						<span>과정지도 1</span>
							<br /> 
						<span>정보사회론</span>
							<br /> 
						<span>이산수학</span>
							<br />
						<span>말과글</span>
							<br /> 
						<span>대학생활세미나 Ⅰ</span>
					</td>
					<td id="td2" style="border-right: 1px solid black"><span>C프로그래밍
							Ⅱ</span><br /> <span>과정지도 2</span><br /> <span>웹페이지 구축 Ⅰ</span><br />
						<span>대학수학</span><br /> <span>컴퓨터
							활용</span><br /> <span>대학생활세미나 Ⅱ</span></td>
					<td id="td2" style="border-right: 1px solid silver"><span>자바프로그래밍</span><br />
						<span>과정지도 3</span><br /> <span >컴퓨터구조</span><br />
						<span>데이터베이스개론</span></td>
					<td id="td2"><span>자료구조론</span><br /> <span>과정지도 4</span></td>
				</tr>
				<thead>
					<tr>
						<th scope="col" colspan="2" id="th1">3학년</th>
						<th scope="col" colspan="2" id="th1">4학년</th>
					</tr>
				</thead>
				<tr>
					<td id="td1" style="border-right: 1px solid silver"><strong>
							1학기 </strong></td>
					<td id="td1" style="border-right: 1px solid black"><strong>
							2학기 </strong></td>
					<td id="td1" style="border-right: 1px solid silver"><strong>
							1학기 </strong></td>
					<td id="td1"><strong> 2학기 </strong></td>
				</tr>
				<tr>
					<td id="td2" style="border-right: 1px solid silver"><span>알고리즘</span><br />
						<span>과정지도 5</span></td>
					<td id="td2" style="border-right: 1px solid black"><span>과정지도 6</span></td>
					<td id="td2" style="border-right: 1px solid silver"><span>졸업지도</span></td>
					<td></td>
				</tr>
			</table>
			
			<form>		
			<div class="container" style="margin-top: 5%; font-size: 15pt; margin-left: 15%">
				<table style="width: 900px;">
					<tr>	
						<td><select name="grade" class="form-control"
							style="margin-left: 30px; border: 1px solid gray">
								<option value="1">1학년</option>
								<option value="2">2학년</option>
								<option value="3">3학년</option>
								<option value="4">4학년</option>
						</select></td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td><select name="term" class="form-control"
							style="margin-left: 30px; border: 1px solid gray">
								<option value="1">1학기</option>
								<option value="2">2학기</option>
						</select></td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td><input type="text" class="form-control"
							name="subjectCode" placeholder="과목코드"
							style="margin-left: 30px; margin-right:20px;width: 150px; border: 1px solid gray"></td>
						<td><input type="text" class="form-control"
							name="subjectName" placeholder="과목명"
							style="margin-right:250px;width: 150px; border: 1px solid gray"></td>
					</tr>
				</table>
			</div>
				<input type="submit" class="btn btn-outline-primary" value="저장하기"
					style="margin-left: 45%; margin-top: 5%; font-size: 15px;"/>
			</form>
		</div>

	</div>
</body>
</html>