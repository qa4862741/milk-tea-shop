<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>叶子C奶茶店</title>
<%@ include file="/WEB-INF/page/common/common.jsp"%>
<!--Core CSS -->
<link href="<c:url value="/resources/bs3/css/bootstrap.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap-reset.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="/resources/font-awesome/css/font-awesome.css"/>"
	rel="stylesheet" />

<link rel="stylesheet"
	href="<c:url value="/resources/js/data-tables/DT_bootstrap.css"/>" />

<!-- Custom styles for this template -->
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/style-responsive.css"/>"
	rel="stylesheet" />

<link
	href="<c:url value="/resources/js/bootstrap-fileupload/fileinput.css"/>"
	media="all" rel="stylesheet" type="text/css" />
</head>

<body>
	<!-- page start-->
	<div class="row">
		<div class="col-sm-5">
			<section class="panel">
				<div class="panel-body">
					<a href="#cashierModal" data-toggle="modal" class="btn btn-compose btn-lg" id="doCashier">
					<i class="fa fa-plus-square"></i>&nbsp;&nbsp;&nbsp;前台收银 </a>
					<ul class="nav nav-pills nav-stacked labels-info ">
						<li>
							<h4>
								订单号：<strong>NC34576876</strong>
							</h4>
							
							<h4>
								会员号：<strong><input id="vipNumber" name="vipNumber"></strong>
							</h4>
						</li>

						<table class="table table-bordered" cellpadding="3" cellspacing="1">
							<thead> 
							    <!-- <tr>
									<th rowspan="3" align="center" style="text-align: center;">图像</th>
									<th colspan="4">名称</th>
									<th colspan="2">口味</th>
								</tr>

								<tr class="salesTrHead">
									<th rowspan="2">单价</th>
									<th rowspan="2" colspan="2">数量</th>
									<th rowspan="2">单位</th>
									<th rowspan="2">金额</th>
									<th rowspan="2">赠送</th>
								</tr> -->
								
								 <tr>
									<th rowspan="2"  style="text-align:center;vertical-align:middle">图像</th>
									<th colspan="3">名称</th>
									<th colspan="2">口味</th>
								</tr>

								<tr class="salesTrHead">
									<th>单价</th>
									<th>数量</th>
									<th>单位</th>
									<th>金额</th>
									<th>赠送</th>
								</tr>
							</thead>
							<tbody id="salesBody">
							  <!--  <tr>
								    <input type="hidden" value="" name="milkTeaId"/>
									<td rowspan="2" class="salesTrImage"><img class="img"
										src="http://localhost:8080/yezic/resources/fileUpload/Desert1.jpg"
										alt="" /></td>
									<td colspan="3" class="salesTrName">[￥5]A004鱼豆腐</td>
									<td colspan="2" class="salesTrTaste">柠檬</td>
								</tr>
								<tr>
									<td class="salesTrUnitPrice">￥5.0</td>
									<td class="salesTrCount">  <div class="input-group input-small" style="width:80px;">
                                                    <input type="text" class="spinner-input form-control">
                                                    <div class="spinner-buttons input-group-btn btn-group-vertical">
                                                        <button type="button" class="btn spinner-up btn-xs btn-info">
                                                            <i class="fa fa-angle-up"></i>
                                                        </button>
                                                        <button type="button" class="btn spinner-down btn-xs btn-info">
                                                            <i class="fa fa-angle-down"></i>
                                                        </button>
                                                    </div>
                                                </div></td>
									<td class="salesTrUnit">碗</td>
									<td class="payMoney">￥5.0</td>
									<th><input type="checkbox"></th>
								</tr>  -->
							</tbody>
						</table>
						
						<li style="padding-top:40px">
							<h4>
								<i class="fa fa-plus"></i>总金额：<strong id="sumCash">￥0</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<i class="fa fa-plus"></i>数量：<strong id="sumCount">0</strong>
							</h4>
						</li>
                            
                        <div class="inbox-body text-left inbox-action">
							 <a class="btn btn-info btn-lg"><i class="fa fa-plus"></i>
                                                                加一
                            </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a class="btn btn-danger btn-lg"><i class="fa fa-minus"></i>
                                                               减一
                            </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a class="btn btn-success  btn-lg"><i class="fa fa-cloud"></i>
                                                              口味
                            </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a class="btn btn-danger delete btn-lg"><i class="fa fa-times"></i>
                                                             删除
                            </a>
						</div>

						<!-- <div class="inbox-body text-center inbox-action">
						    <a href="javascript:;" class="fa fa-chevron-up"></a>
						    <a href="javascript:;" class="fa fa-chevron-down"></a>
							<div class="btn-group">
								<a class="btn mini btn-default" href="javascript:;"> <i
									class="fa fa-power-off"></i>
								</a>
							</div>
							<div class="btn-group">
								<a class="btn mini btn-default" href="javascript:;"> <i
									class="fa fa-cog"></i>
								</a>
							</div>
						</div> -->
				</div>
			</section>
		</div>

		<!-- page start-->

		<div class="col-sm-7">
			<section class="panel">
				<header class="panel-heading">
					<strong>选择奶茶</strong> <span class="tools pull-right"> <a
						href="javascript:;" class="fa fa-chevron-down"></a> <a
						href="javascript:;" class="fa fa-cog"></a> <a href="javascript:;"
						class="fa fa-times"></a>
					</span>
				</header>
				<div class="panel-body">
					<ul id="filters" class="media-filter">
						<li><a href="#" data-filter="*"> All</a></li>
						<c:forEach items="${milkClas}" var="item">
							<li><a href="#" data-filter=".${item.id}">${item.name}</a></li>
						</c:forEach>
					</ul>

					<div id="gallery" class="media-gal">
						<c:forEach items="${milkTeas}" var="item">
							<div class="${item.classificationId} item ">
								<a href="#" class="chooseMilk" value="${item.id}"><img src="${item.imagePath}" alt="${item.name}"/></a>
								<p>${item.name}</p>
							</div>
						</c:forEach>
					</div>

					<div class="col-md-12 text-center clearfix">
						<ul class="pagination">
							<li><a href="#">«</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">»</a></li>
						</ul>
					</div>
				</div>
			</section>
		</div>
		<!-- page end-->
	</div>
	
		<!-- Modal -->
		<div class="modal fade" id="cashierModal" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title">收银</h4>
					</div>

					<div class="modal-body row">
						<div class="col-md-5">
							<div class="form-group">
								<label> 应收金额：</label> <input id="shouldPay" name="name"
									class="form-control">
							</div>
							<div class="form-group">
								<label> 现金付费：</label> <input id="actulPay"
									name="actulPay" class="form-control">
							</div>
							<div class="form-group">
								<label>储蓄卡付费：</label> 
								<input id="productNumber"
									name="productNumber" class="form-control">
							</div>
							<div class="form-group">
								<label> 信用卡付费：</label> 
								<input id="productNumber"
									name="productNumber" class="form-control">
							</div>
							<div class="form-group">
								<label>代金券付费：</label> 
								<input id="productNumber"
									name="productNumber" class="form-control">
							</div>
							<div class="form-group">
								<label> 找零：</label> <input id="exchange" name="exchange"
									class="form-control">
							</div>
						</div>

					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-primary" data-dismiss="modal" id="saveChanges">保存</button>
					</div>

				</div>
			</div>
		</div>
		<!-- modal -->

	<!-- page end-->

	<%@ include file="/WEB-INF/page/common/footer.jsp"%>

	<!--Core js-->
	<script src="<c:url value="/resources/js/jquery.js"/>"></script>
	<script src="<c:url value="/resources/bs3/js/bootstrap.min.js"/>"></script>
	<script class="include" type="text/javascript"
		src="<c:url value="/resources/js/jquery.dcjqaccordion.2.7.js"/>" />
	</script>
	<script src="<c:url value="/resources/js/jquery.scrollTo.min.js"/>"></script>
	<script
		src="<c:url value="/resources/js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.nicescroll.js"/>"></script>

	<script src="<c:url value="/resources/js/jquery.isotope.js"/>"></script>

	<!--Easy Pie Chart-->
	<script
		src="<c:url value="/resources/js/easypiechart/jquery.easypiechart.js"/>"></script>
	<!--Sparkline Chart-->
	<script
		src="<c:url value="/resources/js/sparkline/jquery.sparkline.js"/>"></script>
	<!--jQuery Flot Chart-->
	<script src="<c:url value="/resources/js/flot-chart/jquery.flot.js"/>"></script>
	<script
		src="<c:url value="/resources/js/flot-chart/jquery.flot.tooltip.min.js"/>"></script>
	<script
		src="<c:url value="/resources/js/flot-chart/jquery.flot.resize.js"/>"></script>
	<script
		src="<c:url value="/resources/js/flot-chart/jquery.flot.pie.resize.js"/>"></script>
	<script
		src="<c:url value="/resources/js/bootstrap-fileupload/fileinput.js"/>"></script>
	<script
		src="<c:url value="/resources/js/bootstrap-fileupload/fileinput_locale_zh.js"/>"></script>

	<script type="text/javascript">
		$('.chooseMilk').each(function() {
			$(this).click(function() {
				var id = $(this).attr('value');
				$.ajax({
					type : "GET",
					url : basePath + '/milk/getOneById?id=' + id,
					async : true,
					success : function(returnValue) {
						var idEle = $('#milkTeaId'+id);
						var idValue = idEle.val();
						if(idValue==null||idValue==undefined){
							var upDown = 
							"<div class='input-group input-small' style='width:80px;'>"
                              +"<input type='text' value='1' class='spinner-input form-control countValue' id='countValue"+id+"'>"
                              +"<div class='spinner-buttons input-group-btn btn-group-vertical'>"
                                +"<button type='button' class='btn spinner-up btn-xs btn-info addCount' id='addCount"+id+"'>"
                                    +"<i class='fa fa-angle-up'></i>" 
                                +"</button>"
                                +"<button type='button' class='btn spinner-down btn-xs btn-danger minutesCount' id='minutesCount"+id+"'>"
                                    +"<i class='fa fa-angle-down'></i>"
                                +"</button>"
                              +"</div>"
                            +"</div>";
							
							var html = 
							    "<tr class='salesTrHead'>"
							   +    "<td rowspan='2' class='salesTrImage' style='text-align:center;vertical-align:middle'><img class='img' src='"+returnValue.scaledImagePath+"' alt='' /></td>"
					           +    "<input type='hidden' value='"+id+"' name='milkTeaId' id='milkTeaId"+id+"'/>"
					           +    "<td colspan='3' class='salesTrName'>"+returnValue.name+"</td>"
					           +    "<td colspan='2' class='salesTrTaste'>"+returnValue.taste+"</td>"
				               +"</tr>"
					           +"<tr class='salesTrTail'>"
				               +    "<td class='salesTrUnitPrice' style='vertical-align:middle'>￥"+returnValue.salePrice+"</td>"
				               +    "<td class='salesTrCount' style='text-align:center;vertical-align:middle'>"+upDown+"</td>"
				               +    "<td class='salesTrUnit' style='vertical-align:middle'>"+returnValue.unit+"</td>"
				               +    "<td class='payMoney' style='vertical-align:middle'>￥"+returnValue.salePrice+"</td>" 
				               +    "<td style='vertical-align:middle'><input type='checkbox' ></td>"
				               +"</tr>";
							 $('#salesBody').append($(html));
							 var sumAmount = $('#sumCash').html().substring(1);
							 $('#sumCash').html('￥'+(parseFloat(sumAmount)+parseFloat(returnValue.salePrice)));
								 
							 var sumCount = $('#sumCount').html();
							 $('#sumCount').html(parseInt(sumCount)+1); 
							 
							 $('#addCount'+id).click(function(){
								 var countValEle = $('#countValue'+id);
								 countValEle.val(parseInt(countValEle.val())+1);
								 
								 var trTail = countValEle.parent().parent().parent();
								 var salesTrUnitPrice = trTail.find('.salesTrUnitPrice').html().substring(1);
									
									var payMoneyEle = trTail.find('.payMoney');
									var payMoney = payMoneyEle.html().substring(1);
									payMoneyEle.html('￥'+(parseFloat(payMoney)+parseFloat(salesTrUnitPrice)));
									
								    var sumAmount = $('#sumCash').html().substring(1);
									$('#sumCash').html('￥'+(parseFloat(sumAmount)+parseFloat(salesTrUnitPrice)));
									
									var sumCount = $('#sumCount').html();
									$('#sumCount').html(parseInt(sumCount)+1); 
							 });
							 
							 $('#minutesCount'+id).click(function(){
								 var countValEle = $('#countValue'+id);
								 if(parseInt(countValEle.val())!=1){
									 countValEle.val(parseInt(countValEle.val())-1);
									 var trTail = countValEle.parent().parent().parent();
									 var salesTrUnitPrice = trTail.find('.salesTrUnitPrice').html().substring(1);
										
									 var payMoneyEle = trTail.find('.payMoney');
									 var payMoney = payMoneyEle.html().substring(1);
									 payMoneyEle.html('￥'+(parseFloat(payMoney)-parseFloat(salesTrUnitPrice)));
									 
									 var sumAmount = $('#sumCash').html().substring(1);
									 $('#sumCash').html('￥'+(parseFloat(sumAmount)-parseFloat(salesTrUnitPrice)));
									 
									 var sumCount = $('#sumCount').html();
									 $('#sumCount').html(parseInt(sumCount)-1);
								 }
							 });
						}else{
							var milkId = $('#milkTeaId'+id);
							var trTail = milkId.parent().next()
							
							var countEle = trTail.find('.salesTrCount').find('#countValue'+id);
							var count = countEle.val();
							countEle.val(parseInt(count)+1);
							
							var salesTrUnitPrice = trTail.find('.salesTrUnitPrice').html().substring(1);
							
							var payMoneyEle = trTail.find('.payMoney');
							var payMoney = payMoneyEle.html().substring(1);
							payMoneyEle.html('￥'+(parseFloat(payMoney)+parseFloat(salesTrUnitPrice)));
							
							 var sumAmount = $('#sumCash').html().substring(1);
							 $('#sumCash').html('￥'+(parseFloat(sumAmount)+parseFloat(salesTrUnitPrice)));
							 
							 var sumCount = $('#sumCount').html();
							 $('#sumCount').html(parseInt(sumCount)+1);
						}
					}
				});
			});
		});
		
		$('#doCashier').click(function(){
			var money = 0.0;
			$('.payMoney').each(function() {
				var text = $(this).text();
				text = text.substring(1);
				money = money + parseFloat(text);
			});
			$('#shouldPay').val('￥'+money);
			
			$('#actulPay').val('￥'+money);
			
			$('#exchange').val('￥'+0);
		});

		var $container = $('#gallery');
		$container.isotope({
			itemSelector : '.item',
			animationOptions : {
				duration : 750,
				easing : 'linear',
				queue : false
			}
		});

		$('#filters a').click(function() {
			var selector = $(this).attr('data-filter');
			$container.isotope({
				filter : selector
			});
			return false;
		});
		
		$('#saveChanges').click(function() {
			var trHeads = $('#salesBody').find('.salesTrHead');
			var trTails = $('#salesBody').find('.salesTrTail');
			var result = "[";
			
            for(var i=0;i<trHeads.length;i++){
            	var trHead = trHeads[i];
            	var trTail = trTails[i];
            	result = result + "{";
            	var image = $(trHead).find('.salesTrImage').find('.img').attr('src');
            	result = result+"\"image\":"+"\""+image+"\",";
            	
            	var name = $(trHead).find('.salesTrName').html();
            	result = result+"\"name\":"+"\""+name+"\",";
            	
            	var taste = $(trHead).find('.salesTrTaste').html();
            	result = result+"\"taste\":"+"\""+taste+"\",";
            	
            	var unitPrice = $(trTail).find('.salesTrUnitPrice').html();
            	result = result+"\"unitPrice\":"+"\""+unitPrice.substring(1) +"\",";
            	
            	var count = $(trTail).find('.countValue').val();
            	result = result+"\"count\":"+"\""+count+"\",";
            	
            	var unit = $(trTail).find('.salesTrUnit').html();
            	result = result+"\"unit\":"+"\""+unit+"\",";
            	
            	result = result + "}"
            	if(i!=trHeads.length-1){
            		result = result + ",";
            	}
            }
            result = result + "]";
            var shouldPay = $('#shouldPay').val().substring(1);
            $.ajax({
				type : "POST",
				url : basePath + '/sales/doCashier',
				async : true,
				data: {
					content:result,
					orderNumber : 'NC201510310005',
					amount :shouldPay
				},
				success : function(returnValue) {
					
				}
			});
            
			$('#cashierModal').modal('hide');
			$('#cashierModal').modal('remove');
		});
	</script>
</body>
</html>
