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
					<a href="#cashierModal" data-toggle="modal" class="btn btn-compose" id="doCashier"> 前台收银 </a>
					<ul class="nav nav-pills nav-stacked labels-info ">
						<li>
							<h4>
								订单号：<strong>NC34576876</strong>
							</h4>
						</li>

						<table class="table table-bordered" cellpadding="3" cellspacing="1">
							<thead>
								<tr>
									<th rowspan="2" align="center" style="text-align: center;">图像</th>
									<th colspan="3">名称</th>
									<th colspan="2">口味</th>
								</tr>

								<tr>
									<th>单价</th>
									<th>数量</th>
									<th>单位</th>
									<th>金额</th>
									<th>赠送</th>
								</tr>
							</thead>
							<tbody id="salesBody">
								<tr>
									<td rowspan="2"><img
										src="http://localhost:8080/yezic/resources/fileUpload/Desert1.jpg"
										alt="" /></td>
									<td colspan="3">[￥5]A004鱼豆腐</td>
									<td colspan="2">柠檬</td>
								</tr>
								<tr>
									<td>￥5.0</td>
									<td>1</td>
									<td>碗</td>
									<td class="payMoney">￥5.0</td>
									<th><input type="checkbox"></th>
								</tr>
							</tbody>
						</table>

						<div class="inbox-body text-center inbox-action">
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
						</div>
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
								<label> 现金付费：</label> <input id="productNumber"
									name="productNumber" class="form-control">
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
								<label> 找零：</label> <input id="salePrice" name="salePrice"
									class="form-control">
							</div>
						</div>

					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-primary" id="saveChanges">保存</button>
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
		src="<c:url value="/js/jquery.dcjqaccordion.2.7.js"/>" />
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
					async : false,
					success : function(returnValue) {
						var html = "<tr><td rowspan='2'><img src='http://localhost:8080/yezic/resources/fileUpload/Desert1.jpg' alt='' /></td>"
						           +"<td colspan='3'>"+returnValue.name+"</td>"
						           +"<td colspan='2'>"+returnValue.taste+"</td>"
					               +"</tr><tr><td>￥"+returnValue.salePrice+"</td>"
					               +"<td>1</td><td>"+returnValue.unit+"</td><td class='payMoney'>￥"+returnValue.salePrice+"</td>" 
					               +"<th><input type='checkbox'></th></tr>";
						$('#salesBody').append($(html));
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
	</script>
</body>
</html>
