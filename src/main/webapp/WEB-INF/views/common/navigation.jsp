<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
								
		
			<div class="row-fluid visible-desktop hidden-phone hidden-tablet">
				<div class="container">
					<div class="span4">
						<ul class="inline text-right">
							<li >
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
								<a href="" class="btn btn-primary btn-reserve"> <i class="icon-food"></i> Reservations </a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			
			<div class="row-fluid visible-phone visible-tablet hidden-desktop">
				<div class="container">
					<div class="span12" style="height:60px">
						<ul class="inline text-center thin">
							<li>
								<a href="">Menu</a>
							</li>
							<li>
								<a href=""> Location </a>
							</li>
							<li id="about-link">
								<a href=""> About </a>
							</li>
							<li>
								<a href="" class="btn btn-primary btn-reserve"><i class="icon-food"></i> Reservations </a>
							</li>
						</ul>
					</div>
				</div>
			</div>
						
			<div id="submenu" class="row-fluid collapse">
				<div class="container">
					<ul class="inline">
						<li ng-class="{active:$state.params.id==='lunch'}"><a
							href="#!/menus/lunch"> Lunch </a></li>
						<li ng-class="{active:$state.params.id==='dinner'}"><a
							href="#!/menus/dinner"> Dinner </a></li>
						<li ng-class="{active:$state.params.id==='wine'}"><a
							href="#!/menus/wine"> Wine List </a></li>
						<li ng-class="{active:$state.params.id==='cocktails'}"><a
							href="#!/menus/cocktails"> House Cocktails </a></li>
						<li ng-class="{active:$state.params.id==='happyHour'}"><a
							href="#!/menus/happyHour"> Happy Hour </a></li>
					</ul>
				</div>
			</div>
			<div class="container" id="menu-border"></div>
			
			
			
			
																			
		

