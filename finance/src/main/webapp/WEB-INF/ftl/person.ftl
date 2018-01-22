
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="../css/bootstrap.css" />
		<script type="text/javascript" src="../js/jquery.js" ></script>
		<script type="text/javascript" src="../js/bootstrap.js" ></script>
	</head>
	<body>
		<div class="container">
			<center>
				<div class="row">
					<div class="col-md-3 col-md-offset-4" >
						<h2>个人详细信息</h2>
					</div>
				</div>
			</center>
			<div class="row">
				<div class="col-md-6 col-md-offset-3" >
					<form class="form-horizontal">
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">昵称</label>
					    <div class="col-sm-6">
					      <input type="text" value="${u.user_name}" class="form-control" id="inputEmail3" placeholder="username" readonly="readonly">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">账号</label>
					    <div class="col-sm-6">
					      <input type="text" value="${u.user_account?c}" class="form-control" id="inputPassword3" placeholder="account" readonly="readonly">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
					    <div class="col-sm-6">
					      <input type="password" value="${u.user_pwd}" class="form-control" id="inputPassword3" placeholder="password" readonly="readonly">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">email</label>
					    <div class="col-sm-6">
					      <input type="email" value="${u.user_email}" class="form-control" id="inputPassword3" placeholder="jane.doe@example.com" readonly="readonly">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">头像</label>
					    <div class="col-sm-6">
					      <span>
					      	<img src="../touImgs/${u.user_img}" class="img-circle" style="width: 60px; height: 60px;">
					      </span>
					    </div>
					  </div>
					  <div class="row">
					  	<div class="col-md-4 col-md-offset-2">
					  		<a href="http://localhost:8080/shopcar/page/updUser" class="btn btn-warning" style="width: 190px;">修改个人信息</a>
					  	</div>
					  </div>
					</form>
					
			</div>
		</div>
	</body>
</html>
