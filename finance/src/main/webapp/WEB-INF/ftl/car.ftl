<#assign path=request.contextPath>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/bootstrap.css" />
		<script type="text/javascript" src="js/jquery.js" ></script>
		<script type="text/javascript" src="js/bootstrap.js" ></script>
		<script type="text/javascript">
		function quan(obj){
			if(obj.checked==true){
				$("input[name='ck']").attr("checked",true);
				gcount();
			}else{
				$("input[name='ck']").attr("checked",false);
				gcount();
			}
		}
		function jia(id){
			var ids = $("input[name="+id+"]").val();
			$("input[name="+id+"]").val(parseInt(ids)+1);
			gcount();
		}
		function jian(id){
			var ids = $("input[name="+id+"]").val();
			if(ids>0){
				var dd = $("input[name="+id+"]").val(parseInt(ids)-1);
				gcount();
			}
		}
		function gcount(){
			var e = 0;
			$("input[name='ck']:checked").each(function(){
				var id = this.value.split("_")[0];
				var price = this.value.split("_")[1];
				var w = $("input[name="+id+"]").val();
				e+=parseInt(w)*parseInt(price)
			})
			$("#count").val(e);
		}
		</script>
		<base href="${path}/">	
	</head>
	<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3" style="border-top: 1px solid black;border-left: 1px solid black;border-right: 1px solid black;">
				<center><h2>购物车</h2></center>
			</div>
			<div class="col-md-6 col-md-offset-3" style="border-top: 1px solid black;border-left: 1px solid black;border-right: 1px solid black;">
				<!-- <center>
					全选
				</center> -->
				<div class="row">
					<div class="col-md-2">
						&nbsp;<input type="checkbox" onclick="quan(this)">全选
					</div>
					<div class="col-md-2 col-md-offset-8">
						<button class="glyphicon glyphicon-trash"></button>
					</div>
				</div>
			</div>
			<#list carlist as g>
			<div class="col-md-6 col-md-offset-3" style=" height: 100px; border-left: 1px solid black;border-right: 1px solid black;">
				<div class="row" style="border-top: 1px solid black;">
					<div class="col-md-1" >
						<center><div style=" margin-top: 30px; ">
							<input type="checkbox" name="ck" value="${g.id}_${g.goods_price}" onclick="gcount()">
						</div></center>
					</div>
					<div class="col-md-3">
						<center>
							<div style="height: 120px; width: 90px;">
								<img src="${path}/imgs/${g.goods_imgpath}" style="height: 90px; width: 90px; line-height: 120px;"/>
							</div>
						</center>
					</div>
					<div class="col-md-4">
						<center><div>
							<div style="height: 30px;line-height: 30px;">
								${g.goods_name}
							</div>
							<div style="height: 30px;line-height: 30px;">
								${g.goods_desc}	
							</div>
							<div style="height: 30px; line-height: 30px;">
								￥${g.goods_price}
							</div>
						</div></center>
					</div>
					<div class="col-md-3 col-md-offset-1"  style="margin-top: 30px;">
						<input type="button" value="-" onclick="jian('${g.id}')">
						<input type="text" value="${g.carNum}" name="${g.id}" style="width: 30px;">
						<input type="button" value="+" onclick="jia('${g.id}')">
					</div>
				</div>
				
			</div>
			</#list>
		</div>
		<div>
			<div class="row">
				<center><div class="col-md-3 col-md-offset-3" style="background-color: blue;"><font color="#FFFFFF">总计￥</font><input type="text" id="count" style="width: 90px; height: 20px;"></div></center>
					<a href="#">
						<center>
							<div class="col-md-3"style="background-color: red; height: 20px;">
								<font color="#FFFFFF">去结算</font>
							</div>
						</center>
					</a>
			</div>
		</div>
		</div>
	</body>
</html>
