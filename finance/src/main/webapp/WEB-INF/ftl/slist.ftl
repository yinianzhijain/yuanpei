<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<script type="text/javascript" src="js/jquery.js" ></script>
		<script type="text/javascript" src="js/bootstrap.js" ></script>
		<script type="text/javascript">
		</script>
<style>
.cart {
	height: 50px;  
	width: 180px;
	background: black;
	border-radius: 10px;
}

.cart:hover {
	height: 50px;
	width: 180px;
	background: #676666;
	border-radius: 10px;
}
</style>
</head>

<body>
	<div class="container">
		<div class="row" style="background: #F6F6F6; height: 40px;">
			<div class="col-md-3 col-md-offset-1" style="margin-top: 10px;">
				欢迎你，XXX <a href="">[退出]</a>
			</div>
			<div class="col-md-2 col-md-offset-6" style="margin-top: 10px;">
				<a href="" class="glyphicon glyphicon-user">个人中心</a>
				<a href="page/sadd" class="glyphicon glyphicon-plus-sign">添加商品</a>
			</div>
		</div>
		<div class="row" style="margin-top: 40px;">
			<div class="col-md-4">
				<img src="img/logo.png" />
			</div>
			<div class="col-md-4">
				<div class="input-group input-group-lg" style="margin-top: 10px;">
					<input class="form-control" placeholder="请输入内容" /> <span
						class="input-group-btn"> <input type="button"
						class="btn btn-info" value="搜索" />
					</span>
				</div>
			</div>
			<div class="col-md-3 col-md-offset-1">
				<div class="cart" style="margin-top: 10px;">
					<center>
						<span class="glyphicon glyphicon-shopping-cart"
							style="color: white; font-size: 25px; line-height: 50px;">&nbsp;共6件</span>
					</center>
				</div>
			</div>
		</div>
		<div class="row" style="margin-top: 40px;">
			<nav class="navbar navbar-inverse">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">Brand</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="active"><a href="#">Link <span
									class="sr-only">(current)</span></a></li>
							<li><a href="#">Link</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">Dropdown <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li role="separator" class="divider"></li>
									<li><a href="#">Separated link</a></li>
									<li role="separator" class="divider"></li>
									<li><a href="#">One more separated link</a></li>
								</ul></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li><a href="#">Link</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">Dropdown <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li role="separator" class="divider"></li>
									<li><a href="#">Separated link</a></li>
								</ul></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>

		</div>
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">

			<!--
               	
                -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="img/b1.jpg" alt="...">
					<div class="carousel-caption"></div>
				</div>
				<div class="item">
					<img src="img/b2.jpg" alt="...">
					<div class="carousel-caption"></div>
				</div>
				<div class="item">
					<img src="img/b3.jpg" alt="...">
					<div class="carousel-caption"></div>
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		
	</div>

</body>

</html>