<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<title>The Anchor-OTR</title>
	<meta name="fragment" content="!" />
	<%@ include file="../common/header.jsp" %>
</head>
<body>
	<div id="desktop-menubar" class="row">
		<%@ include file="../common/logo.jsp" %>
		<div class="container" id="main-menu">		
			<%@ include file="../common/navigation.jsp" %>		
			<div class="ui-view-row" id="reservation-page">
    			<div class="container">
        			<div class="row">            			
            			<div class="span6" style="padding:0 50px 0 50px">
               
                    		<p class="callout">
                        	Reservations are recommended, but certainly not required. Walkins are always welcome.
                        	Reservations can be made by calling (513) 421-8111 or via the internet. Use the form below
                        	to make reservations online. To book a private event, please call the restaurant (513) 421-8111
                    		</p>                               		
                			<div class="" id="reservation-form">
                    			<form name=ism id=ism class="form-horizontal" METHOD=POST target="_blank" action="http://www.opentable.com/restaurant-search.aspx">                                                
                        			<div class="control-group">
                            			<label class="control-label" for="PartySizeInput"> Party Size: </label>
                            			<div class="controls">
                                			<select name="PartySize" id="PartySizeInput">
                                    			<option value="1">1</option>
                                    			<option value="2" selected>2</option>
                                    			<option value="3">3</option>
                                    			<option value="4">4</option>
                                    			<option value="5">5</option>
                                    			<option value="6">6</option>
                                    			<option value="7">7</option>
                                    			<option value="8">8</option><option value="9">9</option>
                                    			<option value="10">10</option>
                                    			<option value="11">11</option>
                                    			<option value="12">12</option>
                                    			<option value="13">13</option>
                                    			<option value="14">14</option>
                                    			<option value="15">15</option>
                                    			<option value="16">16</option>
                                    			<option value="17">17</option>
                                    			<option value="18">18</option>
                                    			<option value="19">19</option>
                                    			<option value="20">20</option>
                                			</select>
                            			</div>
                        			</div>
                        			<div class="control-group">
                            			<label class="control-label" for="startDate"> Date: </label>
                            			<div class="controls">                                
                                			<div class="input-append"  id="startDate">
   		 										<input  type="text" readonly="" name="startDate" data-format="MM-dd-yyyy" class="span2" />
   		 										<span class="add-on">
      												<i data-time-icon="icon-time" data-date-icon="icon-calendar"></i>
    											</span>
    											<!-- <button class="btn" type="button" ng-click="open()"><i class="icon-calendar"></i></button> -->
    										</div>                                                                
                            			</div>
                        			</div>
                        			<div class="control-group">                    
                            			<label class="control-label" for="ResTimeSelect"> Time: </label>
                            			<div class="controls">
                                			<select id="ResTimeSelect" name="ResTime">
                                    <option value="10:00 AM" >10:00 AM</option>
                                    <option value="10:30 AM" >10:30 AM</option>
                                    <option value="11:00 AM" >11:00 AM</option>        
                                    <option value="11:30 AM" >11:30 AM</option>
                                    <option value="12:00 PM" >12:00 PM</option>
                                    <option value="12:30 PM" >12:30 PM</option>
                                    <option value="1:00 PM" >1:00 PM</option>
                                    <option value="1:30 PM" >1:30 PM</option>
                                    <option value="2:00 PM" >2:00 PM</option>
                                    <option value="2:30 PM" >2:30 PM</option>
                                    <option value="3:00 PM" >3:00 PM</option>
                                    <option value="3:30 PM" >3:30 PM</option>
                                    <option value="5:00 PM" >5:00 PM</option>
                                    <option value="5:30 PM" >5:30 PM</option>
                                    <option value="6:00 PM" >6:00 PM</option>
                                    <option value="6:30 PM" >6:30 PM</option>
                                    <option value="7:00 PM" selected>7:00 PM</option>
                                    <option value="7:30 PM" >7:30 PM</option>
                                    <option value="8:00 PM" >8:00 PM</option>
                                    <option value="8:30 PM" >8:30 PM</option>
                                    <option value="9:00 PM" >9:00 PM</option>
                                    <option value="9:30 PM" >9:30 PM</option>
                                    <option value="10:00 PM" >10:00 PM</option>
                                    <option value="10:30 PM" >10:30 PM</option>
                                    <option value="11:00 PM" >11:00 PM</option>
                                    <option value="11:30 PM" >11:30 PM</option>
                                		</select>
                            		</div>
                        		</div>
                        		<div class="control-group">
                            		<div class="controls">
                                		<button type="submit" class="btn" name="submit" >Search</button>
                            		</div>
                            		<input type="hidden" id="RestaurantReferralID" name="RestaurantReferralID" value="100687">
                            		<input type="hidden" id="RestaurantID" name="RestaurantID" value="100687">
                            		<input type="hidden" name="txtDateFormat" value="MM/dd/yyyy">                                           
                        		</div>
                        		<div class="control-group">
                            		<div class="controls">
                                		<div id="OT_logo">
                                    		<a href="http://www.opentable.com/home.aspx" title="Powered By OpenTable">
                                        		<img src="http://www.opentable.com/img/buttons/Otlogo.gif" id="OT_imglogo" alt="Restaurant Management Software" border=0 />
                                    		</a>
                                		</div>
                            		</div>
                        		</div>                        
                    		</form>
                		</div>
            		</div>
       			</div>       
    		</div>
		</div>
		<%@ include file="../common/footer.jsp" %>
		</div>
	</div>
	
	<script type="text/javascript" src="<c:url value='/resources/js/vender/bootstrap-datetimepicker.min.js' />"></script>	     
    <script type="text/javascript" src="<c:url value='/resources/js/reservations.js' />"></script>                   
</body>
</html>
		