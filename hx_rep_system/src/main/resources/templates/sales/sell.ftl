<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>华夏ERP/销售订单</title>
	<#include "../header/headerLink.html"/>
	<style>
		.product td input[type="text"]{
			width: 62px;
			height: 24px;
		}
		select[name="materialId"] {
			width: 70px;
		}
	</style>
  </head>
  <body>
    <#--<div class="page">-->
      <#--<!-- Main Navbar&ndash;&gt;-->
      <#--<header class="header">-->
        <#--<nav class="navbar">-->
          <#--<!-- Search Box&ndash;&gt;-->
          <#--<div class="search-box">-->
            <#--<button class="dismiss"><i class="icon-close"></i></button>-->
            <#--<form id="searchForm" action="#" role="search">-->
              <#--<input type="search" placeholder="What are you looking for..." class="form-control">-->
            <#--</form>-->
          <#--</div>-->
          <#--<div class="container-fluid">-->
            <#--<div class="navbar-holder d-flex align-items-center justify-content-between">-->
              <#--<!-- Navbar Header&ndash;&gt;-->
              <#--<div class="navbar-header">-->
                <#--<!-- Navbar Brand &ndash;&gt;<a href="index.html" class="navbar-brand d-none d-sm-inline-block">-->
                  <#--<div class="brand-text d-none d-lg-inline-block"><strong>华夏ERP</strong></div>-->
                  <#--<div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>BD</strong></div></a>-->
                <#--<!-- Toggle Button&ndash;&gt;<a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>-->
              <#--</div>-->
              <#--<!-- Navbar Menu &ndash;&gt;-->
              <#--<ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">-->
                <#--<!-- Search&ndash;&gt;-->
                <#--<li class="nav-item d-flex align-items-center"><a id="search" href="#"><i class="icon-search"></i></a></li>-->
                <#--<!-- Notifications&ndash;&gt;-->
                <#--<li class="nav-item dropdown"> <a id="notifications" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-bell-o"></i><span class="badge bg-red badge-corner">0</span></a>-->
                  <#--<ul aria-labelledby="notifications" class="dropdown-menu">-->
                    <#--<li><a rel="nofollow" href="#" class="dropdown-item"> -->
                        <#--<div class="notification">-->
                          <#--<div class="notification-content"><i class="fa fa-envelope bg-green"></i>您有0条消息</div>-->
                          <#--<div class="notification-time"><small>信箱空空如也</small></div>-->
                        <#--</div></a></li>-->
                    <#--<!--<li><a rel="nofollow" href="#" class="dropdown-item"> -->
                        <#--<div class="notification">-->
                          <#--<div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>-->
                          <#--<div class="notification-time"><small>4 minutes ago</small></div>-->
                        <#--</div></a></li>-->
                    <#--<li><a rel="nofollow" href="#" class="dropdown-item"> -->
                        <#--<div class="notification">-->
                          <#--<div class="notification-content"><i class="fa fa-upload bg-orange"></i>Server Rebooted</div>-->
                          <#--<div class="notification-time"><small>4 minutes ago</small></div>-->
                        <#--</div></a></li>-->
                    <#--<li><a rel="nofollow" href="#" class="dropdown-item"> -->
                        <#--<div class="notification">-->
                          <#--<div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>-->
                          <#--<div class="notification-time"><small>10 minutes ago</small></div>-->
                        <#--</div></a></li>-->
                    <#--<li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>view all notifications                                            </strong></a></li>&ndash;&gt;-->
                  <#--</ul>-->
                <#--</li>-->
                <#--<!-- Messages                        &ndash;&gt;-->
                <#--<!--<li class="nav-item dropdown"> <a id="messages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-envelope-o"></i><span class="badge bg-orange badge-corner">10</span></a>-->
                  <#--<ul aria-labelledby="notifications" class="dropdown-menu">-->
                    <#--<li><a rel="nofollow" href="#" class="dropdown-item d-flex"> -->
                        <#--<div class="msg-profile"> <img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>-->
                        <#--<div class="msg-body">-->
                          <#--<h3 class="h5">Jason Doe</h3><span>Sent You Message</span>-->
                        <#--</div></a></li>-->
                    <#--<li><a rel="nofollow" href="#" class="dropdown-item d-flex"> -->
                        <#--<div class="msg-profile"> <img src="img/avatar-2.jpg" alt="..." class="img-fluid rounded-circle"></div>-->
                        <#--<div class="msg-body">-->
                          <#--<h3 class="h5">Frank Williams</h3><span>Sent You Message</span>-->
                        <#--</div></a></li>-->
                    <#--<li><a rel="nofollow" href="#" class="dropdown-item d-flex"> -->
                        <#--<div class="msg-profile"> <img src="img/avatar-3.jpg" alt="..." class="img-fluid rounded-circle"></div>-->
                        <#--<div class="msg-body">-->
                          <#--<h3 class="h5">Ashley Wood</h3><span>Sent You Message</span>-->
                        <#--</div></a></li>-->
                    <#--<li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>Read all messages   </strong></a></li>-->
                  <#--</ul>-->
                <#--</li>&ndash;&gt;-->
                <#--<!-- Languages dropdown    &ndash;&gt;-->
                 <#--<li class="nav-item dropdown">-->
                	<#--<a id="languages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link language dropdown-toggle">-->
                		<#--<span class="fa fa-user-o"></span>-->
                		<#--<span class="d-none d-sm-inline-block">管理员</span>-->
                	<#--</a>-->
                  <#--<ul aria-labelledby="languages" class="dropdown-menu">-->
                    <#--<li><a rel="nofollow" href="#" class="dropdown-item"> <i class="img-fluid rounded-circle fa fa-key"></i>修改密码</a></li>-->
                    <#--<li><a rel="nofollow" href="login.html" class="dropdown-item"> <i class="img-fluid rounded-circle fa fa-share"></i>退出登录</a></li>-->
                  <#--</ul>-->
                <#--</li>-->
                  <#--</ul>-->
                <#--</li>-->
                <#--<!-- Logout    &ndash;&gt;-->
                <#--<!--<li class="nav-item"><a href="login.html" class="nav-link logout"> <span class="d-none d-sm-inline">Logout</span><i class="fa fa-sign-out"></i></a></li>&ndash;&gt;-->
              <#--</ul>-->
            <#--</div>-->
          <#--</div>-->
        <#--</nav>-->
      <#--</header>-->
      <#--<div class="page-content d-flex align-items-stretch"> -->
        <#--<!-- Side Navbar &ndash;&gt;-->
        <#--<nav class="side-navbar">-->
          <#--<!-- Sidebar Header&ndash;&gt;-->
          <#--<div class="sidebar-header d-flex align-items-center">-->
            <#--<div class="avatar"><img src="img/nerd bot.png" width="50px" height="50px" title="欢迎你,管理员"></div>-->
            <#--<div class="title">-->
              <#--<h1 class="h4">管理员</h1>-->
              <#--<p>欢迎你</p>-->
            <#--</div>-->
          <#--</div>-->
          <#--<!-- Sidebar Navidation Menus&ndash;&gt;<span class="heading">Main</span>-->
          <#--<ul class="list-unstyled">-->
          	<#--<!--下拉列表1&ndash;&gt;-->
                    <#--<li><a href="#retailmanagement" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-podcast"></i>零售管理 </a>-->
                    	<#--<ul class="collapse list-unstyled" id="retailmanagement">-->
                    		<#--<li><a href="retailmanagement/storage.html"><i class="fa fa-toggle-off"></i>零售出库</a></li>-->
                    		<#--<li><a href="retailmanagement/returned.html"><i class="fa fa-toggle-off"></i>零售退货</a></li>-->
                    	<#--</ul>-->
                    <#--</li>-->
                    <#--<!--下拉列表2&ndash;&gt;-->
                    <#--<li><a href="#purchasingmanagement" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-bookmark-o"></i>采购管理</a>-->
                    	<#--<ul class="collapse list-unstyled" id="purchasingmanagement">-->
                    		<#--<li><a href="purchasingmanagement/purchaseorder.html"><i class="fa fa-toggle-off"></i>采购订单</a></li>-->
                    		<#--<li><a href="purchasingmanagement/procurementandstorage.html"><i class="fa fa-toggle-off"></i>采购入库</a></li>-->
                    		<#--<li><a href="purchasingmanagement/Purchasereturn.html"><i class="fa fa-toggle-off"></i>采购退货</a></li>-->
                    	<#--</ul>-->
                    <#--</li>-->
                    <#--<!--下拉列表3&ndash;&gt;-->
                    <#--<li><a href="#salesmanagement" aria-expanded="false" data-toggle="collapse" id="marketingmanagement"> <i class="fa fa-plus-square-o"></i>销售管理</a>-->
                    	<#--<ul class="collapse list-unstyled" id="salesmanagement">-->
                    		<#--<li class="active"><a href="salesmanagement/sell.html"><i class="fa fa-toggle-off"></i>销售订单</a></li>-->
                    		<#--<li><a href="salesmanagement/Salesofoutbound.html"><i class="fa fa-toggle-off"></i>销售出库</a></li>-->
                    		<#--<li><a href="salesmanagement/Salesreturn.html"><i class="fa fa-toggle-off"></i>销售退货</a></li>-->
                    	<#--</ul>-->
                    <#--</li>-->
                    <#--<!--下拉列表4&ndash;&gt;-->
                    <#--<li><a href="#storemanagement" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-plus-square"></i>仓库管理</a>-->
                    	<#--<ul class="collapse list-unstyled" id="storemanagement">-->
                    		<#--<li><a href="storemanagement/Otherwarehouse.html"><i class="fa fa-toggle-off"></i>其他入库</a></li>-->
                    		<#--<li><a href="storemanagement/Otheroutbound.html"><i class="fa fa-toggle-off"></i>其他出库</a></li>-->
                    		<#--<li><a href="storemanagement/allocatingoutbound.html"><i class="fa fa-toggle-off"></i>调拨出库</a></li>-->
                    		<#--<li><a href="storemanagement/Assemblythesingle.html"><i class="fa fa-toggle-off"></i>组装单</a></li>-->
                    		<#--<li><a href="storemanagement/Removethesingle.html"><i class="fa fa-toggle-off"></i>拆卸单</a></li>-->
                    	<#--</ul>-->
                    <#--</li>-->
                    <#--<!--<li><a href="index.html"> <i class="icon-home"></i>Home </a></li>-->
                    <#--<li><a href="tables.html"> <i class="icon-grid"></i>Tables </a></li>-->
                    <#--<li class="active"><a href="charts.html"> <i class="fa fa-bar-chart"></i>Charts </a></li>-->
                    <#--<li><a href="forms.html"> <i class="icon-padnote"></i>Forms </a></li>-->
                    <#--<li><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>Example dropdown </a>-->
                      <#--<ul id="exampledropdownDropdown" class="collapse list-unstyled ">-->
                        <#--<li><a href="#">Page</a></li>-->
                        <#--<li><a href="#">Page</a></li>-->
                        <#--<li><a href="#">Page</a></li>-->
                      <#--</ul>-->
                    <#--</li>-->
                    <#--<li><a href="login.html"> <i class="icon-interface-windows"></i>Login page </a></li>&ndash;&gt;-->
          <#--</ul><!--<span class="heading">Extras</span>-->
          <#--<ul class="list-unstyled">-->
            <#--<li> <a href="#"> <i class="icon-flask"></i>Demo </a></li>-->
            <#--<li> <a href="#"> <i class="icon-screen"></i>Demo </a></li>-->
            <#--<li> <a href="#"> <i class="icon-mail"></i>Demo </a></li>-->
            <#--<li> <a href="#"> <i class="icon-picture"></i>Demo </a></li>-->
          <#--</ul>&ndash;&gt;-->
        <#--</nav>-->
	<#include "../header/header.html"/>
	<#include "../leftList/left_list.html"/>
        <div class="content-inner">
          <!-- Page Header-->
          <header class="page-header">
            <div class="container-fluid">
              <h2 class="no-margin-bottom">销售管理</h2>
            </div>
          </header>
          <!-- Breadcrumb-->
          <div class="breadcrumb-holder container-fluid">
            <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.html">首页</a></li>
              <li class="breadcrumb-item active">销售订单</li>
            </ul>
          </div>
          
          
          
          
          <!--表单-->
          <section class="forms"> 
            <div class="container-fluid">
              <div class="row">
                <!-- Basic Form-->
                <div class="col-lg-12">
                  <div class="card">
                    <div class="card-close">
                    </div>
                    <div class="card-header d-flex align-items-center">
                    	<strong>
                    			<i class="fa fa-window-maximize" aria-hidden="true"></i>
                      		销售订单列表</strong>
                    </div>
                    <div class="card-body">
                    	<form class="form-horizontal" id="subForm" action="/showSales" method="post">
                      <table>
                      	<tr>
                      		<div class="form-group">
                      			<td>单据编号：</td>
                      			<td width="150px"><input type="text" value="<#if condition??><#if condition.code??>${condition.code}</#if></#if>" name="code" class="form-control"></td>
                      		</div>
                      		
                      		<div class="form-group">
                      			<td>商品信息：</td>
                      			<td width="150px"><input type="text" value="<#if condition??><#if condition.name??>${condition.name}</#if></#if>" name="name" class="form-control" placeholder="名称/型号"></td>
                      		</div>
                      		
                      		<div class="form-group">
                      			<td>单据日期：</td>
                      			<td width="170px"><input type="date" value="<#if condition??><#if condition.beginDate??>${condition.beginDate?string('yyyy-MM-dd')}</#if></#if>" name="beginDate" class="form-control" pattern="yyyy-MM-dd"></td>
                      		</div>
                      		
                      		<div class="form-group">
                      			<td>-</td>
                      			<td width="170px"><input type="date" value="<#if condition??><#if condition.endDate??>${condition.endDate?string('yyyy-MM-dd')}</#if></#if>" name="endDate" class="form-control" pattern="yyyy-MM-dd"></td>
                      		</div>
                      		<div class="form-group">
                      			<td>
                      			<a href="#">
                      			<button class="btn btn-success" style="width: 122px;"><i class="fa fa-search"></i>
                      				查询</button>
                      			</a>
                      		</td>
                      		</div>
                      		<div class="form-group">
                      		<td>
                      			<a href="#">
                      			<button type="reset" class="btn btn-success"  style="width: 122px;"><i class="fa fa-share-square"></i>
                      			重置</button>
                      			</a>
                      		</td>
								<input type="hidden" value="1" name="current" id="currentPage">
								<input type="hidden" value="4" name="pageSize" id="pageSize">
                      		</div>
                      	</tr>
                      </table>
                     </form>
                      <div style="margin-top: 20px;">
                      	<table class="table table-hover text-center">
                      		<tr class="text-bold">
                      			<td><input type="checkbox" title="全选" id="chElt" onclick="checkOrCancelAll()"></td>
                      			<td>操作</td>
                      			<td>客户名称</td>
                      			<td>单据编号</td>
                      			<td>商品信息</td>
                      			<td>单据日期</td>
                      			<td>操作员</td>
                      			<td>金额合计</td>
                      			<td>状态</td>
                      		</tr>
							<form action="/delSales" method="post" id="deleteIds">
							<#list bills as bill>
								<tr>
									<#--自定义属性单据编号-->
									<td><input type="checkbox" name="cElt" value="${bill.depoTheadId}"></td>
									<#--<input type="hidden" name="status" value="${bill.billStatus}">-->
									<#--deptId="${bill.depoTheadId}"-->
									<td style="display: flex; justify-content: space-between;">
										<a href="#">
											<i class="fa fa-list" title="查看"></i>
										</a>
										<a href="#" style="color: green;">
											<i class="fa fa-pencil-square-o" title="编辑"></i>
										</a>
										<a href="/delSales?cElt=${bill.depoTheadId}" style="color: red;">
											<i class="fa fa-trash-o" title="删除"></i>
										</a>
										<a href="#" style="color: yellow;">
											<i class="fa fa-share" title="转销售出库"></i>
										</a>
									</td>
									<td>${bill.customerName}</td>
									<td>${bill.billNum}</td>
									<td>${bill.productName}</td>
									<td>${bill.billCreateTime?string('yyyy-mm-dd')}</td>
									<td>${bill.operator}</td>
									<td>${bill.totalPrice}</td>
									<#--<td>${bill.billStatus}</td>-->
									<#--<#if bill.billStatus == "0">-->
										<#--<td>未审核</td>-->
									<#--</#if>-->
									<#switch bill.billStatus>
										<#case "0">
											<td style="color: red;">未审核</td>
											<#break>
										<#case "1">
											<td style="color: green;">已审核</td>
											<#break>
										<#default>
											<td style="color: blue;">已转采购|销售</td>
									</#switch>
								</tr>
							</#list>
							</form>
                      		<#--<tr>-->
                      			<#--<td><input type="checkbox" name="cElt"></td>-->
                      			<#--<td style="display: flex; justify-content: space-between;">-->
                      				<#--<a href="#">-->
                      					<#--<i class="fa fa-list" title="查看"></i>-->
                      				<#--</a>-->
                      				<#--<a href="#" style="color: green;">-->
                      					<#--<i class="fa fa-pencil-square-o" title="编辑"></i>-->
                      				<#--</a>-->
                      				<#--<a href="#" style="color: red;">-->
                      					<#--<i class="fa fa-trash-o" title="删除"></i>-->
                      				<#--</a>-->
                      				<#--<a href="#" style="color: yellow;">-->
                      					<#--<i class="fa fa-share" title="转销售出库"></i>-->
                      				<#--</a>-->
                      			<#--</td>-->
                      			<#--<td>数据</td>-->
                      			<#--<td>数据</td>-->
                      			<#--<td>数据</td>-->
                      			<#--<td>数据</td>-->
                      			<#--<td>数据</td>-->
                      			<#--<td>数据</td>-->
                      			<#--<td>数据</td>-->
                      		<#--</tr>-->
                      	</table>
                      </div>
                      <div style="display: flex;justify-content: flex-end;">
                      	<button class="btn btn-success" title="添加" data-toggle="modal" data-target="#insert" onclick="addBill()">
                      		<i class="fa fa-plus"></i>
                      		添加
                      	</button>&nbsp;
                      	<button class="btn btn-danger" title="删除" onclick="deleteBill('del')">
                      		<i class="fa fa-times"></i>
                      		删除
                      	</button>&nbsp;
                      	<button class="btn btn-warning" title="审核通过" onclick="deleteBill('exa')">
                      		<i class="fa fa-share"></i>
                      		审核
                      	</button>&nbsp;
                      	<button class="btn btn-warning" title="审核不通过" onclick="deleteBill('nexa')">
                      		<i class="fa fa-reply"></i>
                      		反向审核
                      	</button>
                      </div>
                      <div style="display: flex;justify-content: center;">
                         	<ul class="pagination">
								<#if pageVO??>
									<#--${pageVO.current} ---- ${pageVO.pageSize} ----- ${pageVO.total} ---- ${pageVO.currentPage}-->
									<#if pageVO.current gt 1>
										<li class="page-item" onclick="subPage(${pageVO.currentPage-1})">
											<a class="page-link">
												<span aria-hidden="true">&laquo;</span>
											</a>
										</li>
										<li class="page-item" onclick="subPage(${pageVO.currentPage-1})">
											<a class="page-link">${pageVO.currentPage-1}</a>
										</li>
									</#if>
									<li class="page-item active" onclick="subPage(${pageVO.currentPage})">
										<a class="page-link">${pageVO.currentPage}</a>
									</li>
									<#--<li class="page-item">-->
										<#--<a href="#" class="page-link">4</a>-->
									<#--</li>-->
									<#--<li class="page-item">-->
										<#--<a href="#" class="page-link">5</a>-->
									<#--</li>-->
									<#if pageVO.currentPage lt pageVO.total>
										<li class="page-item" onclick="subPage(${pageVO.currentPage+1})">
											<a class="page-link">${pageVO.currentPage+1}</a>
										</li>
										<li class="page-item" onclick="subPage(${pageVO.currentPage+1})">
											<a class="page-link">
												<span aria-hidden="true">&raquo;</span>
											</a>
										</li>
									</#if>
								</#if>
  							</ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section> 
        </div>
      </div>
    </div>
    
    			<!--模态框-->
          <div class="modal fade" id="insert" tabindex="-1" role="dialog" aria-hidden="false" aria-labelledby="mymodalriLabel" data-backdrop="static" data-keyboard="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content" style="width: 878px;">
									<div class="modal-header">
										<span class="modal-title" id="mymodalriLabel">
											<i class="fa fa-cog fa-spin fa-3x fa-fw" style="font-size: 23px;"></i>
											添加销售订单信息
										</span>
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-times" style="color: red;"></i>
										</button>
									</div>
									<div class="modal-body">
										<form class="form-horizontal" action="/addSales" method="post">
											<table class="form-group">
												<tr>
														<td>客户：</td>
														<td width="345px">
														<select class="form-control" name="supplierId">
															<#list suppliers as supplier>
																<option value="${supplier.id}">${supplier.supplier}</option>
															</#list>
														</select>
														</td>
														<td>单据日期：</td>
														<td width="345px">
														<input type="date" name="billDate" class="form-control" id="billDate"></td>
												</tr>
												<tr>
														<td>单据编号：</td>
														<td width="345px">
														<input type="text" name="billNum" id="billNum" class="form-control" readonly>
													</td>
														<td>销售人员：</td>
														<td width="345px">
														<select class="form-control"></select>
													</td>
												</tr>
											</table>
													<div style="display: flex;justify-content: space-between;">
														<#--<a href="#">-->
															<button class="btn btn-success btn-sm" type="button" title="添加行" onclick="return addLine()">
                      					<i class="fa fa-plus-square"></i>
                      					添加
                      				</button>
                      			<#--</a>-->
                      			<#--<a href="#">-->
                      				<button class="btn btn-danger btn-sm" title="删除行" type="button" onclick="deleteLine()">
                      					<i class="fa fa-trash-o"></i>
                      					删除
                      				</button>
                      			<#--</a>-->
                      			<a href="#">
                      				<button class="btn btn-success btn-sm" title="新增仓库">
                      					<i class="fa fa-cart-arrow-down"></i>
                      					添加仓库
                      				</button>
                      			</a>
                      			<a href="#">
                      				<button class="btn btn-success btn-sm" title="新增商品">
                      					<i class="fa fa-cart-plus"></i>
                      					添加商品
                      				</button>
                      			</a>
                      			<#--<a href="#">-->
                      				<button class="btn btn-warning btn-sm" title="撤销" type="button" onclick="revokeLine()">
                      					<i class="fa fa-mail-reply"></i>
                      					撤销
                      				</button>
                      			<#--</a>-->
													</div>
										<div style="margin-top: 20px;">
                      	<table class="table table-hover text-center" id="productList">
                      		<tr class="text-bold">
                      			<td><input type="checkbox" title="全选" id="thElt" onclick="checkOrCancelMo()"></td>
                      			<td>仓库名称</td>
                      			<td>品名(型号)</td>
                      			<td>库存</td>
                      			<td>单位</td>
                      			<td>数量</td>
                      			<td>单价</td>
                      			<td>金额</td>
                      			<td>备注</td>
                      		</tr>
                      		<tr class="product">
                      			<td><input type="checkbox" name="tElt"></td>
                      			<td><select name="deptoId" onchange="changedSelect(this)" style="width: 95px;">
										<#list deptos as depto>
											<option value="${depto.id}">${depto.name}</option>
										</#list>
									</select></td>
                      			<td>
									<select name="materialId" onchange='changedMater(this)'></select>
								</td>
                      			<td><input type="text" readonly name="stock"></td>
                      			<td><input type="text" readonly name="unit"></td>
                      			<td><input type="text" name="num"></td>
                      			<td><input type="text" name="retailPrice"></td>
                      			<td><input type="text" name="money"></td>
                      			<td><input type="text" name="remark"></td>
                      		</tr>
                      	</table>
                      </div>
											<input type="hidden" value="${user.userName}" name="operPersonName">
											<input type="hidden" value="${user.id}" name="tenantId">
                      <div>
                      	<div style="margin-top: 10px;">
                      		<textarea class="form-control" rows="2" placeholder="备注信息"></textarea>
                      	</div>
                      </div>
                      <div class="modal-footer">
                      	<button class="btn btn-success col-md-12" type="submit">保存</button>
                      </div>
                  </form>
							</div>
						</div>
					</div>
			</div>

    <#include "../footer/footerLink.html"/>
    <!--全选框-->
    <script type="text/javascript">
    	function checkOrCancelAll(){
				let chElt=document.getElementById("chElt");
				let checkedElt=chElt.checked;
				let allCheck=document.getElementsByName("cElt");
				if(checkedElt){
					for(let i=0;i<allCheck.length;i++){
					allCheck[i].checked=true;
					}
				}else{
					for(let i=0;i<allCheck.length;i++){
					allCheck[i].checked=false;
					}
				}
			}

		/**
		 * 删除行
		 */
    	// function deleteLine() {
    	// 	// let table = document.getElementById("productList");
    	// 	let $1 = $("#productList");
    	// 	// $1.deleteRow();
		//
		// 	let allCheck=document.getElementsByName("tElt");
		//
		// 	for (let i = 0; i < allCheck.length; i++) {
		// 		let checked = allCheck[i].checked;
		// 		if (checked == true) {
		// 			let element = allCheck[i].parentNode;
		// 		}
		// 		alert(checked);
		// 	}
    	// 	// let children = $1.children;
    	// 	// alert(children.length);
    	// 	// // 1
    	// 	// let children1 = children.children;
    	// 	// alert(children1.html);
    	// 	// 4
    	// 	// let children2 = children.children();
    	// 	// 9
    	// 	// alert(children2.length);
    	// 	// alert(children2.html);
    	// 	// let children3 = children2.children();
    	// 	// alert(children3.length);
    	// 	// let childNodes = table.children;
    	// 	// alert(childNodes);
		// 	// for (let i=0; i<childNodes.length; i++) {
		// 	// 	alert(childNodes[i]);
		// 	// 	if (childNodes[i] == true) {
		// 	// 		table.removeChild(childNodes[i]);
		// 	// 	}
		// 	// }
		// }

		/**
		 * 撤销行
		 */
		// function revokeLine() {
		// 	let table = document.getElementById("productList");
		// 	let childList = table.childNodes;
		// 	// for (let i = 1;i<childList.length;i++) {
		// 	// 	table.removeChild(childList[i]);
		// 	// }
		// }

    	function checkOrCancelMo(){
				let chElt = document.getElementById("thElt");
				let checkedElt = chElt.checked;
				let allCheck = document.getElementsByName("tElt");
				if(checkedElt){
					for(let i=0;i<allCheck.length;i++){
					allCheck[i].checked=true;
					}
				}else{
					for(let i=0;i<allCheck.length;i++){
					allCheck[i].checked=false;
					}
				}
			}
    	
    	window.onload = function(){
    		document.getElementById("marketingmanagement").click();
    	}

		/**
		 * 添加行
		 */
    	function addLine() {
    		let tdVal = $(".product").html();
    		let trObj = "<tr class='product'>"+tdVal+"</tr>";
			$("#productList").append(trObj);
		}

		/**
		 * 提交分页数据
		 * @param current
		 */
		function subPage(current) {
			$("#currentPage").val(current);
			$("#pageSize").val(4);
			$("#subForm").submit();
		}

		/**
		 * 被选中的单据ID提交
		 */
		function deleteBill(sign) {
			if ('del' === sign) {
				$("#deleteIds").submit();
			} else {
				if ('exa' === sign) {
					$("#deleteIds").attr("action", "/approveSales?sign=approve").submit();
				} else {
					$("#deleteIds").attr("action", "/approveSales?sign=deApprove").submit();
				}
			}
		}

		/**
		 * 选择仓库商品信息联动方法
		 * @param obj
		 */
		function changedSelect(obj) {
			let value = obj.options[obj.selectedIndex].value;
			let i$ = $(obj).parent().siblings().next().next().children();
			$.post("/materialLink",{"depotId":value},function (data) {
				let htmlText = "<select name='materialId'>";
				for (let i = 0; i < data.length; i++) {
					htmlText += "<option value='" + data[i].id + "'>" + data[i].name + "</option>";
				}
				htmlText += "</select>";
				i$.html(htmlText);
			});
		}

		/**
		 * 商品信息联动
		 */
		function changedMater(obj) {
			let value = obj.options[obj.selectedIndex].value;
			let i$ = $(obj).parent().next();
			let stock$ = i$.children();
			let unit$ = i$.next().children();
			let num$ = i$.next().next().children();
			let retailPrice$ = i$.next().next().next().children();
			let money$ = i$.next().next().next().next().children();
			let remark$ = i$.next().next().next().next().next().children();

			$.post("/supplierLink", {"supplierId" : value}, function (data) {
				stock$.val(data.stock);
				unit$.val(data.unit);
				num$.val(data.num);
				retailPrice$.val(data.retailPrice);
				money$.val(data.money);
				remark$.val(data.remark);
			});
			// let children = obj.parent().siblings().next();
			// alert(i$.length);
			// alert(i$);
			// alert(value);
		}

		/**
		 * 生成唯一订单号
		 */
		function addBill() {
			$.post("/createBill",function (data) {
				$("#billNum").val(data[0]);
				// 日期设置值，貌似没用
				// $("#billDate").val(data[1]);
			});
		}
    </script>
  </body>
</html>