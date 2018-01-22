<#assign path=request.contextPath>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加商品</title>
		<link rel="stylesheet" href="${path}/css/bootstrap.min.css" />
		<script type="text/javascript" src="${path}/js/jquery.js" ></script>
		<script type="text/javascript" src="${path}/js/jquery.metadata.js" ></script>
		<script type="text/javascript" src="${path}/js/jquery.validate.min.js"></script>
		<script type="text/javascript" src="${path}/js/bootstrap.js" ></script>
		<script type="text/javascript" src="${path}/js/imgutil.js" ></script>
		<script>
		/* $().ready(function() {  
			 $("#signupForm").validate();  
		});  */ 
		$().ready(function() {
			$(function(){
				$("#signupForm").validate({
					rules: {
						goods_name:{
							required: true
						},
						goods_stock:{
							required: true
						}
					},
					messages: {
						goods_name:{
							required: "请填写上商品名称"
						},
						goods_stock:{
							required: "请填写上商品库存"
						}
					}
				})
			})
		}
		</script>
<base href="${path}/">
</head>
<body>
	<div class="container">
		<div class="row">
		<div class="col-md-2 col-md-offset-3"><h2>添加商品</h2></div>
		</div>
		<form class="form-horizontal" action="save" enctype="multipart/form-data" method="post" id="signupForm">
			<div class="form-group">
				<label class="col-md-3 control-label" for="name">商品名称</label>
				<div class="col-md-3">
					<input type="text" class="form-control" name="goods_name" id="name">
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label" for="price">商品价格</label>
				<div class="col-md-3">
					<input type="text" class="form-control" name="goods_price" id="price">
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label" for="gcount">商品库存</label>
				<div class="col-md-3">
					<input type="text" class="form-control" name="goods_stock" id="gcount">
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label" for="img">商品图片</label>
				<div class="col-md-3">
					<input onchange="previewImg('img','showimg','showDiv')" type="file" name="img" id="img">
					<div id="showDiv" style="width: 150px;height: 150px;border: 1px solid gray;">
						<img id="showimg" src="" style="width: 150px;height: 150px;">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label" for="desci">商品描述</label>
				<div class="col-md-4">
					<textarea name="goods_desc" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-4 col-md-offset-4">
					<input type="submit" value="新增商品" class="btn btn-success"> 
					<!-- <button class="btn btn-success" onclick="add()">新增商品</button> -->
				</div>
			</div>
		</form>
	</div>
</body>
</html>