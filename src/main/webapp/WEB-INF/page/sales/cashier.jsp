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
			<!-- <section class="panel">
				<div class="panel-body">


					<a href="mail_compose.html" class="btn btn-compose"> 前台收银 </a>
					<ul class="nav nav-pills nav-stacked mail-nav">
						<li>
							<h4>订单号：<strong>NC34576876</strong></h4>
						</li>
						<li class="active"><a href="mail.html"> <i
								class="fa fa-inbox"></i> Inbox <span
								class="label label-danger pull-right inbox-notification">9</span></a></li>
						<li><a href="#"> <i class="fa fa-envelope-o"></i> Send
								Mail
						</a></li>
						<li><a href="#"> <i class="fa fa-certificate"></i>
								Important
						</a></li>
						<li><a href="#"> <i class="fa fa-file-text-o"></i> Drafts
								<span class="label label-info pull-right inbox-notification">123</span></a></a></li>
						<li><a href="#"> <i class="fa fa-trash-o"></i> Trash
						</a></li>
					</ul>
				</div>
			</section> -->

			<section class="panel">
				<div class="panel-body">
					<a href="mail_compose.html" class="btn btn-compose"> 前台收银 </a>
					<ul class="nav nav-pills nav-stacked labels-info ">
						<li>
							<h4>订单号：<strong>NC34576876</strong></h4>
						</li>
						<!-- <li><a href="#"> <i class="fa fa-comments-o text-success"></i>
								Jonathan Smith
								<p>I do not think</p></a></li>
						<li><a href="#"> <i class="fa fa-comments-o text-danger"></i>
								iRon
								<p>Busy with coding</p></a></li>
						<li><a href="#"> <i class="fa fa-comments-o text-muted "></i>
								Anjelina Joli
								<p>I out of control</p></a></li>
						<li><a href="#"> <i class="fa fa-comments-o text-muted "></i>
								Samual Daren
								<p>I am not here</p></a></li>
						<li><a href="#"> <i class="fa fa-comments-o text-muted "></i>
								Tis man
								<p>I do not think</p></a></li> -->
					</ul>
					
					 <table class="table table-bordered">
                                 <thead>
                                <tr>
                                    <th rowspan="2" align="center" style="text-align:center;">图像</th>
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
                                <tbody>
                                <!-- <tr>
                                    <td rowspan="2">图像</td>
                                    <td colspan="3">名称</td>
                                    <td colspan="2">口味</td>
                                </tr> -->
                                <tr>
                                    <td><img src="http://localhost:8080/yezic/resources/fileUpload/Desert1.jpg" alt="" /></td>
                                    <td>[￥5]A004鱼豆腐</td>
                                    <td>柠檬</td>
                                    <td>￥5.0</td>
                                    <td>1碗</td>
                                    <td>￥5.0</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Jacob</td>
                                    <td>Thornton</td>
                                    <td>@fat</td>
                                    <td>@mdo</td>
                                    <td>@mdo</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td colspan="2">Larry the Bird</td>
                                    <td>@twitter</td>
                                    <td>@mdo</td>
                                    <td>@mdo</td>
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

					<!-- <div class="btn-group pull-right">
						<button type="button" class="btn btn-white btn-sm">
							<i class="fa fa-check-square-o"></i> Select all
						</button>
						<button type="button" class="btn btn-white btn-sm">
							<i class="fa fa-folder-open"></i> Add New
						</button>
						<button type="button" class="btn btn-white btn-sm">
							<i class="fa fa-trash-o"></i> Delete
						</button>
					</div> -->
					<!-- <a href="#" type="button" class="btn pull-right btn-sm"><i
						class="fa fa-upload"></i> Upload New File</a> -->



					<div id="gallery" class="media-gal">
						<c:forEach items="${milkTeas}" var="item">
							<div class="${item.classificationId} item ">
								<a href="#myModal" data-toggle="modal"> <img
									src="${item.imagePath}" alt="" />
								</a>
								<p>${item.name}</p>
							</div>
						</c:forEach>
						<!-- 
						<div class=" 木瓜 item ">
							<a href="#myModal" data-toggle="modal"> <img
								src="images/gallery/image2.jpg" alt="" />
							</a>
							<p>img02.jpg</p>
						</div>

						<div class=" video item ">
							<a href="#myModal" data-toggle="modal"> <img
								src="images/gallery/image3.jpg" alt="" />
							</a>
							<p>img03.jpg</p>
						</div>

						<div class=" images audio item ">
							<a href="#myModal" data-toggle="modal"> <img
								src="images/gallery/image4.jpg" alt="" />
							</a>
							<p>img04.jpg</p>
						</div>

						<div class=" images documents item ">
							<a href="#myModal" data-toggle="modal"> <img
								src="images/gallery/image5.jpg" alt="" />
							</a>
							<p>img05.jpg</p>
						</div>

						<div class=" audio item ">
							<a href="#myModal" data-toggle="modal"> <img
								src="images/gallery/image1.jpg" alt="" />
							</a>
							<p>img01.jpg</p>
						</div>

						<div class=" documents item ">
							<a href="#myModal" data-toggle="modal"> <img
								src="images/gallery/image2.jpg" alt="" />
							</a>
							<p>img02.jpg</p>
						</div>
						<div class=" video item ">
							<a href="#myModal" data-toggle="modal"> <img
								src="images/gallery/image3.jpg" alt="" />
							</a>
							<p>img03.jpg</p>
						</div>

						<div class=" images item ">
							<a href="#myModal" data-toggle="modal"> <img
								src="images/gallery/image4.jpg" alt="" />
							</a>
							<p>img04.jpg</p>
						</div>

						<div class=" documents item ">
							<a href="#myModal" data-toggle="modal"> <img
								src="images/gallery/image5.jpg" alt="" />
							</a>
							<p>img05.jpg</p>
						</div>

						<div class=" video item ">
							<a href="#myModal" data-toggle="modal"> <img
								src="images/gallery/image1.jpg" alt="" />
							</a>
							<p>img01.jpg</p>
						</div>

						<div class=" audio images item ">
							<a href="#myModal" data-toggle="modal"> <img
								src="images/gallery/image2.jpg" alt="" />
							</a>
							<p>img02.jpg</p>
						</div>
 -->
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

					<!-- Modal -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title">添加产品</h4>
								</div>

								<div class="modal-body row">

									<div class="col-md-6 img-modal">
										<label class="control-label">选择图片</label> <input id="input-42"
											type="file" multiple=true class="file-loading">

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
											<label> 产品编号：</label> <input id="name" value="img01.jpg"
												class="form-control">
										</div>
										<div class="form-group">
											<label> 单位：</label> <input id="title" value="awesome image"
												class="form-control">
										</div>
										<div class="form-group">
											<label> 大小杯：</label>
											<textarea rows="2" class="form-control"></textarea>
										</div>
										<div class="form-group">
											<label> 销售价格：</label> <input id="link"
												value="images/gallery/img01.jpg" class="form-control">
										</div>
										<div class="form-group">
											<label> 成本价格：</label> <input id="link"
												value="images/gallery/img01.jpg" class="form-control">
										</div>
										<div class="form-group">
											<label> 积分：</label> <input id="link"
												value="images/gallery/img01.jpg" class="form-control">
										</div>
									</div>

								</div>

								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">关闭</button>
									<button type="button" class="btn btn-primary">保存</button>
								</div>

							</div>
						</div>
					</div>
					<!-- modal -->

				</div>
			</section>
		</div>
		<!-- page end-->
	</div>

	<!-- page end-->

	<%@ include file="/WEB-INF/page/common/footer.jsp"%>

	<!--Core js-->
	<script src="<c:url value="/resources/js/jquery.js"/>"></script>
	<script src="<c:url value="/resources/bs3/js/bootstrap.min.js"/>"></script>
	<script class="include" type="text/javascript"
		src="js/jquery.dcjqaccordion.2.7.js" />
	">
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
				id = $(this).attr('idattr');

				$.ajax({
					type : "GET",
					url : basePath + '/milkunit/getOneById?id=' + id,
					async : false,
					success : function(returnValue) {
						$('#name').val(returnValue.name);
					}
				});
			});
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

		// filter items when filter link is clicked
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
