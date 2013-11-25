<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<html ng-app="anchorotr" ng-controller="AppCtrl">
    <head>     
        <title>The Anchor-OTR</title>
        <meta name="fragment" content="!" />
        <meta name="description=" content="The Anchor-otr brings a classic seafood experience to land locked Cincinnatians. From Maine sea scallops to grilled whole fish
              to fresh oysters flown in from the west and east coast,  chef/owner Derek dos Anjos's team serves high quality and sustainable seafood
              from the countries best suppliers.  Beach food classics such as  hush puppies and lobster rolls will transport you to your favorite spot along
              the coast. With a wine list chosen to compliment seafood, craft cocktails and a warm sense of hospitality, The Anchor-otr brings laid back
              extravagance to Washington Park in Over the Rhine.  The dining rooms custom charred wood walls, communal table seating and nautical lighting
              encourage a playful experience.">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="google-site-verification" content="rEzKhvVOv399nK2V5_7E97RD7MmrZGTffNhpwKsEuw8" />
        <link href='http://fonts.googleapis.com/css?family=Glass+Antiqua&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Libre+Baskerville:400,700,400italic' rel='stylesheet' type='text/css'>
        <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css" rel="stylesheet">
        <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" media="screen" href="<c:url value='/resources/css/responsive.css' />" >
        <link rel="stylesheet" media="screen" href="<c:url value='/resources/css/angular-growl.min.css' />" >
        <link rel="shortcut icon" href="<c:url value='/resources/img/favicon.ico' />" > 
		<script type="text/javascript">
  		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	   	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  		ga('create', 'UA-44977861-1', 'theanchor-otr.com');
		</script>	
		</head>
    <body>
        <div growl></div>        
        <div class="navbar" id="mobile-menubar">
            <div class="navbar-inner">            	
                <div class="container">
                    <a class="btn btn-navbar" ng-click="toggleNavMenu()">                        
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>                    				
                    <div class="nav-collapse collapse" collapse="isNavCollapsed.val">	
                        <ul class="nav">
                            <li class="dropdown">
                                <ul class="nav">
                                    <li ui-route="/menus/lunch" ng-class="{active:$state.params.id==='lunch'}">
                                        <a href="#!/menus/lunch"> Lunch Menu </a>
                                    </li>
                                    <li ui-route="/menus/dinner" ng-class="{active:$state.params.id==='dinner'}"> 
                                        <a href="#!/menus/dinner"> Dinner Menu </a>
                                    </li>
                                    <li ui-route="/menus/wine" ng-class="{active:$state.params.id==='wine'}">
                                        <a href="#!/menus/wine"> Wine List </a>
                                    </li>
                                    <li ui-route="/menus/cocktails" ng-class="{active:$state.params.id==='cocktails'}">
                                        <a href="#!/menus/cocktails"> House Cocktails </a>
                                    </li>
                                    <li ui-route="/menus/happyHour" ng-class="{active:$state.params.id==='happyHour'}">
                                        <a href="#!/menus/happyHour"> Happy Hour </a>
                                    </li>
                                    <li ui-route="/location" ng-class="{active: $state.includes('location')}">
                                        <a href="#!/location"> Location </a>
                                    </li>
                                    <li ui-route="/about" ng-class="{active: $state.includes('about')}">
                                        <a href="#!/about">About </a>
                                    </li>
                                    <li ui-route="/reservation" ng-class="{active: $state.includes('reservation')}" >
                                        <a href="#!/reservation">Reservations</a>
                                    </li>
                                </ul>			
                            </li>
                        </ul>
                    </div>
                </div>
            </div>	
        </div>
        <div id="mobile-logo">	
            <div class="row-fluid">
                <div class="span12 text-center">		
                    <a href="#!/home"> <img src="/resources/img/AnchorLarge.png" style="width:50%" /> </a>
                </div>
                <div ng-if="$state.current.name == 'home'">
                <address class="text-center">
                    1401 Race Street<br/>
                    Cincinnati,OH 45202<br/>
                    (513) 421-8111
                </address>
                <address class="text-center">
                    Tue-Thur: 11:30-2:30, 5-10<br/>
                    Fri-Sat:  11:30-2:30, 5-11
                </address>
				</div>
				
            </div>              	
                <div ui-view="main"> </div>
                <div ng-include="'/resources/js/partials/footer.tpl.html'"></div>            
        </div>
        
        <script src="http://code.jquery.com/jquery-1.10.1.min.js"> </script>    
        <script type="text/javascript" src="<c:url value='/resources/js/vender/imagesLoaded.js'/>"></script> 
        <script type="text/javascript" src="<c:url value='/resources/js/vender/masonry.min.js'/>"></script> 
        <script type="text/javascript" src="<c:url value='/resources/js/vender/angular.min.js'/>"></script>        
        <script type="text/javascript" src="<c:url value='/resources/js/vender/angular-masonry.min.js'/>"></script>        
        <script type="text/javascript" src="<c:url value='/resources/js/vender/bootstrap.min.js'/>"></script>        
        <script type="text/javascript" src="<c:url value='/resources/js/vender/angular-growl.min.js' />"></script>
        <script type="text/javascript" src="<c:url value='/resources/js/vender/angulartics.min.js' />"></script>
        <script type="text/javascript" src="<c:url value='/resources/js/vender/angulartics-google-analytics.min.js' />"></script>
		<script type="text/javascript" src="<c:url value='/resources/js/vender/ui-bootstrap-tpls-0.6.0.min.js' />"></script>
        <script type="text/javascript" src="<c:url value='/resources/js/vender/ui-route.js' />"></script>
        <script type="text/javascript" src="<c:url value='/resources/js/vender/ui-utils.min.js' />"></script>
        <script type="text/javascript" src="<c:url value='/resources/js/app.js' />"></script>        
        <script type="text/javascript" src="<c:url value='/resources/js/services/titleService.js' />"></script>
        <script type="text/javascript" src="<c:url value='/resources/js/services/pageLoadService.js' />"></script>
        <script type="text/javascript" src="<c:url value='/resources/js/services/menuCollapseService.js' />"></script>
        <script type="text/javascript" src="<c:url value='/resources/js/services/navCollapseService.js' />"></script>
        <script type="text/javascript" src="<c:url value='/resources/js/services/authService.js' />"></script>
        <script type="text/javascript" src="<c:url value='/resources/js/home/home.js' />"></script> 
        <script type="text/javascript" src="<c:url value='/resources/js/about/about.js' />"></script> 
        <script type="text/javascript" src="<c:url value='/resources/js/location/location.js' />"></script>
        <script type="text/javascript" src="<c:url value='/resources/js/menus/menus.js' />"></script>
        <script type="text/javascript" src="<c:url value='/resources/js/reservation/reservation.js' />"></script>        
	</body>
</html>