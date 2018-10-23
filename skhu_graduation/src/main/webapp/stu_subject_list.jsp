<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="https://bootswatch.com/4/litera/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/innks/NanumSquare/master/nanumsquare.min.css">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="res/css/header.css">
<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
<script src="res/js/header.js"></script>
<!-- button drop down 링크 -->
<link rel="stylesheet" href="css/stu_subject_list.css">

<title></title>
</head>
<body>
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
	<div id="jb-content">
				<div style="margin-left: 15%; margin-top: 5%;">
					<h3>수강 목록</h3>
				</div>
		
			<div id="search" style="margin-top: 1%; font-size: 10pt;">
				<div id="class1"
					style="display: inline; margin-left: 72%; font-size: 12pt;">
					<select class="custom-select" id="subjectList" style="width: 100px; height:40px;">
						<option>전체</option>
						<option>전공필수</option>
						<option>전공선택</option>
						<option>교양필수</option>
						<option>교양선택</option>
					</select> &nbsp;
					<button type="button" class="btn btn-primary"
						style="font-size: 12pt">조회</button>
				</div>
			</div>
	
	
			<div class="table-responsive"
				style="margin-left: 15%; font-size: 14pt; margin-top: 3%">
				<table class="table" style="width: 70%; margin-bottom: 100px;">
					<thead>
						<tr>
							<th>년도</th>
							<th>학기</th>
							<th>과목코드</th>
							<th>과목명</th>
							<th>이수구분</th>
							<th>학점</th>
							<th>성적등급</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>2015</td>
							<td>1학기</td>
							<td>AC00001</td>
							<td>채플(명상)</td>
							<td>교양필수</td>
							<td>0</td>
							<td>P</td>
							<td>
								<div class="dropdown">
									<button class="dropbtn">&nbsp;변경&nbsp;</button>
									<div class="dropdown-content">
										<a onclick="window.open('stu_replace_first.html','수강한강의목록','width=600,height=400,left=600, top=300, location=no,status=no,scrollbars=yes');">대체과목변경(초수강)</a> 
										<a onclick="window.open('stu_replace_repeat.html','수강한강의목록','width=600,height=400,left=600, top=300, location=no,status=no,scrollbars=yes');">대체과목변경(재수강)</a> 
										<a onclick="window.open('stu_major_admit.html','수강한강의목록','width=600,height=400,left=600, top=300, location=no,status=no,scrollbars=yes');">전공인정승인</a>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>2015</td>
							<td>1학기</td>
							<td>AC00011</td>
							<td>인문학의 세계:삶을위한공부</td>
							<td>교양필수</td>
							<td>3</td>
							<td>A0</td>
							<td>
								<div class="dropdown">
									<button class="dropbtn">&nbsp;변경&nbsp;</button>
									<div class="dropdown-content">
										<a href="#">대체과목변경(초수강)</a> <a href="#">대체과목변경(재수강)</a> 
										<a href="#">전공인정승인</a>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>2015</td>
							<td>1학기</td>
							<td>AE00022</td>
							<td>정보사회론</td>
							<td>교양선택</td>
							<td>3</td>
							<td>A+</td>
							<td>
								<div class="dropdown">
									<button class="dropbtn">&nbsp;변경&nbsp;</button>
									<div class="dropdown-content">
										<a href="#">대체과목변경(초수강)</a> <a href="#">대체과목변경(재수강)</a> <a
											href="#">전공인정승인</a>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>2015</td>
							<td>1학기</td>
							<td>AF00005</td>
							<td>컴퓨터그래픽 활용</td>
							<td>교양선택</td>
							<td>3</td>
							<td>B+</td>
							<td>
								<div class="dropdown">
									<button class="dropbtn">&nbsp;변경&nbsp;</button>
									<div class="dropdown-content">
										<a href="#">대체과목변경(초수강)</a> <a href="#">대체과목변경(재수강)</a> <a
											href="#">전공인정승인</a>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>2015</td>
							<td>1학기</td>
							<td>AF00011</td>
							<td>이산수학</td>
							<td>교양선택</td>
							<td>3</td>
							<td>A+</td>
							<td>
								<div class="dropdown">
									<button class="dropbtn">&nbsp;변경&nbsp;</button>
									<div class="dropdown-content">
										<a href="#">대체과목변경(초수강)</a> <a href="#">대체과목변경(재수강)</a> <a
											href="#">전공인정승인</a>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>2015</td>
							<td>1학기</td>
							<td>AF00021</td>
							<td>SNS활용</td>
							<td>교양선택</td>
							<td>3</td>
							<td>B0</td>
							<td>
								<div class="dropdown">
									<button class="dropbtn">&nbsp;변경&nbsp;</button>
									<div class="dropdown-content">
										<a href="#">대체과목변경(초수강)</a> <a href="#">대체과목변경(재수강)</a> <a
											href="#">전공인정승인</a>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>2015</td>
							<td>1학기</td>
							<td>IC00001</td>
							<td>C프로그래밍Ⅰ</td>
							<td>전공필수</td>
							<td>3</td>
							<td>A0</td>
							<td>
								<div class="dropdown">
									<button class="dropbtn">&nbsp;변경&nbsp;</button>
									<div class="dropdown-content">
										<a href="#">대체과목변경(초수강)</a> <a href="#">대체과목변경(재수강)</a> <a
											href="#">전공인정승인</a>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>2015</td>
							<td>1학기</td>
							<td>IC00016</td>
							<td>과정지도</td>
							<td>전공필수</td>
							<td>1</td>
							<td>P</td>
							<td>
								<div class="dropdown">
									<button class="dropbtn">&nbsp;변경&nbsp;</button>
									<div class="dropdown-content">
										<a href="#">대체과목변경(초수강)</a> <a href="#">대체과목변경(재수강)</a> <a
											href="#">전공인정승인</a>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>2015</td>
							<td>2학기</td>
							<td>AE00001</td>
							<td>영상시대의 이해</td>
							<td>교양선택</td>
							<td>3</td>
							<td>B+</td>
							<td>
								<div class="dropdown">
									<button class="dropbtn">&nbsp;변경&nbsp;</button>
									<div class="dropdown-content">
										<a href="#">대체과목변경(초수강)</a> <a href="#">대체과목변경(재수강)</a> <a
											href="#">전공인정승인</a>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>2015</td>
							<td>2학기</td>
							<td>AF00015</td>
							<td>과학과 종교</td>
							<td>교양선택</td>
							<td>3</td>
							<td>A0</td>
							<td>
								<div class="dropdown">
									<button class="dropbtn">&nbsp;변경&nbsp;</button>
									<div class="dropdown-content">
										<a href="#">대체과목변경(초수강)</a> <a href="#">대체과목변경(재수강)</a> <a
											href="#">전공인정승인</a>
									</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
	</div>
			<div id="page">
				<nav aria-label="Page navigation example">
					<ul class="pagination justify-content-center">
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								<span class="sr-only">Previous</span>
						</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
								class="sr-only">Next</span>
						</a></li>
					</ul>
				</nav>
	
			</div>
	</div>
</body>
</html>