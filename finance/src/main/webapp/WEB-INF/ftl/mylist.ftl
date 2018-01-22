<html>
  <head>
    <title>主页面</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
		<script type="text/javascript" src="js/bootstrap.js" ></script>
		<script type="text/javascript" src="js/bootstrap.min.js" ></script>
		<script type="text/javascript" src="js/jquery.js" ></script>
		<script type="text/javascript">
			function del(id){
				alert(id)
			}
			function upd(id){
				alert(id)
			}
		</script>
  </head>
  <body>
  <table class="table table-bordered table-hover">
  <tr class="success" align="center">
  	<td>学号</td>
  	<td>姓名</td>
  	<td>年龄</td>
  	<td>性别</td>
  	<td>生日</td>
  	<td>操作</td>
  </tr>
<#list list as shop>
<tr class="warning" align="center">
	<td>${shop.id}</td>
  	<td>${shop.name}</td>
  	<td>${shop.age}</td>
  	<td>
  	<#if shop.sex==0>女
  	<#elseif shop.sex==1>男
  	</#if>
  	</td>
  	<td>${shop.birthday}</td>
  	<td>
  		<button class="btn btn-success btn-xs" onclick="add()">添加</button>
  		<button class="btn btn-danger btn-xs" onclick="del(${shop.id})">删除</button>
  		<button class="btn btn-warning btn-xs" onclick="upd(${shop.id})">修改</button>
  	</td>
</tr>
</#list>
</table>
<div style="margin-top: 30px; background-color: deepskyblue; width: 300px; margin: auto auto;padding: 20px;" >
			<div class="col">
				<div class="glyphicon glyphicon-user col-*-2" style="width: ;"></div>
				<div class="glyphicon glyphicon-cog col-lg-offset-10"></div>
			</div>
			<div style="height: 80px; width: 80px; margin:auto;">
				<img src="img/00b520b0115300b1!400x400_big.jpg" class="img-circle" style="width: 80px; height: 80px; margin: auto auto;" align="center">
			</div>
			<form class="form-horizontal">
			  <div class="form-group" style="margin-top: 20px;">
			   
			    <div class="col-sm-8 col-lg-offset-2">
			      <input type="text" class="form-control" placeholder="请输入账号">
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-8 col-lg-offset-2">
			      <input type="password" class="form-control" id="inputPassword3" placeholder="请输入密码">
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="checkbox col-sm-8 col-lg-offset-2">
				    <label>
				      <input type="checkbox">记住密码&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				      <input type="checkbox">自动登录
				    </label>
				  </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-4 col-sm-8">
			      <button type="submit" class="btn btn-success btn-xs">登录</button>
			      <button type="submit" class="btn btn-success btn-xs">注册</button>
			    </div>
			  </div>
			</form>
		</div>
  </body>
</html>