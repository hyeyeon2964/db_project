<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="https://bootswatch.com/4/litera/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">
<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="${R}res/css/header.css">
<script src="${R}res/js/header.js"></script>
<link rel="stylesheet" href="${R}res/css/board.css">
<title>답변 작성 및 수정</title>
</head>
<body>
	<div id="jb-container">
		<div id="jb-header">
			<div id='cssmenu'>
				<c:if test="${ user.role == '관리자' }">
				<ul>
					<li>
						<a style="padding: 8px; padding-left: 15px; padding-right: 0px;">
							<img src="${R}res/img/logo.jpg" width="29" height="29">
						</a>
					</li>
					<li><a href='../admin/admin_stu_search'><span>학생 조회</span></a></li>
					<li class='active has-sub'><a><span>졸업요건 수정</span></a>
						<ul>
							<li class='last'><a href='../admin/admin_allSearchEdit'><span>졸업요건표 수정</span></a></li>
							<li class='last'><a href='../admin/admin_change_credit'><span>필수학점 수정</span></a></li>
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
					<li style="float: right"><a href='../user/logout'><span>LOGOUT</span></a></li>
					<li style="float: right"><a href='../user/check_password'><span>개인정보변경</span></a></li>
				</ul>
			</c:if>
			<c:if test="${ user.role == '학생' }">
				<ul>
				<li><a style="padding: 8px; padding-left: 15px; padding-right: 0px;">
					<img src="${R}res/img/logo.jpg" width="29" height="29"></a>
				</li>
				<li><a href='../student/stu_main'><span>나의졸업요건</span></a></li>
				<li><a href='../student/stu_subject_list'><span>수강목록 조회</span></a></li>
				<li><a href='../student/stu_allSearch'><span>졸업요건 조회</span></a></li>
				<li><a href='../student/stu_replace_list'><span>대체과목 조회</span></a></li>
				<li><a href='../user/board'><span>공지사항 및 문의</span></a></li>
				<li style="float: right"><a href='../user/logout'><span>LOGOUT</span></a></li>
				<li style="float: right"><a href='../user/check_password'><span>개인정보변경</span></a></li>
			</ul>
			</c:if>
			<c:if test="${ user.role == '교수' }">
				<ul>
				<li><a style="padding: 8px; padding-left: 15px; padding-right: 0px;">
					<img src="${R}res/img/logo.jpg" width="29" height="29"></a>
				</li>
				<li><a href='../professor/professor_stu_search'><span>학생 조회</span></a></li>
				<li><a href='../professor/professor_allSearch'><span>졸업요건 조회</span></a></li>
				<li><a href='../user/board'><span>공지사항 및 문의</span></a></li>
				<li style="float: right"><a href='../user/logout'><span>LOGOUT</span></a></li>
				<li style="float: right"><a href='../user/check_password'><span>개인정보변경</span></a></li>
			</ul>
			</c:if>
			</div>
		</div>
		<div id="jb-content">
			<div id="boardWrite" style="margin-top:-30px; max-width: 800px;">
				<h2>&nbsp;&nbsp;답변 ${ board.boardId < 0 ? "등록" : "수정" }</h2>
				<hr>
				<div class="container">
					<form method="post">
						<table class="table table-bordered" align="center" style="margin-top: 40px; font-size: 17px; text-align: center; max-width: 640px; width: 80%;">
							<tr>
								<td style="background-color: #4582EC; color: white; width: 100px; padding-top: 18px"><strong>제목</strong></td>
								<td colspan="3">
										<input type="text" class="form-control" name="title" value="${ board.title }">
								</td>
							</tr>
							<tr>
								<td style="background-color: #4582EC; color: white; height: 260px; padding-top: 18px"><strong>답변내용</strong></td>
								<td colspan="3">
									<textarea name="content" class="form-control" style="width: 100%; height: 260px;">${ board.content }</textarea>
								</td>
							</tr>
						</table>
						<input type="hidden" name="groupNumber" value="${ board.groupNumber }" />
						<div class="form-group" align="center" style="margin-top: 40px">
							<button type="submit" class="btn btn-outline-primary">등록하기</button>&nbsp;&nbsp;
							<c:if test="${ board.boardId > 0 }">
        						<a href="answerDelete?id=${ board.boardId }" class="btn btn-outline-danger" data-confirm-delete>삭제하기</a>&nbsp;&nbsp;
							</c:if>
							<a href="board" class="btn btn-outline-primary">목록으로</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>