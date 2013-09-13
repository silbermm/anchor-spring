<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html id="topHtml">
    <head>     
        <title data-bind="text: $root.pageTitle"></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href='http://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Glass+Antiqua&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
        <link type="text/css" rel="stylesheet" href="http://fast.fonts.com/cssapi/32e3358a-7cdb-4ede-bd45-eb874aa3d12e.css">
        <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css" rel="stylesheet">
        <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" media="screen" href="<c:url value='/resources/css/responsive.css' />">
        <link rel="shortcut icon" type="image/png" href="<c:url value='img/favicon.png' />">
        <script data-main="<c:url value='/resources/js/main' />" src="<c:url value='/resources/js/lib/require.js' />"></script>        
    </head>
    <body>
        <div class="navbar visible-phone visible-tablet hidden-desktop" id="mobile-menubar">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>

                    <a class="brand" href="#">The Anchor-OTR</a>				
                    <div class="nav-collapse collapse">	
                        <ul class="nav">
                            <li class="dropdown">
                                <ul class="nav">
                                    <li data-bind="css:{active: currentMenuLink()=='lunch'}">
                                        <a href="#/menus/lunch"> Lunch Menu </a>
                                    </li>
                                    <li data-bind="css:{active: currentMenuLink()=='dinner'}"> 
                                        <a href="#/menus/dinner"> Dinner Menu </a>
                                    </li>
                                    <li data-bind="css:{active: currentMenuLink()=='wine'}">
                                        <a href="#/menus/wine"> Wine List </a>
                                    </li>
                                    <li data-bind="css:{active: currentMenuLink()=='cocktails'}">
                                        <a href="#/menus/cocktails"> House Cocktails </a>
                                    </li>
                                    <li data-bind="css:{active: currentMenuLink()=='happyHour'}">
                                        <a href="#/menus/happyHour"> Happy Hour </a>
                                    </li>
                                    <li data-bind="css: {active: currentView()=='locationTemplate'}">
                                        <a href="#/location"> Location </a>
                                    </li>
                                    <li data-bind="css: {active: currentView()=='aboutTemplate'}">
                                        <a href="#/about">About </a>
                                    </li>
                                    <li data-bind="css: {active: currentView()=='reserveTemplate'}">
                                        <a href="#/reserve">Reserve </a>
                                    </li>
                                </ul>			
                            </li>
                        </ul>
                    </div>
                </div>
            </div>	
        </div>	

        <div id="mobile-logo" class="visible-phone visible-tablet hidden-desktop">	
            <div class="row-fluid">
                <div class="span12 text-center">		
                    <img src="<c:url value='/resources/img/AnchorLarge.png' />" />
                </div>
            </div>
            <!-- may need to display a different template for the location as the map is really small on a mobile device... -->
            <div style="margin-left:20px;margin-right:20px">	
                <div data-bind='template : {name : currentView, data: currentModel}' > </div>
                <div data-bind='template: {name : "footer"}'></div>
            </div>
        </div>

        <div id="desktop-menubar" class="row-fluid hidden-phone hidden-tablet visible-desktop">
            <div class="container">
                <div class="row-fluid" id="logo-row">	
                    <div class="span4 info-columns text-right" id="left-text">
                        <ul class="inline">
                            <li> 1401 Race Street,</li>
                            <li> Cincinnati, OH 45202 </li>
                        </ul>	
                    </div>	
                    <div class="span4 text-center" id="center-logo">
                        <img src="<c:url value='/resources/img/AnchorLarge.png' />" />
                    </div>
                    <div class="span4 info-columns" id="right-text">
                        <ul class="inline">
                            <li> (513) 421-8111 </li>
                            <li>
                                <ul class="hours">
                                    <li> Tue-Thur: 11:30-2:30, 5-10 </li>
                                    <!-- <li> Open daily at 1pm </li> -->
                                    <li> Fri-Sat: 11:30-2:30, 5-11 </li>
                                </ul>
                            </li>
                            <!--
                            <div class="hours">
                                <span class="top"> Tuesday - Thursday: 11:30am-2:30pm,5pm-10pm </span>
                                <span class="bottom"> Fri - Sat: 11:30am-2:30pm, 5pm-11pm </span>
                            </div>
                            -->
                        </ul>	
                    </div>
                </div>
            </div>

            <div class="container" id="main-menu" >
                <div class="row-fluid">	
                    <div class="container">
                        <div class="span4" >
                            <ul class="inline text-right">
                                <li data-bind="css: {active: isMenuView}"> 
                                    <a href="" data-bind="click:toggleSubMenu">Menus</a>
                                </li>
                                <li data-bind="css: {active: currentView()=='locationTemplate'}">
                                    <a href="#/location"> Location </a>
                                </li>
                            </ul>
                        </div>
                        <div class="span4"> </div>	
                        <div class="span4">
                            <ul class="inline text-left">
                                <li data-bind="css: {active: currentView()=='aboutTemplate'}">
                                    <a href="#/about"> About </a>
                                </li>
                                <li data-bind="css: {active: currentView()=='reserveTemplate'}">
                                    <a href="http://www.opentable.com/the-anchor-reservations-cincinnati?restref=100687" target="_blank"> Reservations </a>                                   
                                </li>
                            </ul>	
                        </div>
                    </div>
                </div>	
                <div id="submenu" class="row-fluid">
                    <div class="container">	
                        <ul class="inline">
                            <li data-bind="css:{active: currentMenuLink()=='lunch'}">
                                <a href="#/menus/lunch"> Lunch </a>	
                            </li>
                            <li data-bind="css:{active: currentMenuLink()=='dinner'}">
                                <a href="#/menus/dinner"> Dinner </a>
                            </li>	
                            <li data-bind="css:{active: currentMenuLink()=='wine'}">
                                <a href="#/menus/wine" > Wine List </a>
                            </li>
                            <li data-bind="css:{active: currentMenuLink()=='cocktails'}">
                                <a href="#/menus/cocktails"> House Cocktails </a>
                            </li>
                            <li data-bind="css:{active: currentMenuLink()=='happyHour'}">
                                <a href="#/menus/happyHour"> Happy Hour </a>
                            </li>
                        </ul>	
                    </div>
                </div>	
                <div class="container" id="menu-border"></div>		
                <div data-bind='template : {name : currentView, data: currentModel}' > </div>                
                <div data-bind='template: {name : "footer"}'></div>                
            </div>	
        </div>



        <script type="text/html" id="homeTemplate">
            <div class="row-fluid ui-view" id="landing-imgs">
            <img src="<c:url value='/resources/img/landing.jpg' />" />
            </div>
        </script>

        <script type="text/html" id="locationTemplate">
            <div class="row-fluid ui-view" id="location-page">
            <div class="map">
            <img src="https://maps.googleapis.com/maps/api/staticmap?size=800x400&scale=2&markers=color:red%7CAnchor+OTR,Cincinnati,+OH,+North+America&sensor=true" />
            </div>
            </div>		
        </script>

        <script type="text/html" id="reserveTemplate">
            <h1 data-bind="text:$parent.currentView"></h1>
        </script>

        <script type="text/html" id="aboutTemplate">
            <div class="row-fluid ui-view" id="about-page">
            <div class="container">	
            <div class="about-photos">
            <ul class="inline">
            <li>
            <a class="thumbnail">
            <img src="<c:url value='/resources/img/about1.jpg' />">
            </a>
            </li>
            <li>
            <a class="thumbnail">
            <img src="<c:url value='/resources/img/about2.jpg' />">
            </a>
            </li>
            <li>
            <a class="thumbnail">
            <img src="<c:url value='/resources/img/about3.jpg' />">
            </a>
            </li>
            </ul>	
            <br/>
            <p class="callout"> 
            The Anchor-otr brings a classic seafood experience to land locked Cincinnatians. From Maine sea scallops to grilled whole fish
            to fresh oysters flown in from the west and east coast,  chef/owner Derek dos Anjos's team serves high quality and sustainable seafood
            from the countries best suppliers.  Beach food classics such as  hush puppies and lobster rolls will transport you to your favorite spot along
            the coast. With a wine list chosen to compliment seafood, craft cocktails and a warm sense of hospitality, The Anchor-otr brings laid back
            extravagance to Washington Park in Over the Rhine.  The dining rooms custom charred wood walls, communal table seating and nautical lighting
            encourage a playful experience.		
            </p>

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
        </script>



        <script type="text/html" id="foodMenuTemplate">
            <div class="row-fluid ui-view" id="lunch-page" data-bind="with: $root.menuViewModel">
            <div class="container">
            <div class="row-fluid" data-bind="if:lunchSpecial().length>0">
            <!-- LUNCH SPECIAL -->
            <div class="span12">
            <div class="food-menu-container food-menu-container-border middle-callout"> 
            <div class="food-menu-title">LUNCH SPECIAL</div>
            <div class="food-menu-title-ornament-container">
            <div class="food-menu-title-ornament"></div>
            </div>
            <ul class="food-menu-list" data-bind="foreach:lunchSpecial">
            <li>
            <div class="food-item-first-line">
            <div class="food-item-title" data-bind="text:itemname"></div>
            </div>
            <div class="food-item-second-line" data-bind="if:itemdesc,text:itemdesc"></div>
            <div class="food-item-price" data-bind="text:price"></div>
            </li>
            </ul>
            </div>
            </div>	
            </div>			

            <div class="row-fluid">
            <div class="span6 food-menu-container" data-bind="if:rawBar().length>0">
            <div class="food-menu-title"> RAW BAR </div>
            <div class="food-menu-title-ornament-container">
            <div class="food-menu-title-ornament"></div>	
            </div>	
            <ul class="food-menu-list" data-bind="foreach:rawBar">
            <li>
            <div class="food-item-first-line">
            <div class="food-item-title" data-bind="text:itemname"></div>
            <div class="food-item-line" > </div>	
            <div class="food-item-price" data-bind="text:price"></div>
            </div>
            </li>	
            </ul>
            </div>
            <div class="span6 food-menu-container" data-bind="if:platters().length>0">
            <div class="food-menu-title"> PLATTERS </div>
            <div class="food-menu-title-ornament-container">
            <div class="food-menu-title-ornament"></div>
            </div>
            <ul class="food-menu-list" data-bind="foreach:platters">
            <li>
            <div class="food-item-first-line">
            <div class="food-item-title" data-bind="text:itemname"></div>
            <div class="food-item-line" > </div>	
            <div class="food-item-price" data-bind="text:price"></div>
            <div class="food-item-second-line" data-bind="if:itemdesc,text:itemdesc"></div>
            </div>
            </li>	
            </ul>
            </div>		
            </div>


            <div class="row-fluid">
            <!-- STARTERS -->
            <div class="span6 food-container" data-bind="if:starters().length>0">
            <div class="food-menu-title"> STARTERS </div>
            <div class="food-menu-title-ornament-container">
            <div class="food-menu-title-ornament"></div>
            </div>
            <ul class="food-menu-list" data-bind="foreach:starters">
            <li>
            <div class="food-item-first-line">
            <div class="food-item-title" data-bind="text:itemname"></div>
            <div class="food-item-line" > </div>	
            <div class="food-item-price" data-bind="text:price"></div>
            <div class="food-item-second-line" data-bind="if:itemdesc,text:itemdesc"></div>
            </div>
            </li>	
            </ul>
            </div>	

            <!-- SALADS -->
            <div class="span6 food-container" data-bind="if:salads().length>0">
            <div class="food-menu-title"> SALADS</div>
            <div class="food-menu-title-ornament-container">
            <div class="food-menu-title-ornament"></div>
            </div>
            <ul class="food-menu-list" data-bind="foreach:salads">
            <li>
            <div class="food-item-first-line">
            <div class="food-item-title" data-bind="text:itemname"></div>
            <div class="food-item-line" > </div>	
            <div class="food-item-price" data-bind="text:price"></div>
            <div class="food-item-second-line" data-bind="if:itemdesc,text:itemdesc"></div>
            </div>
            </li>	
            </ul>
            </div>
            </div>


            <!-- COCKTAILS -->
            <div class="row-fluid">
            <div class="span12 food-container" data-bind="if:cocktailsCol1().length>0">
            <div class="food-menu-title"> House Cocktails </div>
            <div class="food-menu-title-ornament-container">
            <div class="food-menu-title-ornament"></div>
            </div>
            <div class="fmc-double-column">
            <ul class="food-menu-list" data-bind="foreach:cocktailsCol1">
            <li>
            <div class="food-item-first-line">
            <div class="food-item-title" data-bind="text:itemname"></div>
            <div class="food-item-line" > </div>	
            <div class="food-item-price" data-bind="text:price"></div>
            <div class="food-item-second-line" data-bind="if:itemdesc,text:itemdesc"></div>
            </div>
            </li>	
            </ul>
            </div>
            <div class="fmc-double-column fmcdc-last">
            <ul class="food-menu-list" data-bind="foreach:cocktailsCol2">
            <li>
            <div class="food-item-first-line">
            <div class="food-item-title" data-bind="text:itemname"></div>
            <div class="food-item-line" > </div>	
            <div class="food-item-price" data-bind="text:price"></div>
            <div class="food-item-second-line" data-bind="if:itemdesc,text:itemdesc"></div>
            </div>
            </li>	
            </ul>
            </div> 
            </div>
            </div>


            <!-- MAINS -->
            <div class="row-fluid">
            <div class="span12 food-container" data-bind="if:mainsCol1().length>0">
            <div class="food-menu-title"> MAINS</div>
            <div class="food-menu-title-ornament-container">
            <div class="food-menu-title-ornament"></div>
            </div>
            <div class="fmc-double-column">
            <ul class="food-menu-list" data-bind="foreach:mainsCol1">
            <li>
            <div class="food-item-first-line">
            <div class="food-item-title" data-bind="text:itemname"></div>
            <div class="food-item-line" > </div>	
            <div class="food-item-price" data-bind="text:price"></div>
            <div class="food-item-second-line" data-bind="if:itemdesc,text:itemdesc"></div>
            </div>
            </li>	
            </ul>
            </div>
            <div class="fmc-double-column fmcdc-last">
            <ul class="food-menu-list" data-bind="foreach:mainsCol2">
            <li>
            <div class="food-item-first-line">
            <div class="food-item-title" data-bind="text:itemname"></div>
            <div class="food-item-line" > </div>	
            <div class="food-item-price" data-bind="text:price"></div>
            <div class="food-item-second-line" data-bind="if:itemdesc,text:itemdesc"></div>
            </div>
            </li>	
            </ul>
            </div>
            </div>	
            </div>

            <div class="row-fluid">	
            <!-- SIDES -->
            <div class="span6 food-container" data-bind="if:sides().length>0">
            <div class="food-menu-title"> SIDES</div>
            <div class="food-menu-title-ornament-container">
            <div class="food-menu-title-ornament"></div>
            </div>
            <ul class="food-menu-list" data-bind="foreach:sides">
            <li>
            <div class="food-item-first-line">
            <div class="food-item-title" data-bind="text:itemname"></div>
            <div class="food-item-line" > </div>	
            <div class="food-item-price" data-bind="text:price"></div>
            <div class="food-item-second-line" data-bind="if:itemdesc,text:itemdesc"></div>
            </div>
            </li>	
            </ul>
            </div>

            <!-- DESERTS -->
            <div class="span6 food-container" data-bind="if:deserts().length>0">
            <div class="food-menu-title"> DESERTS</div>
            <div class="food-menu-title-ornament-container">
            <div class="food-menu-title-ornament"></div>
            </div>
            <ul class="food-menu-list" data-bind="foreach:deserts">
            <li>
            <div class="food-item-first-line">
            <div class="food-item-title" data-bind="text:itemname"></div>
            <div class="food-item-line" "> </div>	
            <div class="food-item-price" data-bind="text:price"></div>
            <div class="food-item-second-line" data-bind="if:itemdesc,text:itemdesc"></div>
            </div>
            </li>	
            </ul>
            </div>
            </div>

            <div class="row-fluid">
            <!-- BEVERAGES -->
            <div class="span6 food-container" data-bind="if:beverages().length>0">
            <div class="food-menu-title">BEVERAGES</div>
            <div class="food-menu-title-ornament-container">
            <div class="food-menu-title-ornament"></div>
            </div>
            <ul class="food-menu-list" data-bind="foreach:beverages">
            <li>
            <div class="food-item-first-line">
            <div class="food-item-title" data-bind="text:itemname"></div>
            <div class="food-item-line" > </div>	
            <div class="food-item-price" data-bind="text:price"></div>
            <div class="food-item-second-line" 
            data-bind="if:itemdesc,text:itemdesc">

            </div>
            </div>
            </li>	
            </ul>
            </div>	
            </div>		
            </div>
            <div class="row-fluid">
            <div class="aside-container">
            <div class="food-menu-container food-menu-container-border aside" style="opacity:1;">
            <img class="food-menu-container-image" src="<c:url value='/resources/img/shark-small.gif' />"    style="opacity: 1;">
            <div class="aside-text">There is a risk associated with consumption of raw oysters or any raw protein</div>
            </div>
            </div>
            </div>
        </script>

        <script type="text/html" id="footer">
            <div class="pagefooter" class="row-fluid ui-view">
            <div class="thin-line" > </div>
            <div class="thick-line"> </div>	
            <div class="social container">
            <a href="https://www.facebook.com/theanchorotr" target="_blank">
            <span class="icon-stack">
            <i class="icon-circle icon-stack-base"></i>
            <i class="icon-facebook icon-light"></i>
            </span>
            </a>	

            <a href="https://twitter.com/theanchorotr" target="_blank"> 
            <span class="icon-stack">
            <i class="icon-circle icon-stack-base"></i>
            <i class="icon-twitter icon-light"></i>
            </span>	
            </a>

            <a data-bind="click: showMailModal"> 
            <span class="icon-stack">
            <i class="icon-circle icon-stack-base"></i>
            <i class="icon-envelope icon-light"></i>
            </span>	
            </a>

            <security:authorize access="isAnonymous()"> 
                <a href="#/login" >
                <span class="icon-stack">
                <i class="icon-circle icon-stack-base"></i>
                <i class="icon-lock icon-light"></i>
                </span>
                </a>
            </security:authorize>

            <security:authorize access="isAuthenticated()">
                <a href="#/logout   " >
                <span class="icon-stack">
                <i class="icon-circle icon-stack-base"></i>
                <i class="icon-unlock icon-light"></i>
                </span>
                </a>
            </security:authorize>

            </div>
            </div>
        </script>

        <form>
            <input id="baseUrl" type="hidden" value="<c:url value='/' />" />
        </form>
    </body>
</html>