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
			
			<div class="row-fluid ui-view-row" id="location-page">
    <div class="container">
        <ul class="inline text-center">
            <li>
                <a class="thumbnail">
                    <img src="/resources/img/location1.jpg">
                </a>
            </li>
            <li>
                <a class="thumbnail">
                    <img src="/resources/img/location2.jpg">
                </a>
            </li>
        </ul>
    </div>
</div>

<p class="text-center parking">
        Looking for parking? 
        <a href="http://washingtonpark.org/parking/"
           target="_blank"
           style="text-transform: lowercase;color: #0088cc"> 
            http://washingtonpark.org/parking/ 
        </a>
    </p>

<div style='width:425px;margin:0 auto;' class="visible-phone visible-tablet hidden-desktop">
    <iframe width="425" height="350" 
            frameborder="0" 
            scrolling="no" 
            marginheight="0" 
            marginwidth="0" 
            src="https://www.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Anchor+OTR,+1401+Race+Street,+Cincinnati,+OH+45202,+USA&amp;aq=0&amp;oq=Anchor+o&amp;sll=39.13634,-84.540401&amp;sspn=0.36802,0.724411&amp;ie=UTF8&amp;hq=Anchor&amp;hnear=1401+Race+St,+Cincinnati,+Hamilton,+Ohio+45202&amp;t=m&amp;fll=39.110566,-84.517211&amp;fspn=0.001438,0.00283&amp;st=110616160731137639226&amp;rq=1&amp;ev=zi&amp;split=1&amp;ll=39.110358,-84.51705&amp;spn=0.002914,0.00456&amp;z=17&amp;iwloc=A&amp;output=embed"
            >

    </iframe>
    <br />
    <small>
        <a href="https://www.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Anchor+OTR,+1401+Race+Street,+Cincinnati,+OH+45202,+USA&amp;aq=0&amp;oq=Anchor+o&amp;sll=39.13634,-84.540401&amp;sspn=0.36802,0.724411&amp;ie=UTF8&amp;hq=Anchor&amp;hnear=1401+Race+St,+Cincinnati,+Hamilton,+Ohio+45202&amp;t=m&amp;fll=39.110566,-84.517211&amp;fspn=0.001438,0.00283&amp;st=110616160731137639226&amp;rq=1&amp;ev=zi&amp;split=1&amp;ll=39.110358,-84.51705&amp;spn=0.002914,0.00456&amp;z=17&amp;iwloc=A" style="color:#0000FF;text-align:left">
            View Larger Map
        </a>
    </small>
</div>

<div style='width:640px;margin:0 auto;' class="hidden-phone hidden-tablet visible-desktop" >
    <iframe width="640" 
            height="480" 
            frameborder="0" 
            scrolling="no" 
            marginheight="0" 
            marginwidth="0" 
            src="https://www.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Anchor+OTR,+1401+Race+Street,+Cincinnati,+OH+45202,+USA&amp;aq=0&amp;oq=Anchor+o&amp;sll=39.13634,-84.540401&amp;sspn=0.36802,0.724411&amp;ie=UTF8&amp;hq=Anchor&amp;hnear=1401+Race+St,+Cincinnati,+Hamilton,+Ohio+45202&amp;t=m&amp;fll=39.110566,-84.517211&amp;fspn=0.001438,0.00283&amp;st=110616160731137639226&amp;rq=1&amp;ev=zi&amp;split=1&amp;ll=39.111282,-84.517232&amp;spn=0.003996,0.006866&amp;z=17&amp;iwloc=A&amp;output=embed"
            >
    </iframe><br />
    <small>
        <a href="https://www.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Anchor+OTR,+1401+Race+Street,+Cincinnati,+OH+45202,+USA&amp;aq=0&amp;oq=Anchor+o&amp;sll=39.13634,-84.540401&amp;sspn=0.36802,0.724411&amp;ie=UTF8&amp;hq=Anchor&amp;hnear=1401+Race+St,+Cincinnati,+Hamilton,+Ohio+45202&amp;t=m&amp;fll=39.110566,-84.517211&amp;fspn=0.001438,0.00283&amp;st=110616160731137639226&amp;rq=1&amp;ev=zi&amp;split=1&amp;ll=39.111282,-84.517232&amp;spn=0.003996,0.006866&amp;z=17&amp;iwloc=A" style="color:#0000FF;text-align:left">
            View Larger Map
        </a>
    </small>   
</div>
			
			
			
			<%@ include file="common/footer.jsp" %>
		</div>
	</div>
	
	
	
	
</body>
</html>	