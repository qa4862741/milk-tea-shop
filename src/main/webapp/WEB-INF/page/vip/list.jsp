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
										<a href="#addMilkTeaModal" data-toggle="modal" id="addMilkButton">
												<button id="editable-sample_new" class="btn btn-primary">
													添加 <i class="fa fa-plus"></i>
												</button>
											</a>
										</div>
										<div class="btn-group pull-right">
											<button class="btn btn-default dropdown-toggle"
												data-toggle="dropdown">
												Tools <i class="fa fa-angle-down"></i>
											</button>
											<ul class="dropdown-menu pull-right">
												<li><a href="#">Print</a></li>
												<li><a href="#">Save as PDF</a></li>
												<li><a href="#">Export to Excel</a></li>
											</ul>
										</div>
									</div>
									<div class="space15"></div>
									<table class="table table-striped table-hover table-bordered"
										id="editable-sample">
										<thead>
											<tr>
												<th>姓名</th>
												<th>联系方式</th>
												<th>折扣</th>
												<th>积分</th>
												<th>余额</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${vipList}" var="item">
												<tr class="">
													<td>${item.name}</td>
													<td>${item.tel}</td>
													<td>${item.discount}</td>
                                                    <td>￥${item.integral}</td>
                                                    <td>￥${item.recharge}</td>
															<td><a href="#addMilkTeaModal" data-toggle="modal" idattr="${item.id}" class="updateContent">
															<button class="btn btn-success">修改</button>
													</a><a href="#rechargeModal" data-toggle="modal" idattr="${item.id}" class="rechargeUpdate" style="padding-left: 10px">
															<button class="btn btn-success">充值</button>
													</a> <a href="${basePath}/vip/delete?id=${item.id}" style="padding-left: 10px">
															<button class="btn btn btn-primary">删除</button>
													</a> 
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</section>
					</div>
				</div>
				<!-- page end-->
			</section>
		</section>
		<!--main content end-->
		
		<!-- Modal -->
		<div class="modal fade" id="addMilkTeaModal" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" >
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title">添加会员</h4>
					</div>
					
					<div class="modal-body row">
						<div class="col-md-12">
							<section class="panel">
								<div class="panel-body">
									<form class="form-horizontal bucket-form" id="addVipForm" method="get">
										<div class="form-group">
											<label class="col-sm-3 control-label col-lg-3">用户姓名:</label>
											<div class="col-lg-9">
												<div class="input-group m-bot15">
													<span class="input-group-addon btn-success">@</span> <input
														type="text" id="name" class="form-control" placeholder="请输入用户名">
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-3 control-label col-lg-3">联系方式:</label>
											<div class="col-lg-9">
												<div class="input-group m-bot15">
													<span class="input-group-addon btn-success"><i class="fa fa-envelope"></i></span> <input
														type="text" id="tel" class="form-control" placeholder="请输入联系方式">
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-3 control-label col-lg-3">充值金额:</label>
											<div class="col-lg-9">
												<div class="input-group m-bot15">
													<span class="input-group-addon btn-danger"><i class="fa fa-user"></i></span> <input
														type="text" id="recharge" class="form-control" placeholder="请输入充值金额">
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-3 control-label col-lg-3">折扣:</label>
											<div class="col-lg-9">
												<div class="input-group m-bot15">
													<span class="input-group-addon btn-danger"><i class="fa fa-user"></i></span> <input
														type="text" id="discount" class="form-control" placeholder="请输入折扣">
												</div>
											</div>
										</div>

                                        <div class="form-group">
											<label class="col-sm-3 control-label col-lg-3">积分:</label>
											<div class="col-lg-9">
												<div class="input-group m-bot15">
													<span class="input-group-addon btn-danger"><i class="fa fa-user"></i></span> <input
														type="text" id="integral" class="form-control" placeholder="请输入折扣">
												</div>
											</div>
										</div>
									</form>
								</div>
							</section>
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
		
		<!-- Modal -->
		<div class="modal fade" id="rechargeModal" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title">会员充值</h4>
					</div>
					
					<div class="modal-body row">
						<div class="col-md-12">
							<section class="panel">
								<div class="panel-body">
									<form class="form-horizontal bucket-form" id="addOrUpdateUserForm" method="get">
										<div class="form-group">
											<label class="col-sm-3 control-label col-lg-3">用户姓名:</label>
											<div class="col-lg-9">
											    <input id="vipId" name="vipId" type="hidden">
												<div class="input-group m-bot15">
													<span class="input-group-addon btn-success">@</span> <input
														type="text" id="rechargeName" class="form-control">
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-3 control-label col-lg-3">联系方式:</label>
											<div class="col-lg-9">
												<div class="input-group m-bot15">
													<span class="input-group-addon btn-success"><i class="fa fa-envelope"></i></span> <input
														type="text" id="rechargeTel" class="form-control">
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-3 control-label col-lg-3">充值金额:</label>
											<div class="col-lg-9">
												<div class="input-group m-bot15">
													<span class="input-group-addon btn-danger"><i class="fa fa-user"></i></span> <input
														type="text" id="rechargeAmount" class="form-control" placeholder="请输入充值金额">
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-3 control-label col-lg-3">余额:</label>
											<div class="col-lg-9">
												<div class="input-group m-bot15">
													<span class="input-group-addon btn-danger"><i class="fa fa-user"></i></span> <input
														type="text" id="rechargeRemainAmount" class="form-control">
														<input type="hidden" id="rechargeRemainAmountHidden" class="form-control">
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-3 control-label col-lg-3">折扣:</label>
											<div class="col-lg-9">
												<div class="input-group m-bot15">
													<span class="input-group-addon btn-danger"><i class="fa fa-user"></i></span> <input
														type="text" id="rechargeDiscount" class="form-control">
												</div>
											</div>
										</div>

                                        <div class="form-group">
											<label class="col-sm-3 control-label col-lg-3">积分:</label>
											<div class="col-lg-9">
												<div class="input-group m-bot15">
													<span class="input-group-addon btn-danger"><i class="fa fa-user"></i></span> <input
														type="text" id="rechargeIntegral" class="form-control">
												</div>
											</div>
										</div>
									</form>
								</div>
							</section>
						</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-primary" id="saveChangesRecharge">保存</button>
					</div>

				</div>
			</div>
		</div>
		<!-- modal -->


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
	    var add = 1;
	    var id = 0;
		jQuery(document).ready(function() {
			EditableTable.init();
		});
		
		$('#addMilkButton').click(function(){
			clearForm($('#addVipForm'));
			add = 1;
		});
		
		$('.rechargeUpdate').each(function(){
			$(this).click(function(){
				add = 3;
				id = $(this).attr('idattr');
				
				$.ajax({
					type : "GET",
					url : basePath + '/vip/getOneById?id='+id,
					async: false, 
					success : function(returnValue) {
						$('#vipId').val(returnValue.id);
						$('#rechargeName').val(returnValue.name);
						$('#rechargeTel').val(returnValue.tel);
						$('#rechargeRemainAmount').val(returnValue.recharge);
						$('#rechargeRemainAmountHidden').val(returnValue.recharge);
						$('#rechargeDiscount').val(returnValue.discount);
						$('#rechargeIntegral').val(returnValue.integral);
					}
			    });	     
			});
		});
		
		$('.updateContent').each(function(){
			$(this).click(function(){
				add = 2;
				id = $(this).attr('idattr');
				
				$.ajax({
					type : "GET",
					url : basePath + '/vip/getOneById?id='+id,
					async: false, 
					success : function(returnValue) {
						$('#vipId').val(returnValue.id);
						$('#name').val(returnValue.name);
						$('#tel').val(returnValue.tel);
						$('#recharge').val(returnValue.recharge);
						$('#discount').val(returnValue.discount);
						$('#integral').val(returnValue.integral);
					}
			    });	     
			});
		});
		
		function update(){
           url = basePath + '/vip/add';
			
			var name = $('#name').val();
			var tel = $('#tel').val();
			var discount = $('#discount').val();
			var integral = $('#integral').val();
			var recharge = $('#recharge').val();
			
			if(add==2){
				id = $('#vipId').val();
				url = basePath + '/vip/update';
			}
			
			if(add==3){
				id = $('#vipId').val();
				url = basePath + '/vip/update';
				name = $('#rechargeName').val();
				tel = $('#rechargeTel').val();
				recharge = $('#rechargeRemainAmount').val();
				discont = $('#rechargeDiscount').val();
				integral = $('#rechargeIntegral').val();
			}
			
			$.ajax({
				type : "POST",
				url : url,
				data : {
					id : id,
					name : name,
					tel:tel,
					discount:discount,
					integral:integral,
					recharge:recharge
				},
				async: true, 
				success : function(returnValue) {
					 location.reload();
				}
		    });	     
			$('#addMilkTeaModal').modal('hide');
		}

		$('#saveChangesRecharge').click(function() {
			update();
		});
		
		$('#saveChanges').click(function() {
			update();
		});
		
		
		$('#rechargeAmount').bind("input",function(){
			var rechargeAmount = $('#rechargeAmount').val();
			var rechargeRemainAmountHidden = $('#rechargeRemainAmountHidden').val();
			if(rechargeAmount!=''&&rechargeAmount!=null){
				$('#rechargeRemainAmount').val(parseFloat(rechargeRemainAmountHidden)+parseFloat(rechargeAmount));
			}else{
				$('#rechargeRemainAmount').val(parseFloat(rechargeRemainAmountHidden));
			}
			
		 });
		
		function clearForm(form) {
			  // iterate over all of the inputs for the form
			  // element that was passed in
			  $(':input', form).each(function() {
			    var type = this.type;
			    var tag = this.tagName.toLowerCase(); // normalize case
			    // it's ok to reset the value attr of text inputs,
			    // password inputs, and textareas
			    if (type == 'text' || type == 'password' || tag == 'textarea')
			      this.value = "";
			    // checkboxes and radios need to have their checked state cleared
			    // but should *not* have their 'value' changed
			    else if (type == 'checkbox' || type == 'radio')
			      this.checked = false;
			    // select elements need to have their 'selectedIndex' property set to -1
			    // (this works for both single and multiple select elements)
			    else if (tag == 'select')
			      this.selectedIndex = 0;
			  });
			};

	</script>
</body>
</html>
