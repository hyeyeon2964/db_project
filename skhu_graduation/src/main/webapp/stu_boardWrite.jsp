<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://bootswatch.com/4/litera/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.rawgit.com/innks/NanumSquareRound/master/nanumsquareround.min.css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="res/css/header.css">
<script src="http://code.jquery.com/jquery-latest.min.js"
	type="text/javascript"></script>
<script src="js/header.js"></script>
<link rel="stylesheet" href="res/css/board.css">

<title>俳持-惟獣毒 越床奄 </title>
</head>
<body>
	<div id="jb-container">
		<div id="jb-header">
		<div id='cssmenu'>
			<ul>
				<li><a href='#'
					style="padding: 8px; padding-left: 15px; padding-right: 0px;"><img src="res/img/logo.jpg" width="29" height="29"></a></li>
				<li><a href='#'><span>蟹税噌穣推闇</span></a></li>
				<li><a href='#'><span>呪悪鯉系 繕噺</span></a></li>
				<li><a href='#'><span>噌穣推闇 繕噺</span></a></li>
				<li><a href='#'><span>因走紫牌 貢 庚税</span></a></li>
				<li style="float: right"><a href='#'><span>LOGOUT</span></a></li>
				<li style="float: right"><a href='#'><span>鯵昔舛左痕井</span></a></li>
			</ul>
		</div>
	</div>
		<div id="jb-content">
			<h2>
				<i>&nbsp;&nbsp;</i> 越床奄
			</h2>

			<hr>
		</div>
		
		<div id="boardWrite"style="margin-top:-30px;max-width: 900px;">

			<div class="container">
				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-10">
						<form action=".jsp" method="post">

							<div class="table-responsive">
								<table class="table table-bordered" style="font-size: 17px;">
									<tr>
										<td style="background-color: #4582EC;color: white"><strong>戚硯</strong></td>
										<td colspan="3"><input type="text" class="form-control" name="name"></td>
									</tr>

									<tr>
										<td style="background-color: #4582EC;color: white"><strong>薦鯉</strong></td>
										<td colspan="3"><input type="text" class="form-control" name="title"></td>
									</tr>
									<tr>
										<td style="background-color: #4582EC;color: white"><strong>搾腔腰硲</strong></td>
										<td colspan="3"><input type="password"
											class="form-control" name="password"></td>
									</tr>
									<tr>
										<td style="background-color: #4582EC;color: white"><strong>穿端 因鯵</strong></td>
										<td><input type="checkbox" name="publish" style="margin-top:10px; margin-left:10px; margin-right:10px;width:25px;height:25px;"/></td>
										<td style="background-color: #4582EC;color: white"><strong>歎採 督析</strong></td>
										<td><input type="file" class="form-control" name="file" id="file"/></td>
										
									</tr>
									<tr>
										<td style="background-color: #4582EC;color: white"><strong>鎧遂</strong></td>
										<td colspan="3"><textarea name="content" class="form-control" style="width: 100%; height: 200px;">噌穣推闇戚 更拭推ばばばばばばばばばばばばばばばばばばばばばばばばばばばばばばばばばばばばばば</textarea></td>
									</tr>
									
									
								</table>
								<div class="form-group" style="margin-top:30px; margin-left:250px;">
									<input type="submit" value="去系馬奄" class="btn btn-outline-primary">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<button type="button" class="btn btn-primary">鯉系生稽</button>
								</div>
							</div>

					</form>
				</div>
			</div>

		</div>
	</div>
	</div>
</body>
</html>