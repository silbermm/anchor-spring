<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix='tags' tagdir='/WEB-INF/tags' %>
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
			<div class="ui-view-row">
			
			</div>
			<%@ include file="common/footer.jsp" %>
		</div>
	</div>					
</body>
</html>