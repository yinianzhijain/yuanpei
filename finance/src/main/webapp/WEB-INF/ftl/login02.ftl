<#assign path=request.contextPath>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="${path}/css/bootstrap.css" />
		<script type="text/javascript" src="${path}/js/jquery.js" ></script>
		<script type="text/javascript" src="${path}/js/bootstrap.js" ></script>
		<script type="text/javascript" src="${path}/js/md5.js"></script>
		<script type="text/javascript">
			function login(){
				var account = $("#inputAccount3").val();
				var pwd = $("#inputPassword3").val();
				var str = getCookie("loginInfo");
		        str = str.substring(1,str.length-1);
		        var username = str.split(",")[0];
		        var pwd1 = str.split(",")[1];
				if(account!=username || pwd!=pwd1){
					$("#inputPassword3").val(hex_md5($("#inputPassword3").val()));
					var remFlag = $("#checkbox1").is(':checked');
					$("#remFlag").val("1");
					$("#ff").submit();
				}else{
					$("#ff").submit();
				}
				
			}
			$(document).ready(function(){
			//记住密码功能
		        var str = getCookie("loginInfo");
		        str = str.substring(1,str.length-1);
		        var username = str.split(",")[0];
		        var password = str.split(",")[1];
		        var rem = str.split(",")[2];
		        //自动填充用户名和密码
		        $("#inputAccount3").val(username);
		        $("#inputPassword3").val(password);
		        if(rem=="1"){
		        	$("#checkbox1").attr("checked",true);
		        	$("#rem").val(1);
		        } 
			});
			/* $(document).ready(function(){
				$.ajax({
					url:"CookieList",
					dataType:"json",
					data:"",
					success:function(data){
						var aa = data;
						
					}
				})
			}); */
			//获取cookie
			function getCookie(cname) {
			    var name = cname + "=";
			    var ca = document.cookie.split(';');
			    for(var i=0; i<ca.length; i++) {
			        var c = ca[i];
			        while (c.charAt(0)==' ') c = c.substring(1);
			        if (c.indexOf(name) != -1) return c.substring(name.length, c.length);
			    }
			    return "";
			}
			//记住密码功能
			function remember(){
					var remFlag = $("#checkbox1").is(':checked');
				    if(remFlag==true){ //如果选中设置remFlag为1
				    	$("#remFlag").val("1");
				       /*  //cookie存用户名和密码,回显的是真实的用户名和密码,存在安全问题.
				        var conFlag = confirm("确认记住密码?");
				        if(conFlag){ //确认标志
				            $("#remFlag").val("1");
	 			        	//var pp =  $("#inputPassword3").val();
				        	//$("#pwd").val(pp); 
				        }else{
				            $("input[type='checkbox']").removeAttr('checked');
				            $("#remFlag").val("");
				        } */
				    }else{ //如果没选中设置remFlag为""
				        $("#remFlag").val("");
				    }
			}
		</script>
		<base href="${path}/">
	
	</head>
	<body style="background-image: url(img/f.jpg);">
		<div >
			<!--style="max-width:100%;overflow:hidden;"-->
			<div class="row">
				<div class="col-md-6 col-md-offset-3" style="background-color: ; width: 400px; height: 300px; padding-top: 140px;">
					<!--<img src="img/aa.png" style="width: 400px; height: 150px;"/>-->
					<h1><font color="blue">登录界面</font></h1>
				</div>
			</div>
			<div class="row" style="margin-top: 10px;">
				<div class="col-md-3" style="background-color: ;">
					<div class="col-md-4" style="background-color: ;">
					</div>
					<div class="col-md-4" style="background-color:;">
						<div class="" style="margin-left: 45px;">
								<img src="img/一点一点成熟.jpg" class="img-circle" style="width: 80px; height: 80px;">
							</div>
					</div>
					<div class="col-md-4" style="background-color: ;">
							
					</div>
				</div>
				<div class="col-md-5" style="background-color: ;">
					<form  id="ff" class="form-horizontal" action="login" method="post">
					  <div class="form-group">
					    <div class="col-sm-6" >
					      <div>
					        <label>
					          <input type="text" class="form-control" id="inputAccount3" placeholder="Account" name="user_account">
					          <input type="password" class="form-control" id="inputPassword3" placeholder="Password" name="user_pwd">
					          <input type="hidden" name="remFlag" id="remFlag">
					          <input type="hidden" name="rem" id="rem" value="0">
					          <input type="hidden" name="delCookie" id="delCookie">
					          <input type="checkbox" id="checkbox1" onchange="remember()">记住密码&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					          <input type="checkbox">自动登录
					        </label>
					      </div>
					    </div>
					    <div style="margin-top: 5px; background-color:;">
					    	<a href="page/greg">注册账号</a><br /><br />
					    	<a href="#">找回密码</a>
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <div class="col-sm-8">
					      <button type="button" onclick="login()" class="btn btn-success" style="width: 180px;">登录</button>
					    </div>
					  </div>
					</form>
				</div>
				<div class="col-md-1" style="background-color: ;">
					
				</div>
			</div>
			<div class="row" style="width: 400px; height: 200px;">
				<div class="col-md-6" style="background-color:;">
					
				</div>
				<div class="col-md-6" style="background-color:;">
					
				</div>
			</div>
		</div>
	</body>
</html>
