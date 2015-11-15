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

						<div class="col-md-5 img-modal">
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
						
						<div class="col-md-7">
							<section class="panel">
								<div class="panel-body">
									<form class="form-horizontal bucket-form" method="get">
										<div class="form-group">
											<label class="col-sm-3 control-label col-lg-3">名称：</label>
											<div class="col-lg-9">
												<div class="input-group m-bot15">
												    <input id="milkId" name="milkId" type="hidden">
													<span class="input-group-addon btn-success">@</span> <input id="name" name="name" class="form-control" placeholder="请输入名称">
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-3 control-label col-lg-3">产品编号：</label>
											<div class="col-lg-9">
												<div class="input-group m-bot15">
													<span class="input-group-addon btn-success"><i class="fa fa-envelope"></i></span> <input id="productNumber"
									                      name="productNumber" class="form-control" placeholder="请输入账户名">
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-3 control-label col-lg-3">分类：</label>
											<div class="col-lg-9">
												<div class="input-group m-bot15">
													<span class="input-group-addon btn-danger"><i class="fa fa-user"></i></span> <select class="form-control"  id="classification">
									                 <c:forEach items="${milkClas}" var="item">
										             <option value="${item.id}#${item.name}">${item.name}</option>
									                 </c:forEach>
								                    </select> 
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-3 control-label col-lg-3">单位：</label>
											<div class="col-lg-9">
												<div class="input-group m-bot15">
													<span class="input-group-addon btn-danger"><i class="fa fa-user"></i></span> <select class="form-control" id="unit">
									                  <c:forEach items="${milkTeaUnits}" var="item">
										                <option value="${item.id}#${item.name}">${item.name}</option>
									                  </c:forEach>
								                     </select>
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-3 control-label col-lg-3">口味：</label>
											<div class="col-lg-9">
												<div class="input-group m-bot15">
													<span class="input-group-addon btn-success"><i class="fa fa-envelope"></i></span> <select class="form-control"  id="taste">
									                  <c:forEach items="${milkTeaTastes}" var="item">
										              <option value="${item.id}#${item.name}">${item.name}</option>
									                  </c:forEach>
								                    </select>
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-3 control-label col-lg-3">销售价格：</label>
											<div class="col-lg-9">
												<div class="input-group m-bot15">
                                                    <span class="input-group-addon btn-info">￥</span><input id="salePrice" name="salePrice" class="form-control">
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-3 control-label col-lg-3">成本价格：</label>
											<div class="col-lg-9">
												<div class="input-group m-bot15">
                                                    <span class="input-group-addon btn-info">￥</span><input id="costPrice" name="costPrice" class="form-control">
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-3 control-label col-lg-3">积分：</label>
											<div class="col-lg-9">
												<div class="input-group m-bot15">
                                                    <span class="input-group-addon btn-info">￥</span><input id="points" name="points" class="form-control">
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
	 $("#addMilkImage").fileinput({
        maxFileCount : 1,
        showUpload : false,
        initialPreview : ["<img src='"+basePath+"/resources/images/gallery/image5.jpg' class='file-preview-image' alt='Desert' title='Desert'>", ],
        
        initialPreviewConfig : [ {
        	caption : 'desert.jpg',
        	width : '120px',
        	key : 100,
        	extra : {
        		id : 100
        	}
        } ]
	 });
	 
	 $('.kv-file-remove btn btn-xs btn-default disabled').remove();
	 
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
				telid = $(this).attr('idattr');
				
				$.ajax({
					type : "GET",
					url : basePath + '/milk/getOneByTelId?telid='+telid,
					async: false, 
					success : function(returnValue) {
						$('.form-control').val("");
						$('#name').val(returnValue.name);
						$('#productNumber').val(returnValue.productNumber);
						$('#salePrice').val(returnValue.salePrice);
						$('#costPrice').val(returnValue.costPrice);
						$('#points').val(returnValue.points);
						$('#milkId').val(returnValue.id);
                         
						setSelect('classification',returnValue.classificationId+"#"+returnValue.classification);
						setSelect('taste',returnValue.tasteId+"#"+returnValue.taste);
						setSelect('unit',returnValue.unitId+"#"+returnValue.unit);
						$('#classification').val(returnValue.classificationId+"#"+returnValue.classification);
						$('#taste').val(returnValue.tasteId+"#"+returnValue.taste);
						$('#unit').val(returnValue.unitId+"#"+returnValue.unit);
                        $('.file-preview-image').attr('src',returnValue.imagePath);
                        var index = returnValue.imagePath.lastIndexOf('/');
                        var fileName = returnValue.imagePath.substring(index+1,returnValue.imagePath.length);
                        $('.file-footer-caption').html(fileName);
                        $('.file-caption-name').html("<span class='glyphicon glyphicon-file kv-caption-icon'></span>"+fileName);
                      
					}
			    });	     
			});
		});
		
		function setSelect(id,selected){
			var classificationOptions = $('#'+id).children();
			for(var i=0;i<classificationOptions.length;i++){
				var option = classificationOptions[i];
				if($(option).val()==selected){
					$(option).attr("selected", true);
				}else{
					$(option).removeAttr("selected");
				}
			}
		}
		

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
			var id=0;
			if(add==false){
				url = basePath + '/milk/update';
				id = $('#milkId').val();
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
					id:id,
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

		
	</script>
</body>
</html>
