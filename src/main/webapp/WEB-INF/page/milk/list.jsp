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
	
<link href="<c:url value="/resources/js/bootstrap-fileupload/fileinput.css"/>" media="all" rel="stylesheet" type="text/css" />
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
										   <a href="#myModal" data-toggle="modal">
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
												<th>First Name</th>
												<th>Last Name</th>
												<th>Points</th>
												<th>Status</th>
												<th>Edit</th>
												<th>Delete</th>
											</tr>
										</thead>
										<tbody>
											<tr class="">
												<td>Jonathan</td>
												<td>Smith</td>
												<td>3455</td>
												<td class="center">Lorem ipsume</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Mojela</td>
												<td>Firebox</td>
												<td>567</td>
												<td class="center">new user</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Akuman</td>
												<td>Dareon</td>
												<td>987</td>
												<td class="center">ipsume dolor</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Theme</td>
												<td>Bucket</td>
												<td>342</td>
												<td class="center">Good Org</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Jhone</td>
												<td>Doe</td>
												<td>345</td>
												<td class="center">super user</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Margarita</td>
												<td>Diar</td>
												<td>456</td>
												<td class="center">goolsd</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Jhon Doe</td>
												<td>Jhon Doe</td>
												<td>1234</td>
												<td class="center">user</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Helena</td>
												<td>Fox</td>
												<td>456</td>
												<td class="center">Admin</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Aishmen</td>
												<td>Samuel</td>
												<td>435</td>
												<td class="center">super Admin</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>dream</td>
												<td>Land</td>
												<td>562</td>
												<td class="center">normal user</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>babson</td>
												<td>milan</td>
												<td>567</td>
												<td class="center">nothing</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Waren</td>
												<td>gufet</td>
												<td>622</td>
												<td class="center">author</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Jhone</td>
												<td>Doe</td>
												<td>345</td>
												<td class="center">super user</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Margarita</td>
												<td>Diar</td>
												<td>456</td>
												<td class="center">goolsd</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Jhon Doe</td>
												<td>Jhon Doe</td>
												<td>1234</td>
												<td class="center">user</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Helena</td>
												<td>Fox</td>
												<td>456</td>
												<td class="center">Admin</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Aishmen</td>
												<td>Samuel</td>
												<td>435</td>
												<td class="center">super Admin</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>dream</td>
												<td>Land</td>
												<td>562</td>
												<td class="center">normal user</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>babson</td>
												<td>milan</td>
												<td>567</td>
												<td class="center">nothing</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Waren</td>
												<td>gufet</td>
												<td>622</td>
												<td class="center">author</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Jhone</td>
												<td>Doe</td>
												<td>345</td>
												<td class="center">super user</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Margarita</td>
												<td>Diar</td>
												<td>456</td>
												<td class="center">goolsd</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Jhon Doe</td>
												<td>Jhon Doe</td>
												<td>1234</td>
												<td class="center">user</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Helena</td>
												<td>Fox</td>
												<td>456</td>
												<td class="center">Admin</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Aishmen</td>
												<td>Samuel</td>
												<td>435</td>
												<td class="center">super Admin</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>dream</td>
												<td>Land</td>
												<td>562</td>
												<td class="center">normal user</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>babson</td>
												<td>milan</td>
												<td>567</td>
												<td class="center">nothing</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
											<tr class="">
												<td>Waren</td>
												<td>gufet</td>
												<td>622</td>
												<td class="center">author</td>
												<td><a class="edit" href="javascript:;">Edit</a></td>
												<td><a class="delete" href="javascript:;">Delete</a></td>
											</tr>
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
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        <h4 class="modal-title">添加产品</h4>
                                    </div>

                                    <div class="modal-body row">

                                        <div class="col-md-6 img-modal"> 
										    <label class="control-label">选择图片</label>
                                            <input id="input-42" type="file" multiple=true class="file-loading">
										
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
                                                <label> 产品编号：</label>
                                                <input id="name" value="img01.jpg" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label> 单位：</label>
                                                <input id="title" value="awesome image" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label> 大小杯：</label>
                                                <textarea rows="2" class="form-control"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label> 销售价格：</label>
                                                <input id="link" value="images/gallery/img01.jpg" class="form-control">
                                            </div>
											<div class="form-group">
                                                <label> 成本价格：</label>
                                                <input id="link" value="images/gallery/img01.jpg" class="form-control">
                                            </div>
											<div class="form-group">
                                                <label> 积分：</label>
                                                <input id="link" value="images/gallery/img01.jpg" class="form-control">
                                            </div>
                                        </div>

                                    </div>
									
									<div class="modal-footer">                
									     <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>  
										 <button type="button" class="btn btn-primary">保存</button>    
								    </div> 

                                </div>
                            </div>
                        </div>
                        <!-- modal -->


	</section>
	<%@ include file="/WEB-INF/page/common/footer.jsp"%>
	<script src="<c:url value="/resources/js/table-editable.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap-fileupload/fileinput.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/resources/js/bootstrap-fileupload/fileinput_locale_zh.js"/>" type="text/javascript"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			EditableTable.init();
		});
		
		$("#input-42").fileinput({
	        maxFileCount: 1,
			showUpload: false,
			initialPreview: [
	          "<img src='"+basePath+"/resources/images/gallery/image5.jpg' class='file-preview-image' alt='Desert' title='Desert'>",
	        ],
			
			initialPreviewConfig: [
	        {
	           caption: 'desert.jpg', 
	           width: '120px', 
	           url: '/localhost/avatar/delete', 
	           key: 100, 
	           extra: {id: 100}
	        }
	       ] 
		   
	    });
	</script>
</body>
</html>
