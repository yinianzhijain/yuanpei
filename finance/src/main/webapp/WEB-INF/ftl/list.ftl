<html>
  <head>
    <title>主页面</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
		<script type="text/javascript" src="js/bootstrap.js" ></script>
		<script type="text/javascript" src="js/bootstrap.min.js" ></script>
		<script type="text/javascript" src="js/jquery.js" ></script>
		<script type="text/javascript" src="js/jquery-1.8.2.min.js" ></script>
		<script type="text/javascript">
			function del(id){
				alert(id)
			}
			function upd(id){
				alert(id)
			}
			function jia(id,price){
				var ids = $("input[name="+id+"]").val();
				$("input[name="+id+"]").val(parseInt(ids)+1);
				var idss = $("input[name="+id+"]").val();
				$("input[name=a"+id+"]").val(parseInt(idss)*parseInt(price));
				var e = 0;
				$("input[name='ck']").each(function(){
					var w = $("input[name=a"+this.value+"]").val();
					e+=parseInt(w);
				})
				$("#count").val(e);
			}
			function jian(id,price){
				var ids = $("input[name="+id+"]").val();
				if(ids>0){
					var dd = $("input[name="+id+"]").val(parseInt(ids)-1);
					$("input[name=a"+id+"]").val(parseInt(dd));
					var idss = $("input[name="+id+"]").val();
					$("input[name=a"+id+"]").val(parseInt(idss)*parseInt(price));
					var e = 0;
					$("input[name='ck']").each(function(){
						var w = $("input[name=a"+this.value+"]").val();
						e+=parseInt(w)
					})
					$("#count").val(e);
				}
			}
			$(function(){
				var arrc = $("input[name='ck']");
				var e = 0;
				arrc.each(function(){
					var w = $("input[name=a"+this.value+"]").val();
					e+=parseInt(w)
				})
				$("#count").val(e)
			}) 
		</script>
  </head>
  <body>
  <table class="table table-bordered table-hover">
  <tr class="success" align="center">
  	<td></td>
  	<td>ID</td>
  	<td>名称</td>
  	<td>价格</td>
  	<td>购买数量</td>
  	<td>小计</td>
  </tr>
  
<#list list as shop>
<tr class="warning" align="center">	
	<td>
		<input type="checkbox" value="${shop.id}" name="ck">
	</td>
	<td>${shop.id}</td>
  	<td>${shop.name}</td>
  	<td>${shop.price?c}</td>
  	<td>
  		<input type="button" value="+" onclick="jia(${shop.id},'${shop.price?c}')">
  		<input type="text" value="1" name="${shop.id}">
		<input type="button" value="-" onclick="jian(${shop.id},'${shop.price?c}')">
  	</td>
  	<td>
  		<input type="text" value="${shop.price?c}" name="a${shop.id}" id="all">
  	</td>
</tr>
</#list>
<tr>
	<td colspan="6">总金额<input type="text"  id="count">元</td>
</tr>
</table>
  </body>
</html>