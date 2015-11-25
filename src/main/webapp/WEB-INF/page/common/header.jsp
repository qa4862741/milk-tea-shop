<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!--header start-->
<header class="header fixed-top clearfix">
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
<!--header end-->
<!--sidebar start-->
<aside>
	<div id="sidebar" class="nav-collapse">
		<!-- sidebar menu start-->
		<div class="leftside-navigation">
			<ul class="sidebar-menu" id="nav-accordion">
			   <li class="sub-menu">
				    <a href="javascript:;" class="managers"> 
				        <i class="fa fa-laptop"></i> <span>基础资料管理</span>
				    </a>
					<ul class="sub">
						<li><a href="${basePath}/milk/list" class="clickItem" id="milkList">奶茶产品管理</a></li>
						<li><a href="${basePath}/milkclassification/list" class="clickItem" id="milkclassificationList">奶茶分类管理</a></li>
						<li><a href="${basePath}/milkunit/list" class="clickItem" id="milkunitList">奶茶单位管理</a></li>
						<li><a href="${basePath}/milktaste/list" class="clickItem" id="milktasteList">奶茶口味管理</a></li>
						<li><a href="${basePath}/materialaddition/list" class="clickItem" id="materialadditionList">奶茶配料管理</a></li>
					</ul>
				</li>
				
				<li class="sub-menu"><a href="javascript:;" class="managers"> <i
						class="fa fa-shopping-cart"></i> <span>销售管理 </span>
				</a>
					<ul class="sub">
						<li><a href="${basePath}/sales/list" class="clickItem" id="salesList">销售列表</a></li>
						<li><a href="${basePath}/sales/cashier" target="blank" class="clickItem" id="salesCashier">收银</a></li>
					</ul>
				</li>
				
				<li class="sub-menu"><a href="javascript:;" class="managers"> <i
						class="fa  fa-vimeo-square"></i> <span>会员管理 </span>
				</a>
					<ul class="sub">
						<li><a href="${basePath}/vip/list" class="clickItem" id="vipList">会员管理</a></li>
						<li><a href="${basePath}/vip/recharge" class="clickItem" id="viprecharge">会员充值</a></li>
					</ul></li>
					
					<li class="sub-menu"><a href="javascript:;" class="managers"> <i
						class="fa fa-envelope"></i> <span>门店管理 </span>
				</a>
					<ul class="sub">
						<li><a href="${basePath}/stores/list" class="clickItem" id="storesList">门店管理</a></li>
					</ul></li>
					
					<li class="sub-menu"><a href="javascript:;" class="managers"> <i
						class="fa fa-male"></i> <span>员工管理 </span>
				</a>
					<ul class="sub">
						<li><a href="${basePath}/employee/list" class="clickItem" id="employeeList">员工管理</a></li>
					</ul></li>
					
					<li class="sub-menu"><a href="javascript:;"  class="managers"> <i
						class="fa fa-user"></i> <span>用户权限管理 </span>
				</a>
					<ul class="sub">
					    <li><a href="${basePath}/user/list" class="clickItem"  id="userList">用户管理</a></li>
						<li><a href="${basePath}/role/list" class="clickItem"  id="roleList">角色管理</a></li>
						<shiro:hasPermission name="resourcesManager"> 
                           <li><a href="${basePath}/resources/list" class="clickItem"  id="resourcesList">资源管理</a></li>
                        </shiro:hasPermission>
						
					</ul></li>
					
					<li class="sub-menu">
					  <a href="javascript:;"  class="managers"> 
					     <i class="fa fa-bar-chart-o"></i> <span>报表管理 </span>
				      </a>
				      <ul class="sub">
					    <li><a href="${basePath}/reports/monthSaleReports" class="clickItem"  id="reportsMonthSaleReports">奶茶销量月度报表</a></li>
					  </ul>
					</li>
					
					<li class="sub-menu">
					  <a href="javascript:;"  class="managers"> 
					     <i class="fa fa-bar-chart-o"></i> <span>物料管理 </span>
				      </a>
				      <ul class="sub">
					    <li><a href="${basePath}/materiel/list" class="clickItem"  id="materiel">物料管理</a></li>
					  </ul>
					</li>
					
					<li class="sub-menu">
					  <a href="javascript:;"  class="managers"> 
					     <i class="fa fa-bar-chart-o"></i> <span>物料入库</span>
				      </a>
				      <ul class="sub">
					    <li><a href="${basePath}/inorder/list" class="clickItem"  id="inorder">物料入库</a></li>
					  </ul>
					</li>
					
			</ul>
		</div>
		<!-- sidebar menu end-->
	</div>
</aside>
<!--sidebar end-->

