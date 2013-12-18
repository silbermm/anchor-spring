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
				<div class="container">
					<br />				
					<div class="row">
						<div class="span2"></div>
						<div class="span8">
							<h4>Contact Us</h4>
								<p class="callout text-center">
									We love hearing from our customers! Send us an email at <a class="link" href="mailto:info@theanchor-otr.com">info@theanchor-otr.com</a> or simply fill out the form below.
								</p>			
						
								<br /><br />
								<hr>
					   
      							<form:form action="mail" name="form" class="form-horizontal css-form" modelAttribute="mailForm" method="POST">      								
                                    <form:errors path="*" cssClass="alert alert-error" element="div" />
    								<div class="control-group">
    									<label class="control-label" for="from">Your Email (optional): </label>
    										<div class="controls">
    											<form:input type="text" id="from" placeholder="From" class="span6" path='from' cssErrorClass="error" />
    												<form:errors path="from">
                                                		<span class="help-inline error"><form:errors path="from" htmlEscape="false" /></span>
                                            		</form:errors>
    										</div>
    								</div>
    								<div class="control-group">
    									<label class="control-label" for="message">Message</label>
    									<div class="controls">
    										<form:textarea class="span6" rows="15" id="message" path="message" placeholder="Your Message..." required=""></form:textarea>
    										<form:errors path="message">
    											<span class="help-inline error"><form:errors path="message" htmlEscape="false" /></span>
    										</form:errors>                    
    									</div>
    								</div>    
    								<div class="control-group">
    									<div class="controls">    										
    										<tags:recaptcha
    											privateKey='6Lf4aukSAAAAAFHN6BLspI5ui6LwlWUIMVF8QMUp' 
    											publicKey='6Lf4aukSAAAAAAJ6rrhUlxIVgCdjly7lqVLJYhNV'> 
    										</tags:recaptcha>    										
    									</div>
    								</div>  
    								<div class="control-group">
    									<div class="controls">
    										<input type="submit" class="btn" value="Send Mail" />
    									</div>
    								</div>  
  								</form:form> 
						</div>	
						<div class="span2"></div>		
					</div>
				</div>
			</div>										
			<%@ include file="common/footer.jsp" %>
		</div>
	</div>					
</body>
</html>
			