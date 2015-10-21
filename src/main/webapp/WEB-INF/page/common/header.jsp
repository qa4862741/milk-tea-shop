<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

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
			<li><input type="text" class="form-control search"
				placeholder=" Search"></li>
			<!-- user login dropdown start-->
			<li class="dropdown"><a data-toggle="dropdown"
				class="dropdown-toggle" href="#"> <img alt=""
					src="<c:url value="/resources/images/avatar1_small.jpg"/>"> <span class="username">John
						Doe</span> <b class="caret"></b>
			</a>
				<ul class="dropdown-menu extended logout">
					<li><a href="#"><i class=" fa fa-suitcase"></i>Profile</a></li>
					<li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
					<li><a href="login.html"><i class="fa fa-key"></i> Log Out</a></li>
				</ul></li>
			<!-- user login dropdown end -->
			<li>
				<div class="toggle-right-box">
					<div class="fa fa-bars"></div>
				</div>
			</li>
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
				    <a href="javascript:;"> 
				        <i class="fa fa-laptop"></i> <span>基础资料管理</span>
				    </a>
					<ul class="sub">
						<li><a href="${basePath}/milk/list">奶茶产品管理</a></li>
						<li><a href="${basePath}/milkclassification/list">奶茶分类管理</a></li>
						<li><a href="${basePath}/milkunit/list">奶茶单位管理</a></li>
						<li><a href="${basePath}/milktaste/list">奶茶口味管理</a></li>
					</ul>
				</li>
				
				<li class="sub-menu"><a href="javascript:;"> <i
						class="fa fa-envelope"></i> <span>销售管理 </span>
				</a>
					<ul class="sub">
						<li><a href="${basePath}/sales/list">销售列表</a></li>
						<li><a href="${basePath}/sales/cashier" target="blank">收银</a></li>
					</ul>
				</li>
				
				<li class="sub-menu"><a href="javascript:;"> <i
						class="fa fa-envelope"></i> <span>会员管理 </span>
				</a>
					<ul class="sub">
						<li><a href="${basePath}/vip/list">会员管理</a></li>
					</ul></li>
					
				<li class="sub-menu"><a href="javascript:;"> <i
						class=" fa fa-bar-chart-o"></i> <span>Charts</span>
				</a>
					<ul class="sub">
						<li><a href="morris.html">Morris</a></li>
						<li><a href="chartjs.html">Chartjs</a></li>
						<li><a href="flot_chart.html">Flot Charts</a></li>
						<li><a href="c3_chart.html">C3 Chart</a></li>
					</ul></li>
				<li class="sub-menu"><a href="javascript:;"> <i
						class=" fa fa-bar-chart-o"></i> <span>Maps</span>
				</a>
					<ul class="sub">
						<li><a href="google_map.html">Google Map</a></li>
						<li><a href="vector_map.html">Vector Map</a></li>
					</ul></li>
				<li class="sub-menu"><a href="javascript:;"> <i
						class="fa fa-glass"></i> <span>Extra</span>
				</a>
					<ul class="sub">
						<li><a href="blank.html">Blank Page</a></li>
						<li><a href="lock_screen.html">Lock Screen</a></li>
						<li><a href="profile.html">Profile</a></li>
						<li><a href="invoice.html">Invoice</a></li>
						<li><a href="pricing_table.html">Pricing Table</a></li>
						<li><a href="timeline.html">Timeline</a></li>
						<li><a href="gallery.html">Media Gallery</a></li>
						<li><a href="404.html">404 Error</a></li>
						<li><a href="500.html">500 Error</a></li>
						<li><a href="registration.html">Registration</a></li>
					</ul></li>
				<li><a href="login.html"> <i class="fa fa-user"></i> <span>Login
							Page</span>
				</a></li>
			</ul>
		</div>
		<!-- sidebar menu end-->
	</div>
</aside>
<!--sidebar end-->
