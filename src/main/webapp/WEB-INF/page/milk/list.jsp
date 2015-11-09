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
	href="<c:url value="/resources/js/jnotify/jNotify.jquery.css"/>"
	media="all" rel="stylesheet" type="text/css" />
	
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
								<strong>奶茶列表</strong><span class="tools pull-right"> <a
									href="javascript:;" class="fa fa-chevron-down"></a> <a
									href="javascript:;" class="fa fa-cog"></a> <a
									href="javascript:;" class="fa fa-times"></a>
								</span>
							</header>
							<div class="panel-body">
								<div class="adv-table editable-table ">
									<div class="clearfix">
										<div class="btn-group">
											<a href="#addMilkTeaModal" data-toggle="modal">
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
												<th>名称</th>
												<th>产品编号</th>
												<th>单位</th>
												<th>口味</th>
												<th>分类</th>
												<th>销售价格</th>
												<th>成本价格</th>
												<th>积分</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${milkTeaList}" var="item">
												<tr class="">
													<td>${item.name}</td>
													<td>${item.productNumber}</td>
													<td>${item.unit}</td>
													<td>${item.taste}</td>
													<td>${item.classification}</td>
													<td>￥${item.salePrice}</td>
													<td>￥${item.costPrice}</td>
													<td>${item.points}</td>
													<td><a href="#addMilkTeaModal" data-toggle="modal" idattr="${item.id}" class="updateContent">
															<button class="btn btn-success">修改</button>
													</a> 
															<button class="btn btn btn-primary deleteMilk"  idattr="${item.id}">删除</button>
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
		<!--right sidebar start-->
		<div class="right-sidebar">
			<div class="search-row">
				<input type="text" placeholder="Search" class="form-control">
			</div>
			<div class="right-stat-bar">
				<ul class="right-side-accordion">
					<li class="widget-collapsible"><a href="#"
						class="head widget-head red-bg active clearfix"> <span
							class="pull-left">work progress (5)</span> <span
							class="pull-right widget-collapse"><i class="ico-minus"></i></span>
					</a>
						<ul class="widget-container">
							<li>
								<div class="prog-row side-mini-stat clearfix">
									<div class="side-graph-info">
										<h4>Target sell</h4>
										<p>25%, Deadline 12 june 13</p>
									</div>
									<div class="side-mini-graph">
										<div class="target-sell"></div>
									</div>
								</div>
								<div class="prog-row side-mini-stat">
									<div class="side-graph-info">
										<h4>product delivery</h4>
										<p>55%, Deadline 12 june 13</p>
									</div>
									<div class="side-mini-graph">
										<div class="p-delivery">
											<div class="sparkline" data-type="bar" data-resize="true"
												data-height="30" data-width="90%" data-bar-color="#39b7ab"
												data-bar-width="5"
												data-data="[200,135,667,333,526,996,564,123,890,564,455]">
											</div>
										</div>
									</div>
								</div>
								<div class="prog-row side-mini-stat">
									<div class="side-graph-info payment-info">
										<h4>payment collection</h4>
										<p>25%, Deadline 12 june 13</p>
									</div>
									<div class="side-mini-graph">
										<div class="p-collection">
											<span class="pc-epie-chart" data-percent="45"> <span
												class="percent"></span>
											</span>
										</div>
									</div>
								</div>
								<div class="prog-row side-mini-stat">
									<div class="side-graph-info">
										<h4>delivery pending</h4>
										<p>44%, Deadline 12 june 13</p>
									</div>
									<div class="side-mini-graph">
										<div class="d-pending"></div>
									</div>
								</div>
								<div class="prog-row side-mini-stat">
									<div class="col-md-12">
										<h4>total progress</h4>
										<p>50%, Deadline 12 june 13</p>
										<div class="progress progress-xs mtop10">
											<div style="width: 50%" aria-valuemax="100" aria-valuemin="0"
												aria-valuenow="20" role="progressbar"
												class="progress-bar progress-bar-info">
												<span class="sr-only">50% Complete</span>
											</div>
										</div>
									</div>
								</div>
							</li>
						</ul></li>
					<li class="widget-collapsible"><a href="#"
						class="head widget-head terques-bg active clearfix"> <span
							class="pull-left">contact online (5)</span> <span
							class="pull-right widget-collapse"><i class="ico-minus"></i></span>
					</a>
						<ul class="widget-container">
							<li>
								<div class="prog-row">
									<div class="user-thumb">
										<a href="#"><img src="images/avatar1_small.jpg" alt=""></a>
									</div>
									<div class="user-details">
										<h4>
											<a href="#">Jonathan Smith</a>
										</h4>
										<p>Work for fun</p>
									</div>
									<div class="user-status text-danger">
										<i class="fa fa-comments-o"></i>
									</div>
								</div>
								<div class="prog-row">
									<div class="user-thumb">
										<a href="#"><img src="images/avatar1.jpg" alt=""></a>
									</div>
									<div class="user-details">
										<h4>
											<a href="#">Anjelina Joe</a>
										</h4>
										<p>Available</p>
									</div>
									<div class="user-status text-success">
										<i class="fa fa-comments-o"></i>
									</div>
								</div>
								<div class="prog-row">
									<div class="user-thumb">
										<a href="#"><img src="images/chat-avatar2.jpg" alt=""></a>
									</div>
									<div class="user-details">
										<h4>
											<a href="#">John Doe</a>
										</h4>
										<p>Away from Desk</p>
									</div>
									<div class="user-status text-warning">
										<i class="fa fa-comments-o"></i>
									</div>
								</div>
								<div class="prog-row">
									<div class="user-thumb">
										<a href="#"><img src="images/avatar1_small.jpg" alt=""></a>
									</div>
									<div class="user-details">
										<h4>
											<a href="#">Mark Henry</a>
										</h4>
										<p>working</p>
									</div>
									<div class="user-status text-info">
										<i class="fa fa-comments-o"></i>
									</div>
								</div>
								<div class="prog-row">
									<div class="user-thumb">
										<a href="#"><img src="images/avatar1.jpg" alt=""></a>
									</div>
									<div class="user-details">
										<h4>
											<a href="#">Shila Jones</a>
										</h4>
										<p>Work for fun</p>
									</div>
									<div class="user-status text-danger">
										<i class="fa fa-comments-o"></i>
									</div>
								</div>
								<p class="text-center">
									<a href="#" class="view-btn">View all Contacts</a>
								</p>
							</li>
						</ul></li>
					<li class="widget-collapsible"><a href="#"
						class="head widget-head purple-bg active"> <span
							class="pull-left"> recent activity (3)</span> <span
							class="pull-right widget-collapse"><i class="ico-minus"></i></span>
					</a>
						<ul class="widget-container">
							<li>
								<div class="prog-row">
									<div class="user-thumb rsn-activity">
										<i class="fa fa-clock-o"></i>
									</div>
									<div class="rsn-details ">
										<p class="text-muted">just now</p>
										<p>
											<a href="#">Jim Doe </a>Purchased new equipments for zonal
											office setup
										</p>
									</div>
								</div>
								<div class="prog-row">
									<div class="user-thumb rsn-activity">
										<i class="fa fa-clock-o"></i>
									</div>
									<div class="rsn-details ">
										<p class="text-muted">2 min ago</p>
										<p>
											<a href="#">Jane Doe </a>Purchased new equipments for zonal
											office setup
										</p>
									</div>
								</div>
								<div class="prog-row">
									<div class="user-thumb rsn-activity">
										<i class="fa fa-clock-o"></i>
									</div>
									<div class="rsn-details ">
										<p class="text-muted">1 day ago</p>
										<p>
											<a href="#">Jim Doe </a>Purchased new equipments for zonal
											office setup
										</p>
									</div>
								</div>
							</li>
						</ul></li>
					<li class="widget-collapsible"><a href="#"
						class="head widget-head yellow-bg active"> <span
							class="pull-left"> shipment status</span> <span
							class="pull-right widget-collapse"><i class="ico-minus"></i></span>
					</a>
						<ul class="widget-container">
							<li>
								<div class="col-md-12">
									<div class="prog-row">
										<p>Full sleeve baby wear (SL: 17665)</p>
										<div class="progress progress-xs mtop10">
											<div class="progress-bar progress-bar-success"
												role="progressbar" aria-valuenow="20" aria-valuemin="0"
												aria-valuemax="100" style="width: 40%">
												<span class="sr-only">40% Complete</span>
											</div>
										</div>
									</div>
									<div class="prog-row">
										<p>Full sleeve baby wear (SL: 17665)</p>
										<div class="progress progress-xs mtop10">
											<div class="progress-bar progress-bar-info"
												role="progressbar" aria-valuenow="20" aria-valuemin="0"
												aria-valuemax="100" style="width: 70%">
												<span class="sr-only">70% Completed</span>
											</div>
										</div>
									</div>
								</div>
							</li>
						</ul></li>
				</ul>
			</div>
		</div>
		<!--right sidebar end-->

		<!-- Modal -->
		<div class="modal fade" id="addMilkTeaModal" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title">添加产品</h4>
					</div>

					<div class="modal-body row">

						<div class="col-md-6 img-modal">
							<label class="control-label">选择图片</label> <input type="file"
								id="addMilkImage" name="addMilkImage" class="file-loading" />

							<!--<img src="images/gallery/image1.jpg" alt="">
                                            <a href="#" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i> Edit Image</a>
                                            <a href="#" class="btn btn-white btn-sm"><i class="fa fa-eye"></i> View Full Size</a>

                                            <p class="mtop10"><strong>File Name:</strong> img01.jpg</p>
                                            <p><strong>File Type:</strong> jpg</p>
                                            <p><strong>Resolution:</strong> 300x200</p>
                                            <p><strong>Uploaded By:</strong> <a href="#">ThemeBucket</a></p>-->
						</div>
						<div class="col-md-5">
							<div class="form-group">
								<label> 名称：</label> <input id="name" name="name"
									class="form-control">
							</div>
							<div class="form-group">
								<label> 产品编号：</label> <input id="productNumber"
									name="productNumber" class="form-control">
							</div>
							<div class="form-group">
								<label>分类：</label> 
								<select class="form-control"  id="classification">
									<c:forEach items="${milkClas}" var="item">
										<option value="${item.id}#${item.name}">${item.name}</option>
									</c:forEach>
								</select> 
							</div>
							<div class="form-group">
								<label> 单位：</label> 
								<select class="form-control" id="unit">
									<c:forEach items="${milkTeaUnits}" var="item">
										<option value="${item.id}#${item.name}">${item.name}</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group">
								<label>口味：</label> 
								<select class="form-control"  id="taste">
									<c:forEach items="${milkTeaTastes}" var="item">
										<option value="${item.id}#${item.name}">${item.name}</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group">
								<label> 销售价格：</label> <input id="salePrice" name="salePrice"
									class="form-control">
							</div>
							<div class="form-group">
								<label> 成本价格：</label> <input id="costPrice" name="salePrice"
									class="form-control">
							</div>
							<div class="form-group">
								<label> 积分：</label> <input id="points" name="points"
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
	<script src="<c:url value="/resources/js/bootbox.js"/>"
		type="text/javascript"></script>

	<script src="<c:url value="/resources/js/jnotify/jNotify.jquery.js"/>"
		type="text/javascript"></script>
	<script type="text/javascript">
	 var add = true;
	    var id;
		jQuery(document).ready(function() {
			EditableTable.init();
		});
		
		$('#addMilkButton').click(function(){
			$('#name').val('');
		});
		
		$('.updateContent').each(function(){
			$(this).click(function(){
				add = false;
				id = $(this).attr('idattr');
				
				$.ajax({
					type : "GET",
					url : basePath + '/milk/getOneById?id='+id,
					async: false, 
					success : function(returnValue) {
						$('#name').val(returnValue.name);
						$('#productNumber').val(returnValue.productNumber);
						$('#unit').val(returnValue.unit);
						$('#salePrice').val(returnValue.salePrice);
						$('#costPrice').val(returnValue.costPrice);
						$('#points').val(returnValue.points);
						$('#classificationId').val(returnValue.classificationId);
						$('#classification').val(returnValue.classification);
						$('#tasteId').val(returnValue.salePrice);
						$('#taste').val(returnValue.salePrice);
						$('#unitId').val(returnValue.salePrice);
						$('#unit').val(returnValue.salePrice);
					}
			    });	     
			});
		});
		

		$('.deleteMilk').each(function() {
			$(this).click(function() {
				 id = $(this).attr('idattr');
			      bootbox.confirm({  
			          buttons: {  
			              confirm: {  
			                  label: '确认',  
			                  className: 'btn-info'  
			              },  
			              cancel: {  
			                  label: '取消',  
			                  className: 'btn-default'  
			              }  
			          },  
			          message: '您确认删除选定的记录吗？',  
			          callback: function(result) {  
			              if(result) {  
			            	   $.ajax({
			       					type : "GET",
			       					url : basePath + '/milk/delete?id=' + id,
			       					async : true,
			       					success : function(returnValue) {
			       						showSuccess("删除选定的记录成功")
			       					    location.reload();
			       					}
			       				}); 
			              } 
			          },  
			          //title: "bootbox confirm也可以添加标题哦",  
			          });
			});
		});

		$('#saveChanges').click(function() {
             url = basePath + '/milk/add';
			
			if(add==false){
				url = basePath + '/milk/update';
			}
			var name = $('#name').val();
			var productNumber = $('#productNumber').val();

			var unit = $('#unit').val();
			var salePrice = $('#salePrice').val();
			var costPrice = $('#costPrice').val();
			var points = $('#points').val();
			
			var classificationId =  $('#classification').val().split('#')[0];
			var classification = $('#classification').val().split('#')[1];
			
			var tasteId = $('#taste').val().split('#')[0];
			var taste = $('#taste').val().split('#')[1];

			var unitId = $('#unit').val().split('#')[0];
			var unit = $('#unit').val().split('#')[1];
			
			$.ajaxFileUpload({
				type : "POST",
				url : url,
				fileElementId : 'addMilkImage',
				dataType : 'text',
				data : {
					name : name,
					productNumber : productNumber,
					unit : unit,
					unitId:unitId,
					tasteId:tasteId,
					taste:taste,
					classification:classification,
					classificationId:classificationId,
					salePrice : salePrice,
					costPrice : costPrice,
					points : points
				},

				success : function(returnValue, textStatus) {
					if(add==false){
						showSuccess('更新奶茶成功！');
					}else{
						showSuccess('添加奶茶成功！');
					}
					showSuccess('添加奶茶成功！');
					location.reload();
				},

				error : function(XMLHttpRequest, textStatus, errorThrown) {
					if(add==false){
						showSuccess('更新奶茶成功！');
					}else{
						showSuccess('添加奶茶成功！');
					}
					location.reload();
				},

				complete : function(XMLHttpRequest, textStatus) {
				}

			});
			$('#addMilkTeaModal').modal('hide');
		});
		
		function showSuccess(tip){
			 jSuccess(tip,{
      		  autoHide : false,                // 是否自动隐藏提示条
      		  clickOverlay : false,            // 是否单击遮罩层才关闭提示条
      		  MinWidth : 200,                    // 最小宽度
      		  TimeShown : 1500,                 // 显示时间：毫秒
      		  ShowTimeEffect : 200,             // 显示到页面上所需时间：毫秒
      		  HideTimeEffect : 200,             // 从页面上消失所需时间：毫秒
      		  LongTrip : 15,                    // 当提示条显示和隐藏时的位移
      		  HorizontalPosition : "center",     // 水平位置:left, center, right
      		  VerticalPosition : "center",     // 垂直位置：top, center, bottom
      		  ShowOverlay : true,                // 是否显示遮罩层
      		  ColorOverlay : "#000",            // 设置遮罩层的颜色
      		  OpacityOverlay : 0.3,            // 设置遮罩层的透明度
      	  });
		}

		$("#addMilkImage").fileinput({
	        maxFileCount : 1,
	        showUpload : false,
	        initialPreview : ["<img src='"+basePath+"/resources/images/gallery/image5.jpg' class='file-preview-image' alt='Desert' title='Desert'>", ],
            
	        initialPreviewConfig : [ {
	        	caption : 'desert.jpg',
	        	width : '120px',
	        	url : '/localhost/avatar/delete',
	        	key : 100,
	        	extra : {
	        		id : 100
	        	}
	        } ]
		});
	</script>
</body>
</html>
