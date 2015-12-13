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
    <!--header start-->
<header class="header clearfix">
	<!--logo start-->
	<div class="brand">
		<a href="${basePath}/" class="logo"> <img
			src="<c:url value="/resources/images/logo.png"/>" alt="">
		</a>
		<div class="sidebar-toggle-box">
			<div class="fa fa-bars"></div>
		</div>
	</div>
	<!--logo end-->

	<div class="nav notify-row" id="top_menu">
		<!--  notification start -->
		<ul class="nav top-menu">
			<!-- settings start -->
			<li class="dropdown"><a data-toggle="dropdown"
				class="dropdown-toggle" href="#"> <i class="fa fa-tasks"></i> <span
					class="badge bg-success">8</span>
			</a>
				<ul class="dropdown-menu extended tasks-bar">
					<li>
						<p class="">You have 8 pending tasks</p>
					</li>
					<li><a href="#">
							<div class="task-info clearfix">
								<div class="desc pull-left">
									<h5>Target Sell</h5>
									<p>25% , Deadline 12 June’13</p>
								</div>
								<span class="notification-pie-chart pull-right"
									data-percent="45"> <span class="percent"></span>
								</span>
							</div>
					</a></li>
					<li><a href="#">
							<div class="task-info clearfix">
								<div class="desc pull-left">
									<h5>Product Delivery</h5>
									<p>45% , Deadline 12 June’13</p>
								</div>
								<span class="notification-pie-chart pull-right"
									data-percent="78"> <span class="percent"></span>
								</span>
							</div>
					</a></li>
					<li><a href="#">
							<div class="task-info clearfix">
								<div class="desc pull-left">
									<h5>Payment collection</h5>
									<p>87% , Deadline 12 June’13</p>
								</div>
								<span class="notification-pie-chart pull-right"
									data-percent="60"> <span class="percent"></span>
								</span>
							</div>
					</a></li>
					<li><a href="#">
							<div class="task-info clearfix">
								<div class="desc pull-left">
									<h5>Target Sell</h5>
									<p>33% , Deadline 12 June’13</p>
								</div>
								<span class="notification-pie-chart pull-right"
									data-percent="90"> <span class="percent"></span>
								</span>
							</div>
					</a></li>

					<li class="external"><a href="#">See All Tasks</a></li>
				</ul></li>
			<!-- settings end -->
			<!-- inbox dropdown start-->
			<li id="header_inbox_bar" class="dropdown"><a
				data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
					class="fa fa-envelope-o"></i> <span class="badge bg-important">4</span>
			</a>
				<ul class="dropdown-menu extended inbox">
					<li>
						<p class="red">You have 4 Mails</p>
					</li>
					<li><a href="#"> <span class="photo"><img
								alt="avatar" src="<c:url value="/resources/images/avatar-mini.jpg"/>"></span> <span
							class="subject"> <span class="from">Jonathan Smith</span>
								<span class="time">Just now</span>
						</span> <span class="message"> Hello, this is an example msg. </span>
					</a></li>
					<li><a href="#"> <span class="photo"><img
								alt="avatar" src="<c:url value="/resources/images/avatar-mini-2.jpg"/>"></span> <span
							class="subject"> <span class="from">Jane Doe</span> <span
								class="time">2 min ago</span>
						</span> <span class="message"> Nice admin template </span>
					</a></li>
					<li><a href="#"> <span class="photo"><img
								alt="avatar" src="<c:url value="/resources/images/avatar-mini-3.jpg"/>"></span> <span
							class="subject"> <span class="from">Tasi sam</span> <span
								class="time">2 days ago</span>
						</span> <span class="message"> This is an example msg. </span>
					</a></li>
					<li><a href="#"> <span class="photo"><img
								alt="avatar" src="<c:url value="/resources/images/avatar-mini.jpg"/>"></span> <span
							class="subject"> <span class="from">Mr. Perfect</span> <span
								class="time">2 hour ago</span>
						</span> <span class="message"> Hi there, its a test </span>
					</a></li>
					<li><a href="#">See all messages</a></li>
				</ul></li>
			<!-- inbox dropdown end -->
			<!-- notification dropdown start-->
			<li id="header_notification_bar" class="dropdown"><a
				data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
					class="fa fa-bell-o"></i> <span class="badge bg-warning">3</span>
			</a>
				<ul class="dropdown-menu extended notification">
					<li>
						<p>Notifications</p>
					</li>
					<li>
						<div class="alert alert-info clearfix">
							<span class="alert-icon"><i class="fa fa-bolt"></i></span>
							<div class="noti-info">
								<a href="#"> Server #1 overloaded.</a>
							</div>
						</div>
					</li>
					<li>
						<div class="alert alert-danger clearfix">
							<span class="alert-icon"><i class="fa fa-bolt"></i></span>
							<div class="noti-info">
								<a href="#"> Server #2 overloaded.</a>
							</div>
						</div>
					</li>
					<li>
						<div class="alert alert-success clearfix">
							<span class="alert-icon"><i class="fa fa-bolt"></i></span>
							<div class="noti-info">
								<a href="#"> Server #3 overloaded.</a>
							</div>
						</div>
					</li>

				</ul></li>
			<!-- notification dropdown end -->
		</ul>
		<!--  notification end -->
	</div>
	<div class="top-nav clearfix">
		<!--search & user info start-->
		<ul class="nav pull-right top-menu">
			<li class="dropdown"><a data-toggle="dropdown"
				class="dropdown-toggle" href="#"> <img alt=""
					src="<c:url value="/resources/images/gallery/image2.jpg"/>"> <span class="username">${stores.name}</span> <b class="" ></b>
			</a></li>
		    <li>&nbsp;&nbsp;&nbsp;&nbsp;
			</li>
			<!-- user login dropdown start-->
			<li class="dropdown"><a data-toggle="dropdown"
				class="dropdown-toggle" href="#"> <img alt=""
					src="<c:url value="/resources/images/avatar1_small.jpg"/>"> <span class="username">${employ.name}</span> <b class="caret"></b>
			</a>
				<ul class="dropdown-menu extended logout">
					<li><a href="#"><i class=" fa fa-suitcase"></i>Profile</a></li>
					<li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
					<li><a href="login.html"><i class="fa fa-key"></i> Log Out</a></li>
				</ul></li>
			<!-- user login dropdown end -->
		</ul>
		<!--search & user info end-->
	</div>
</header>
    <div class="row" padding-top="20px" margin-top="20px">
       <div class="col-sm-5">
       </div>
    </div>
	<!-- page start-->
	<div class="row" padding-top="20px" margin-top="20px">
		<div class="col-sm-5">
			<section class="panel">
				<div class="panel-body">
					<ul class="nav nav-pills nav-stacked labels-info ">
					   <div class="form-group">
							<div class="input-group m-bot15">
								<span class="input-group-addon btn-info">会员号</span>
								 <input type="text" class="form-control"> <span
									class="input-group-addon btn-success">添加会员</span> 
							</div>
						</div>

						<table class="table table-bordered" cellpadding="3" cellspacing="1">
							<thead> 
								 <tr>
									<th rowspan="2"  style="text-align:center;vertical-align:middle">图像</th>
									<th colspan="3">名称</th>
									<th>口味</th>
									<th>加料</th>
								</tr>

								<tr class="salesTrHead">
									<th>单价</th>
									<th>数量</th>
									<th>单位</th>
									<th>金额</th>
									<th>删除</th>
								</tr>
							</thead>
							<tbody id="salesBody">
							</tbody>
						</table>
						
						<li style="padding-top:20px;padding-buttom:20px">
							<h4>
								&nbsp;<i class="fa fa-plus"></i>订单总金额：<strong id="sumCash">￥0</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<i class="fa fa-plus"></i>订单项数量：<strong id="sumCount">0</strong>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<button id="deleteOrder" margin-lef="100px" padding-lef="100px" class="btn btn-danger delete">删除订单<i class="fa fa-delete"></i></button><br><br><br>
							</h4>
						</li>
						<!-- data-toggle="modal" -->
						<a href="#cashierModal"  class="btn btn-compose btn-lg" id="doCashier">
					      <i class="fa fa-plus-square"></i>&nbsp;&nbsp;&nbsp;结账</a>
					</ul>
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
						<li><a href="#" data-filter="*">全部</a></li>
						<c:forEach items="${milkClas}" var="item">
							<li><a href="#" data-filter=".${item.id}">${item.name}</a></li>
						</c:forEach>
					</ul>

					<div id="gallery" class="media-gal">
						<c:forEach items="${milkTeas}" var="item">
							<div class="${item.classificationId} item ">
								<a href="#" class="chooseMilk" value="${item.id}"><img src="${item.imagePath}" alt="${item.name}"/></a>
								<p><button class="btn btn-info btn-lg selectMilk" value="${item.id}">${item.name}<i class="fa fa-delete"></i></button></p>
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
	<div class="modal fade" id="cashierModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">结账</h4>
				</div>

				<div class="modal-body row">
					<div class="col-md-10">
						<section class="panel">
							<div class="panel-body">
								<form class="form-horizontal bucket-form" method="get">
									<div class="form-group">
										<label class="col-sm-3 control-label col-lg-3">应收金额：</label>
										<div class="col-lg-9">
											<div class="input-group m-bot15">

												<span class="input-group-addon btn-success">￥</span> <input
													type="text" id="shouldPay" readonly class="form-control"> <span
													class="input-group-addon btn-danger">元</span> 
													
											</div>
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-3 control-label col-lg-3">付费金额：</label>
										<div class="col-lg-9">
											<div class="input-group m-bot15">
											    <span class="input-group-addon btn-success">￥</span> <input
													type="text" id="actualPay" class="form-control"> <span
													class="input-group-addon btn-danger">元</span> 
												 <div class="input-group-btn">
                                                    <button tabindex="-1" class="btn btn-info" type="button" id="paymentWayButton">现金付费</button>
                                                    <button tabindex="-1" data-toggle="dropdown" class="btn btn-info dropdown-toggle" type="button">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul role="menu" class="dropdown-menu pull-right">
                                                        <li class="divider"></li>
                                                        <li><a href="#" class="paymentWay">现金付费</a></li>
                                                        <li class="divider"></li>
                                                        <li><a href="#" class="paymentWay">储蓄卡付费</a></li>
                                                        <li class="divider"></li>
                                                        <li><a href="#" class="paymentWay">信用卡付费</a></li>
                                                        <li class="divider"></li>
                                                        <li><a href="#" class="paymentWay">代金券付费</a></li>
                                                    </ul>
                                                  </div>
											</div>
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-3 control-label col-lg-3">找零：</label>
										<div class="col-lg-9">
											<div class="input-group m-bot15">
											      <span class="input-group-addon btn-success">￥</span> <input
													type="text" id="exchange" class="form-control"> <span
													class="input-group-addon btn-danger">元</span> 
											</div>
										</div>
                                            
                                      <div id="printDiv">
                                                                                结账单<br>
                                                                                叶子C奶茶店<br>
                                        NO：882015112900009<br>
                                        <table>
                                            <tbody id="printTable">
                                                <tr>
                                                    <td>奶茶产品</td>
                                                    <td>数量 </td>
                                                    <td>金额</td>
                                                </tr>
                                                <tr>
                                                    <td>水蜜桃优格</td>
                                                    <td>1</td>
                                                    <td>￥16</td>
                                                </tr>
                                                <tr>
                                                    <td>石榴 </td>
                                                    <td>1</td>
                                                    <td>￥16</td>
                                                </tr>
							                </tbody>
                                                
                                        </table>
                                      </div>
								</form>
							</div>
						</section>
					</div>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" id="closeButton" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal"
						id="saveChanges">保存</button>
				</div>

			</div>
		</div>
	</div>
	<!-- modal -->

	<!-- page end-->

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
	
	<script
		src="<c:url value="/resources/js/bootstrap-fileupload/fileinput.js"/>"></script>
		
	<script
		src="<c:url value="/resources/js/bootstrap-fileupload/fileinput_locale_zh.js"/>"></script>

    <script src="<c:url value="/resources/js/bootbox.js"/>"
		type="text/javascript"></script>
		
	<script language=javascript src=<c:url value="/resources/js/print.js"/>></script>
		
	<script type="text/javascript">
	    var delId = 0;
	    $('.paymentWay').each(function() {
		    $(this).click(function() {
			   $('#paymentWayButton').html($(this).html());
	    	});
	    });
	    
	    $('#deleteOrder').click(function(){
	    	$('#salesBody').children('tr').remove();
	    	$('#doCashier').attr('data-toggle','');
	    	$('#sumCash').html('￥0')
	    	$('#sumCount').html('0')
	    });
		
	    $('#actualPay').bind("input",function(){
			var shouldPay = $('#shouldPay').val();
				
			var actualPay = $('#actualPay').val();
				
			$('#exchange').val(actualPay-shouldPay);
		 });
	    
	    function getAdditions(){
	    	 var result = "";
	    	 $.ajax({
					type : "GET",
					url : basePath + '/materialaddition/getAll',
					async : false,
					
					success : function(returnValue) {
						for(var i=0;i<returnValue.length;i++){
							result = result +  "<option value='"+returnValue[i].name+"'>"+returnValue[i].name+"</option>"
						}
					}
				});
	    	 return result;
	    }
	    
	    function getUnits(){
	    	var result = "";
	    	 $.ajax({
					type : "GET",
					url : basePath + '/milkunit/getAll',
					async : false,
					
					success : function(returnValue) {
						for(var i=0;i<returnValue.length;i++){
							result = result +  "<option value='"+returnValue[i].name+"'>"+returnValue[i].name+"</option>"
						}
					}
				});
	    	 return result;
	    }
	    
	    function addMilkTea(id){
	    	
			$.ajax({
				type : "GET",
				url : basePath + '/milk/getOneById?id=' + id,
				async : true,
				success : function(returnValue) {
					var dataToggle = $('#doCashier').attr('data-toggle');
					if(dataToggle==null||dataToggle==''){
						$('#doCashier').attr('data-toggle','modal');
					}
					var idEle = $('#milkTeaId'+id);
					var idValue = idEle.val();
						var upDown = 
						"<div class='input-group input-small' style='width:80px;'>"
                          +"<input type='text' value='1' count='1' class='spinner-input form-control countValue' id='countValue"+id+"'>"
                          +"<div class='spinner-buttons input-group-btn btn-group-vertical'>"
                            +"<button type='button' class='btn spinner-up btn-xs btn-info addCount' id='addCount"+id+"'>"
                                +"<i class='fa fa-angle-up'></i>" 
                            +"</button>"
                            +"<button type='button' class='btn spinner-down btn-xs btn-danger minutesCount' id='minutesCount"+id+"'>"
                                +"<i class='fa fa-angle-down'></i>"
                            +"</button>"
                          +"</div>"
                        +"</div>";
                        
                        delId++;
                        var additions = getAdditions();
                        var units = getUnits();
                        
						var html = 
						    "<tr class='salesTrHead'>"
						   +    "<td rowspan='2' class='salesTrImage' style='text-align:center;vertical-align:middle'><img class='img' src='"+returnValue.scaledImagePath+"' alt='' /></td>"
				           +    "<input type='hidden' value='"+id+"' name='milkTeaId' id='milkTeaId"+id+"'/>"
				           +    "<td colspan='3' class='salesTrName'>"+returnValue.name+"</td>"
				           +    "<td  class='salesTrTaste'>"+returnValue.taste+"</td>"
				           +    "<td>"
				           +       "<select class='salesTrAddition'>"
				           +           additions
					       +       "</select>"
						   +    "</td>"
			               +"</tr>"
				           +"<tr class='salesTrTail'>"
			               +    "<td class='salesTrUnitPrice' style='vertical-align:middle'>￥"+returnValue.salePrice+"</td>"
			               +    "<td class='salesTrCount' style='text-align:center;vertical-align:middle'>1</td>"
			               +    "<td style='vertical-align:middle'>"
				           +       "<select class='salesTrUnit'>"
                           +           units
					       +       "</select>"
			               +    "</td>"
			               +    "<td class='payMoney' style='vertical-align:middle'>￥"+returnValue.salePrice+"</td>" 
			               +    "<td style='vertical-align:middle'>"
			               +        "<a class='btn btn-danger delete btn-sm' id='delMilkItem"+id+"del"+delId+"'><i class='fa fa-times'></i>删除</a>"
			               +    "</td>"
			               +"</tr>";
			               
						 $('#salesBody').append($(html));
						 var sumAmount = $('#sumCash').html().substring(1);
						 $('#sumCash').html('￥'+(parseFloat(sumAmount)+parseFloat(returnValue.salePrice)));
							 
						 var sumCount = $('#sumCount').html();
						 $('#sumCount').html(parseInt(sumCount)+1); 
						 
						 
						 var delIdName = 'delMilkItem'+id+"del"+delId;
						 $('#'+delIdName).click(function(){
							 var salesTrTail = $(this).parent().parent();
							 var salesTrHead = $(salesTrTail).prev();
							 $(salesTrTail).remove();
							 $(salesTrHead).remove();
							
							 var payMoneyEle = salesTrTail.find('.payMoney');
							 var payMoney = payMoneyEle.html().substring(1);
							 var sumAmount = $('#sumCash').html().substring(1);
							 $('#sumCash').html('￥'+(parseFloat(sumAmount)-parseFloat(payMoney)));
							 var sumCount = $('#sumCount').html();
							 $('#sumCount').html(parseInt(sumCount)-1);
							 
							 var size = $('#salesBody').children('tr').size();
							 if(size==0){
								 $('#doCashier').attr('data-toggle','');
							 }
						 });
						 
						 $('#countValue'+id).bind("blur",function(){
							 var countBefore = $('#countValue'+id).attr('count');
							 var countValEle = $('#countValue'+id);
							 var count = $('#countValue'+id).val();
							 $('#countValue'+id).attr('count',count);
							 var trTail = countValEle.parent().parent().parent();
							 var salesTrUnitPrice = trTail.find('.salesTrUnitPrice').html().substring(1);
								
								var payMoneyEle = trTail.find('.payMoney');
								var payMoney = payMoneyEle.html().substring(1);
								payMoneyEle.html('￥'+(count*parseFloat(salesTrUnitPrice)));
								
							    var sumAmount = $('#sumCash').html().substring(1);
								$('#sumCash').html('￥'+(parseFloat(sumAmount)+(count-countBefore)*parseFloat(salesTrUnitPrice)));
								
								var sumCount = $('#sumCount').html();
								$('#sumCount').html(parseInt(sumCount)+parseInt(count)-parseInt(countBefore)); 
						 });
						 
						 $('#addCount'+id).click(function(){
							 var countValEle = $('#countValue'+id);
							 countValEle.val(parseInt(countValEle.val())+1);
							 countValEle.attr('count',parseInt(countValEle.val())+1);
							 
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
								 countValEle.attr('count',parseInt(countValEle.val())-1);
								 
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
					
				}
			});
	    }
	    
		$('.chooseMilk').each(function() {
			$(this).click(function() {
				var id = $(this).attr('value');
				addMilkTea(id);
			});
		});
		
		$('.selectMilk').each(function() {
			$(this).click(function() {
				var id = $(this).attr('value');
				addMilkTea(id);
			});
		});
		
		$('#doCashier').click(function(){
			var size = $('#salesBody').children('tr').size();
			if(size==0){
				 $('#closeButton').click();
			      $('#cashierModal').modal('hide');
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
			          message: '请先选择奶茶',  
			          callback: function(result) {  

			          },  
			          });
			     
			      return ;
			}
			
			$('#printTable').children('tr').remove();
			$('#sumPayAmount').remove();
			var head = '<tr><td>奶茶产品</td><td>数量 </td><td>金额</td></tr>';
			$('#printTable').append(head);
			
			var trHeads = $('#salesBody').find('.salesTrHead');
			var trTails = $('#salesBody').find('.salesTrTail');
			for(var i=0;i<trHeads.length;i++){
	           var trHead = trHeads[i];
	           var trTail = trTails[i];
	           
	           var name = $(trHead).find('.salesTrName').html();
	           
	           var unitPrice = $(trTail).find('.salesTrUnitPrice').html();
	           
	           var count = $(trTail).find('.salesTrCount').html();
	           
	           var element = ' <tr><td>'+name+'</td><td>'+count+'</td> <td>'+unitPrice+'</td></tr>';
	           $('#printTable').append(element);
	          
	        }
			
		    var shouldPay = $('#shouldPay').val();
	        $('#printDiv').append('<div id="sumPayAmount">总金额：￥'+shouldPay+'</div>');
	        $('#printDiv').css("display","none");
	        
	        
			var money = 0.0;
			$('.payMoney').each(function() {
				var text = $(this).text();
				text = text.substring(1);
				money = money + parseFloat(text);
			});
			$('#shouldPay').val(money);
			
			$('#actualPay').val(money);
			
			$('#exchange').val(0);
			
			doPrint('printDiv');
			
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
            	
            	var addition = $(trHead).find('.salesTrAddition').val();
            	result = result+"\"addition\":"+"\""+addition+"\",";
            	
            	var unitPrice = $(trTail).find('.salesTrUnitPrice').html();
            	result = result+"\"unitPrice\":"+"\""+unitPrice.substring(1) +"\",";
            	
            	var count = $(trTail).find('.salesTrCount').html();
            	result = result+"\"count\":"+"\""+count+"\",";
            	
            	var unit = $(trTail).find('.salesTrUnit').val();
            	result = result+"\"unit\":"+"\""+unit+"\",";
            	
            	result = result + "}"
            	if(i!=trHeads.length-1){
            		result = result + ",";
            	}
            }
            result = result + "]";
            var shouldPay = $('#shouldPay').val();
			
			var actualPay = $('#actualPay').val();
			
			var exchange = $('#exchange').val();
			
            var shouldPay = $('#shouldPay').val();
            
            var paymentway = $('#paymentWayButton').html();
            
            $.ajax({
				type : "POST",
				url : basePath + '/sales/doCashier',
				async : true,
				data: {
					content:result,
					orderNumber : 'NC201510310005',
					amount :shouldPay,
					exchange:exchange,
					actualPay:actualPay,
					paymentway:paymentway
				},
				success : function(returnValue) {
					
				}
			});
            
            $('#salesBody').children('tr').remove();
            $('#sumCash').html('￥0')
	    	$('#sumCount').html('0')
	    	
			$('#cashierModal').modal('hide');
			$('#cashierModal').modal('remove');
		});
	</script>
</body>
</html>
