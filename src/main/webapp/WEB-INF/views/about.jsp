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
			
			<div class="row-fluid ui-view-row" id="about-page">
    <div class="container">	
        <div class="about-photos">
            <ul class="inline text-center">
                <li>
                    <a class="thumbnail">
                        <img src="/resources/img/about1.jpg">
                    </a>
                </li>
                <li>
                    <a class="thumbnail">
                        <img src="/resources/img/about2.jpg">
                    </a>
                </li>
                <li>
                    <a class="thumbnail">
                        <img src="/resources/img/about3.jpg">
                    </a>
                </li>
            </ul>	
            <br />
            <p class="callout">
                The Anchor-otr brings a classic seafood experience to land locked Cincinnatians. From Maine sea scallops to grilled whole fish
                to fresh oysters flown in from the west and east coast,  chef/owner Derek dos Anjos's team serves high quality and sustainable seafood
                from the countries best suppliers.  Beach food classics such as  hush puppies and lobster rolls will transport you to your favorite spot along
                the coast. With a wine list chosen to compliment seafood, craft cocktails and a warm sense of hospitality, The Anchor-otr brings laid back
                extravagance to Washington Park in Over the Rhine.  The dining rooms custom charred wood walls, communal table seating and nautical lighting
                encourage a playful experience.		
            </p>
            <br />
            <div class="food-menu-container">
                <div class="food-menu-title">THE TEAM </div>
                <div class="food-menu-title-ornament-container">
                    <div class="food-menu-title-ornament"></div>
                </div>					
                <table class="table table-condensed">
                    <tbody>	
                        <tr>
                            <td class="team-name"> Derek dos Anjos </td>
                            <td class="team-name"> Jocelyn dos Anjos </td>	
                            <td class="team-name"> Steven Campbell </td>
                            <td class="team-name"> Aaron Drahmann </td>	
                        </tr>
                        <tr>
                            <td class="team-title"> Chef/ Owner </td>
                            <td class="team-title"> Owner/ Operations </td>
                            <td class="team-title"> General Manager </td>
                            <td class="team-title"> Sous Chef </td>
                        </tr>
                    </tbody>
                </table>
            </div>

        </div>
    </div>
</div>
						


			
			<%@ include file="common/footer.jsp" %>
		</div>
	</div>
		
               
</body>
</html>
			