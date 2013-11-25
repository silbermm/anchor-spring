<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
								
		
			<div class="row-fluid visible-desktop hidden-phone hidden-tablet">
				<div class="container">
					<div class="span4">
						<ul class="inline text-right">
							<li <c:if test = "${activeLink == 'menu'}"> class="active" </c:if>>
								<a data-toggle="collapse" data-target="#submenu"> Menu </a>
							</li>
							<li <c:if test = "${activeLink == 'location'}"> class="active" </c:if> >
								<a href="<c:url value='/location' />"> Location </a>
							</li>
						</ul>
					</div>
					<div class="span4"></div>
					<div class="span4">
						<ul class="inline text-left">
							<li <c:if test = "${activeLink == 'about'}"> class="active" </c:if> id="about-link">
								<a href="<c:url value='/about' />"> About </a>
							</li>
							<li>
								<a href="<c:url value='/reservations' />" class="btn btn-primary btn-reserve"> <i class="icon-food"></i> Reservations </a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			
			<div class="row-fluid visible-phone visible-tablet hidden-desktop">
				<div class="container">
					<div class="span12" style="height:60px">
						<ul class="inline text-center thin">
							<li <c:if test = "${activeLink == 'menu'}"> class="active" </c:if>>
								<a data-toggle="collapse" data-target="#submenu">Menu</a>
							</li>
							<li <c:if test = "${activeLink == 'location'}"> class="active" </c:if> >
								<a href="<c:url value='/location' />"> Location </a>
							</li>
							<li <c:if test = "${activeLink == 'about'}"> class="active" </c:if> id="about-link">
								<a href="<c:url value='/about' />"> About </a>
							</li>
							<li>
								<a href="<c:url value='/reservations' />" class="btn btn-primary btn-reserve"><i class="icon-food"></i> Reservations </a>
							</li>
						</ul>
					</div>
				</div>
			</div>
						
			<div id="submenu" class="collapse">
				<div class="container">
					<ul class="inline">
						<li ng-class="{active:$state.params.id==='lunch'}">
							<a href="<c:url value='/menu#!/menus/lunch' />"> Lunch </a>
						</li>
						<li ng-class="{active:$state.params.id==='dinner'}">
							<a href="<c:url value='/menu#!/menus/dinner' />"> Dinner </a>
						</li>
						<li ng-class="{active:$state.params.id==='wine'}">
							<a href="<c:url value='/menu#!/menus/wine' />"> Wine List </a>
						</li>
						<li ng-class="{active:$state.params.id==='cocktails'}">
							<a href="<c:url value='/menu#!/menus/cocktails' />"> House Cocktails </a>
						</li>
						<li ng-class="{active:$state.params.id==='happyHour'}">
							<a href="<c:url value='/menu#!/menus/happyHour' />"> Happy Hour </a>
						</li>
					</ul>
				</div>
			</div>
			<div class="container" id="menu-border"></div>
			
			
			
			
																			
		

