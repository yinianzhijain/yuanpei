<#assign path=request.contextPath>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="">
    <meta name="author" content="">
	
    <title>Mobile Shop</title>
	
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css"  type="text/css">
	<link rel="stylesheet" href="css/bootstrap.css" />
	<!-- Custom CSS -->
    <link rel="stylesheet" href="css/style.css" type="text/css">
	
	
	<!-- Custom Fonts -->
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css"  type="text/css">
    <link rel="stylesheet" href="fonts/font-slider.css" type="text/css">
	
	<!-- jQuery and Modernizr-->
	<!--<script src="js/jquery-2.1.1.js"></script>-->
	<script type="text/javascript" src="js/jquery.js" ></script>
	
	<!-- Core JavaScript Files -->  	 
   <!-- <script src="js/bootstrap.min.js"></script>-->
	<script type="text/javascript" src="${path}/js/bootstrap.js" ></script>	
	<script type="text/javascript" src="${path}/js/md5.js"></script>
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript">
    	function addCar(gid){
    		window.location.href="addCar?gid="+gid;
    	}
    	function page(currentPage){
    		window.location.href="list?currentPage="+currentPage;
    	}
    	function queryCar(){
    		var uid = $("#uid").val();
    		window.location.href="queryCar?user_id="+uid;
    	}
    	function person(){
    		var u = $("#person").val();
    		if(u!=null && u!= ""){
    			window.location.href="http://localhost:8080/shopcar/html/"+u+"user.html";
    		}else{
    			alert("请先登录用户！")
    		}
    	}
    </script>
    <base href="${path}/">
</head>

<body>
	<!--Top-->
	<nav id="top">
		<div class="container">
			<div class="row">
				<div class="col-xs-6">
					<select class="language">
						<option value="English" selected>English</option>
						<option value="France">France</option>
						<option value="Germany">Germany</option>
					</select>
					<select class="currency">
						<option value="USD" selected>USD</option>
						<option value="EUR">EUR</option>
						<option value="DDD">DDD</option>
					</select>
				</div>
				<div class="col-xs-6">
					<span>
						<span>
							<#if user??>
								<img src="${path}/touImgs/${user.user_img}" class="img-circle" style="width: 30px; height: 30px;">
							</#if>
						</span>
						<#if user??>
							欢迎你，${user.user_name}！<a href="page/login02">[退出]</a>
							<#else>
							请<a href="page/login02">登录</a>
						</#if>
					</span>
					<ul class="top-link">
						<li>
							<a onclick="person()">
								<span class="glyphicon glyphicon-user"></span>个人中心
								<#if user??>
									<input type="hidden" value="${user.user_id}"  id="person">
									<#else>
									<input type="hidden" value=""  id="person">
								</#if>
								
							</a>
						</li>
						<li><a href="page/gadd"><span class="glyphicon glyphicon-envelope"></span>添加商品</a></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<!--Header-->
	<header class="container">
		<div class="row">
			<div class="col-md-4">
				<div id="logo"><img src="img/y1login.png"/></div>
			</div>
			<div class="col-md-4" style="margin-top: 12px;">
				<!-- 模糊查询 -->
				<form class="form-search" action="list">  
					<input type="text" class="input-medium search-query" name="keyWords" value="${keyWords!}">  
					<button type="submit" class="btn"><span class="glyphicon glyphicon-search"></span></button>  
				</form>
			</div>
			<div class="col-md-4" style="margin-top: 12px;">
			<#if user??>
				<input type="hidden" value="${user.user_id}" id="uid">
			</#if>
			<#assign sum = 0>
				<#list car1!?keys as k>
					<#assign sum = sum + car1[k]>
				</#list>
				<div id="cart"><a class="btn btn-1" onclick="queryCar()"><span class="glyphicon glyphicon-shopping-cart"></span>CART : ${sum} ITEM</a></div>
			</div>
		</div>
	</header>
	<!--Navigation-->
    <nav id="menu" class="navbar">
		<div class="container">
			<div class="navbar-header"><span id="heading" class="visible-xs">Categories</span>
			  <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
			</div>
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li><a href="#">主页</a></li>
					<li><a href="https://baike.baidu.com/item/%E8%B5%B5%E4%B8%BD%E9%A2%96/10075976?fr=aladdin">人物简介</a></li>
					<!-- <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">人物简介</a>
						<div class="dropdown-menu">
							<div class="dropdown-inner">
								<ul class="list-unstyled">
									<li><a href="#">人物信息</a></li>
									<li><a href="category.html">人物经历</a></li>
								</ul>
							</div>
						</div>
					</li> -->
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">电影</a>
						<div class="dropdown-menu">
							<div class="dropdown-inner">
								<ul class="list-unstyled">
									<li><a href="http://www.iqiyi.com/v_19rr9wabiw.html?vfm=2008_aldbd">乘风破浪</a></li>
									<li><a href="http://www.1905.com/vod/play/1130026.shtml?__hz=55a7cf9c71f1c9c4&ref=baidu1905com">我们的十年</a></li>
									<li><a href="http://v.qq.com/detail/w/wvu3jvge0yp2mue.html?ptag=baidu.aladdin.movie">女汉子真爱公式</a></li>
									<li><a href="category.html">一路惊喜</a></li>
									<li><a href="category.html">镖行天下之牡丹阁</a></li>
								</ul>
							</div> 
						</div>
					</li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">电视剧</a>
						<div class="dropdown-menu" style="margin-left: -203.625px;">
							<div class="dropdown-inner">
								<ul class="list-unstyled">
									<li><a href="category.html">诛仙青云志</a></li>
									<li><a href="category.html">盗墓笔记前传老九门</a></li>
									<li><a href="category.html">花千骨</a></li>
									<li><a href="category.html">杉杉来了</a></li>
									<li><a href="category.html">霸道总裁爱上我</a></li>
								</ul>
								<ul class="list-unstyled">
									<li><a href="category.html">楚乔传</a></li>
									<li><a href="category.html">七次的初吻</a></li>
									<li><a href="category.html">哥哥太爱我了怎么办</a></li>
									<li><a href="category.html">胭脂</a></li>
									<li><a href="category.html">加油吧实习生</a></li>
								</ul>
								<ul class="list-unstyled">
									<li><a href="category.html">蜀山战纪之剑侠传奇</a></li>
									<li><a href="category.html">Q-吉祥天宝	</a></li>
									<li><a href="category.html">不可预料的恋人</a></li>
									<li><a href="category.html">陆贞传奇</a></li>
									<li><a href="category.html">T极品男女日记T</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li><a href="http://baijiahao.baidu.com/s?id=1587031192065008980&wfr=spider&for=pc">2018新片上映</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!--//////////////////////////////////////////////////-->
	<!--///////////////////HomePage///////////////////////-->
	<!--//////////////////////////////////////////////////-->
    <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >网页模板</a></div>
	<div id="page-content" class="home-page">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<!-- Carousel -->
					<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators hidden-xs">
							<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>
						<!-- Wrapper for slides -->
						<div class="carousel-inner">
							<div class="item active">
								<center><img src="img/y1.png" alt="First slide"></center>
								<!-- Static Header -->
								<div class="header-text hidden-xs">
									<div class="col-md-12 text-center">
									</div>
								</div><!-- /header-text -->
							</div>
							<div class="item">
								<center><img src="img/y2.png" alt="Second slide"></center>
								<!-- Static Header -->
								<div class="header-text hidden-xs">
									<div class="col-md-12 text-center">
									</div>
								</div><!-- /header-text -->
							</div>
							<div class="item">
								<center><img src="img/y3.jpg" alt="Third slide"></center>
								<!-- Static Header -->
								<div class="header-text hidden-xs">
									<div class="col-md-12 text-center">
									</div>
								</div><!-- /header-text -->
							</div>
						</div>
						<!-- Controls -->
						<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
							<span class="glyphicon glyphicon-chevron-left"></span>
						</a>
						<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right"></span>
						</a>
					</div><!-- /carousel -->
				</div>
			</div>
			<div class="row">
				<div class="banner">
					<div class="col-sm-4">
						<img src="img/banner1.png" />
					</div>
					<div class="col-sm-4">
						<img src="img/banner2.jpg" />
					</div>
					<div class="col-sm-4">
						<img src="img/banner3.jpg" />
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12" style="background-color: #FFFFFF;">
					<div class="heading"><center><h3><font color="red">FILE INTRODUCTION</font></h3></center></div>
					<div class="products" style="background-color: #FFFFFF;">
<!-- 列表 -->

					<#list list as goods>
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<div class="product">
								<div class="image" ><a href="${goods.goods_pro!}"><img src="${path}/imgs/${goods.goods_imgpath}" style="height: 180px;"/></a></div>
								<div class="buttons">
									<a class="btn cart" onclick="addCar(${goods.id})"><span class="glyphicon glyphicon-shopping-cart" ></span></a>
									<a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
									<a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
									<div class="buttons">
								</div>
								</div>
								<div class="caption">
									<div class="name"><h3><a href="product.html">${goods.goods_name}</a></h3></div>
									<div class="price">$${goods.goods_price}<span>$99999</span></div>
									<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
								</div>
						</div>
					</div>
					</#list>
			</div>
			<center>
			<div>
				<button class="glyphicon glyphicon-fast-backward" onclick="page(1)">首页</button>
				<button class="glyphicon glyphicon-arrow-left" onclick="page(${param.pre!})">上一页</button>
				<button class="glyphicon glyphicon-arrow-right" onclick="page(${param.next!})">下一页</button>
				<button class="glyphicon glyphicon-fast-forward" onclick="page(${param.totalPage!})">尾页</button>
			</div>
			</center>
				<div class="row" style="margin-top: 25px;">
				<div class="banner">
					<div class="col-sm-6">
						<img src="img/sub-banner4.jpg" />
					</div>
					<div class="col-sm-6">
						<img src="img/sub-banner5.png" />
					</div>
				</div>
			</div>
			<div>
			<div class="row">
				<div class="col-lg-12">
					<div class="heading"><center><h2>CHARACTER IMAGE</h2></center></div>
					<div class="products"  style="background-color: #FFFFFF;">
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="product">
								<div class="image"><a href="product.html"><img src="img/ss11.jpg" /></a></div>
								<div class="buttons">
									<a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
									<a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
									<a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
								</div>
								<div class="caption">
									<div class="name"><h3><a href="product.html">Aliquam erat volutpat</a></h3></div>
									<div class="price">$122<span>$98</span></div>
									<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="product">
								<div class="image"><a href="product.html"><img src="img/ss1.jpg" /></a></div>
								<div class="buttons">
									<a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
									<a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
									<a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
								</div>
								<div class="caption">
									<div class="name"><h3><a href="product.html">Aliquam erat volutpat</a></h3></div>
									<div class="price">$122<span>$98</span></div>
									<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span></div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="product">
								<div class="image"><a href="product.html"><img src="img/ss3.jpg" /></a></div>
								<div class="buttons">
									<a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
									<a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
									<a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
								</div>
								<div class="caption">
									<div class="name"><h3><a href="product.html">Aliquam erat volutpat</a></h3></div>
									<div class="price">$122<span>$98</span></div>
									<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span></div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="product">
								<div class="image"><a href="product.html"><img src="img/ss7.jpg" /></a></div>
								<div class="buttons">
									<a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a>
									<a class="btn wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a>
									<a class="btn compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a>
								</div>
								<div class="caption">
									<div class="name"><h3><a href="product.html">Aliquam erat volutpat</a></h3></div>
									<div class="price">$122<span>$98</span></div>
									<div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<div class="container">
			<div class="wrap-footer">
				<div class="row">
					<div class="col-md-3 col-footer footer-1">
						<img src="img/logofooter.png" />
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
					</div>
					<div class="col-md-3 col-footer footer-2">
						<div class="heading"><h4>Customer Service</h4></div>
						<ul>
							<li><a href="#">About Us</a></li>
							<li><a href="#">Delivery Information</a></li>
							<li><a href="#">Privacy Policy</a></li>
							<li><a href="#">Terms & Conditions</a></li>
							<li><a href="#">Contact Us</a></li>
						</ul>
					</div>
					<div class="col-md-3 col-footer footer-3">
						<div class="heading"><h4>My Account</h4></div>
						<ul>
							<li><a href="#">My Account</a></li>
							<li><a href="#">Brands</a></li>
							<li><a href="#">Gift Vouchers</a></li>
							<li><a href="#">Specials</a></li>
							<li><a href="#">Site Map</a></li>
						</ul>
					</div>
					<div class="col-md-3 col-footer footer-4">
						<div class="heading"><h4>Contact Us</h4></div>
						<ul>
							<li><span class="glyphicon glyphicon-home"></span>California, United States 3000009</li>
							<li><span class="glyphicon glyphicon-earphone"></span>+91 13716653073</li>
							<li><span class="glyphicon glyphicon-envelope"></span>656828175@qq.com</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						Copyright &copy; 版权所有，侵权必究！！！<a target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
					</div>
					<div class="col-md-6">
						<div class="pull-right">
							<ul>
								<li><img src="images/visa-curved-32px.png" /></li>
								<li><img src="images/paypal-curved-32px.png" /></li>
								<li><img src="images/discover-curved-32px.png" /></li>
								<li><img src="images/maestro-curved-32px.png" /></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>
