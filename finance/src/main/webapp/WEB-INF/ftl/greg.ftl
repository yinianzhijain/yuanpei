<#assign path=request.contextPath>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册</title>
		<link rel="stylesheet" href="${path}/css/bootstrap.min.css" />
		<script type="text/javascript" src="${path}/js/jquery.js" ></script>
		<script type="text/javascript" src="${path}/js/jquery.metadata.js" ></script>
		<script type="text/javascript" src="${path}/js/jquery.validate.min.js"></script>
		<script type="text/javascript" src="${path}/js/bootstrap.js" ></script>
		<script type="text/javascript" src="${path}/js/imgutil.js" ></script>
		<script type="text/javascript" src="${path}/js/md5.js" ></script>
		<script type="text/javascript">
		function reggg(){
			$("#user_pwd").val(hex_md5($("#user_pwd").val()));
			$("#ff").submit();
		}
		/* $().ready(function() {
			$(function(){
				$("#signupForm").validate({
					rules: {
						name:{
							required: true,
							minlength: 2
						},
						price:{
							required: true,
							minlength: 2
						}
					},
					messages: {
						name:{
							required: "Please enter a username",
							minlength: "Your username must consist of at least 2 characters"
						},
						price:{
							required: "Please enter a username",
							minlength: "Your username must consist of at least 2 characters"
						}

					}
				})
			})
		} */
		
		</script>
<base href="${path}/">
</head>
<body>
	<div class="container">
		<div class="row">
		<div class="col-md-2 col-md-offset-3"><h2>注册</h2></div>
		</div>
		<form  id="ff" class="form-horizontal" action="reg" enctype="multipart/form-data" method="post" id="signupForm">
			<div class="form-group">
				<label class="col-md-3 control-label" for="name">账号</label>
				<div class="col-md-3">
					<input type="text" class="form-control" name="user_account" id="user_account">
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label" for="price">密码</label>
				<div class="col-md-3">
					<input type="password" class="form-control" name="user_pwd" id="user_pwd">
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label" for="gcount">昵称</label>
				<div class="col-md-3">
					<input type="text" class="form-control" name="user_name" id="user_name">
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label" for="desci">邮箱</label>
				<div class="col-md-3">
					<input type="email" class="form-control" name="user_email" id="user_email">
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label" for="img">头像</label>
				<div class="col-md-3">
					<input onchange="previewImg('img','showimg','showDiv')" type="file" name="img" id="img">
					<div id="showDiv" style="width: 150px;height: 150px;border: 1px solid gray;">
						<img id="showimg" src="" style="width: 150px;height: 150px;">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-4 col-md-offset-4">
					<input type="button" value="注册" class="btn btn-success" onclick="reggg()"> 
				</div>
			</div>
		</form>
	</div>
</body>
</html>