<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<title>The Anchor-OTR</title>
	<meta name="fragment" content="!" />
	<%@ include file="common/header.jsp" %>
</head>
<body>
	
	
	
	<div id="desktop-menubar" class="row">
		<%@ include file="common/logo.jsp" %>
		<div class="container" id="main-menu">		
			<%@ include file="common/navigation.jsp" %>
			
			
			<div class="ui-view-row container" id="landing-imgs">
				<div class="grid-sizer"></div>	
				<div class="masonry-brick ">
					<img src="<c:url value='resources/img/landing/1.jpg' />" />
				</div>
				<div class="masonry-brick ">
					<img src="<c:url value='resources/img/landing/2.jpg' />" />
				</div>
				<div class="masonry-brick ">
					<img src="<c:url value='resources/img/landing/3.jpg' />" />
				</div>
				<div class="masonry-brick w2">
					<img src="<c:url value='resources/img/landing/4.jpg' />" />
				</div>
				<div class="masonry-brick w2">
					<img src="<c:url value='resources/img/landing/5.jpg' />" />
				</div>
				<div class="masonry-brick ">
					<img src="<c:url value='resources/img/landing/6.jpg' />" />
				</div>
				<div class="masonry-brick ">
					<img src="<c:url value='resources/img/landing/7.jpg' />" />
				</div>
				<div class="masonry-brick ">
					<img src="<c:url value='resources/img/landing/8.jpg' />" />
				</div>
				<div class="masonry-brick ">
					<img src="<c:url value='resources/img/landing/10.jpg' />" />
				</div>
				<div class="masonry-brick ">
					<img src="<c:url value='resources/img/landing/11.jpg' />" />
				</div>
				<div class="masonry-brick ">
					<img src="<c:url value='resources/img/landing/9.jpg' />" />
				</div>
				<div class="masonry-brick w2">
					<img src="<c:url value='resources/img/landing/13.jpg' />" />
				</div>
				<div class="masonry-brick ">
					<img src="<c:url value='resources/img/landing/14.jpg' />" />
				</div>
				<div class="masonry-brick ">
					<img src="<c:url value='resources/img/landing/16.jpg' />" />
				</div>
				<div class="masonry-brick ">
					<img src="<c:url value='resources/img/landing/12.jpg' />" />
				</div>
				<div class="masonry-brick ">
					<img src="<c:url value='resources/img/landing/15.jpg' />" />
				</div>
				<div class="masonry-brick w2">
					<img src="<c:url value='resources/img/landing/17.jpg' />" />
				</div>
				<div class="masonry-brick ">
					<img src="<c:url value='resources/img/landing/18.jpg' />" />
				</div>
				<div class="masonry-brick ">
					<img src="<c:url value='resources/img/landing/20.jpg' />" />
				</div>
				<div class="masonry-brick ">
					<img src="<c:url value='resources/img/landing/21.jpg' />" />
				</div>
				<div class="masonry-brick ">
					<img src="<c:url value='resources/img/landing/19.jpg' />" />
				</div>
			</div>
			
			<!-- 
			<div masonry class="ui-view-row container" ng-if="imagesLoaded" id="landing-imgs" 
				masonry-options="{ columnWidth: container.querySelector('.grid-sizer'), transitionDuration: '0'}">
				<div class="grid-sizer"></div>
				<div masonry-brick class="masonry-brick {{img.className}}" ng-repeat="img in images">
					<img ng-src="{{img.url}}" />
				</div>
			</div>
			 -->
			
			<%@ include file="common/footer.jsp" %>
		</div>
	</div>
		
    <script type="text/javascript" src="<c:url value='/resources/js/vender/masonry.min.js'/>"></script>      
    <script type="text/javascript" src="<c:url value='/resources/js/index.js' />"></script>             
</body>
</html>
