<#assign path=request.contextPath>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="${path}/css/bootstrap.css" />
		<script type="text/javascript" src="${path}/js/jquery.js" ></script>
		<script type="text/javascript" src="${path}/js/bootstrap.js" ></script>
		<script type="text/javascript" src="${path}/js/imgutil.js" ></script>
		<script type="text/javascript" src="${path}/js/md5.js"></script>
		<script type="text/javascript">
			function upd(){
				alert()
				$("#password").val(hex_md5($("#password").val()));
				$("#ff").submit();
			}
		</script>
		<base href="${path}/">
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
					<form class="form-horizontal" id="ff" action="updUser" enctype="multipart/form-data" method="post">
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">昵称</label>
					    <div class="col-sm-6">
					      <input type="text" value="${user.user_name}" class="form-control" id="username" placeholder="username" name="user_name">
					   	  <input type="hidden" value="${user.user_id}" name="user_id">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">账号</label>
					    <div class="col-sm-6">
					      <input type="text" value="${user.user_account?c}" class="form-control" id="account" placeholder="account"  name="user_account" readonly="readonly">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
					    <div class="col-sm-6">
					      <input type="password" value="${user.user_pwd}" class="form-control" id="password" placeholder="password"  name="user_pwd">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">email</label>
					    <div class="col-sm-6">
					      <input type="email" value="${user.user_email}" class="form-control" id="email" placeholder="jane.doe@example.com"  name="user_email"> 
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">头像</label>
					    <div class="col-sm-6">
					      <span>
					      	<input onchange="previewImg('img','showimg','showDiv')" type="file" name="img" id="img">
								<div class="row">
									<div id="showDiv" class="col-md-3">
										<img id="showimg"  class="img-circle" src="${path}/touImgs/${user.user_img}" style="width: 60px; height: 60px;">
									</div>
								</div>
					      </span>
					      
					    </div>
					  </div>
					  <div class="row">
					  	<div class="col-md-4 col-md-offset-2">
					  		<a onclick="upd()" class="btn btn-warning" style="width: 190px;">修改</a>
					  	</div>
					  </div>
					</form>
					
			</div>
		</div>
	</body>
</html>
