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

	<section id="container">
		<%@ include file="/WEB-INF/page/common/header.jsp"%>

		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<!-- page start-->

				<div class="row">
					<div class="col-sm-12">
						<section class="panel">
							<header class="panel-heading">
								<strong>会员列表</strong><span class="tools pull-right"> <a
									href="javascript:;" class="fa fa-chevron-down"></a> <a
									href="javascript:;" class="fa fa-cog"></a> <a
									href="javascript:;" class="fa fa-times"></a>
								</span>
							</header>
							<div class="panel-body">
								<div class="adv-table editable-table ">
									<div class="clearfix">
										<div class="btn-group">
										<div class="form-group">
								<label> 联系方式：</label> <input id="telId"
									name="telId" class="form-control">
							</div>
											<a href="#addMilkTeaModal" data-toggle="modal" idattr="11" class="updateContent">
															<button class="btn btn-success">修改</button></a>
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<label> 姓名：</label> <input id="name" name="name"
												class="form-control">
										</div>
										<div class="form-group">
											<label> 联系方式：</label> <input id="tel" name="tel"
												class="form-control">
										</div>
										<div class="form-group">
											<label> 余额：</label> <input id="recharge" name="recharge"
												class="form-control">
										</div>
										<div class="form-group">
											<label> 折扣：</label> <input id="discount" name="discount"
												class="form-control">
										</div>
										<div class="form-group">
											<label> 积分：</label> <input id="integral" name="integral"
												class="form-control">
										</div>
									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
				<!-- page end-->
			</section>
		</section>
		<!--main content end-->

		
	</section>
	<%@ include file="/WEB-INF/page/common/footer.jsp"%>
	<script src="<c:url value="/resources/js/table-editable.js"/>"></script>
	<script
		src="<c:url value="/resources/js/bootstrap-fileupload/fileinput.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resources/js/bootstrap-fileupload/fileinput_locale_zh.js"/>"
		type="text/javascript"></script>
	<script src="<c:url value="/resources/js/ajaxfileupload.js"/>"
		type="text/javascript"></script>
	<script type="text/javascript">
		var add = true;
		var id;
		jQuery(document).ready(function() {
			EditableTable.init();
		});

		$('#addMilkButton').click(function() {
			$('#name').val('');
		});

		$('.updateContent').each(function() {
			$(this).click(function() {
				add = false;
				telid = $(this).attr('idattr');

				$.ajax({
					type : "GET",
					url : basePath + '/vip/getOneByTelId?id=' + telid,
					async : false,
					success : function(returnValue) {
						$('#name').val(returnValue.name);
						$('#tel').val(returnValue.tel);
						$('#discount').val(returnValue.discount);
						$('#integral').val(returnValue.integral);
						$('#recharge').val(returnValue.recharge);
					}
				});
			});
		});

		$('#saveChanges').click(function() {
			url = basePath + '/vip/add';

			if (add == false) {
				url = basePath + '/vip/update';
			}
			var name = $('#name').val();
			var tel = $('#tel').val();
			var discount = $('#discount').val();
			var integral = $('#integral').val();
			var recharge = $('#recharge').val();

			$.ajax({
				type : "POST",
				url : url,
				data : {
					id : id,
					name : name,
					tel : tel,
					discount : discount,
					integral : integral,
					recharge : recharge
				},
				async : true,
				success : function(returnValue) {
					location.reload();
				}
			});
			$('#addMilkTeaModal').modal('hide');
		});
	</script>
</body>
</html>
