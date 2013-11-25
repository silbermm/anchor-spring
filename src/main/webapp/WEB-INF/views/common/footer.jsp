<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<div class="pagefooter" class="row ui-view" style="padding-bottom:20px">                   
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
        <a ng-click="openMailModal()"> 
            <span class="icon-stack">
                <i class="icon-circle icon-stack-base"></i>
                <i class="icon-envelope icon-light"></i>
            </span>	
        </a>
        <sec:authorize access="!isAuthenticated()">
        <a href="/login" ng-if="!isAuthenticated">
            <span class="icon-stack">
                <i class="icon-circle icon-stack-base"></i>
                <i class="icon-lock icon-light"></i>
            </span>
        </a>
        </sec:authorize>
        <sec:authorize access="hasRole('Administrator')">
        <a href="/settings" ng-if="isAuthenticated">
            <span class="icon-stack">
                <i class="icon-circle icon-stack-base"></i>
                <i class="icon-gears icon-light"></i>
            </span>
        </a>
        </sec:authorize>
        <sec:authorize access="hasRole('Administrator')">
        <a href="/j_spring_security_logout" ng-if="isAuthenticated">
            <span class="icon-stack">
                <i class="icon-circle icon-stack-base"></i>
                <i class="icon-unlock icon-light"></i>
            </span>
        </a>
        </sec:authorize>
    </div>
</div>

<script type="text/ng-template" id="mailModal.html">
    <div class="modal-header">
    <h3>Contact Us</h3>
    </div>
    <div class="modal-body">
    <p> We love hearing from our customers! Send us an email at info@theanchor-otr.com or simply fill out the form below. </p>
    <br />
    <hr>

    <form name="form" class="form-horizontal css-form"> 
    <div class="control-group">
    <label class="control-label" for="from">Your Email (optional): </label>
    <div class="controls">
    <input type="text" id="from" placeholder="From" ng-model="mail.from">
    </div>
    </div>
    <div class="control-group">
    <label class="control-label" for="message">Message</label>
    <div class="controls">
    <textarea rows='10' id="message" placeholder="Your Message..." ng-model="mail.message" required></textarea>                    
    </div>
    </div>        
    </form>                       

    </div>
    <div class="modal-footer">
    <button class="btn btn-primary" ng-disabled="form.$invalid" ng-click="ok()">OK</button>
    <button class="btn btn-warning" ng-click="cancel()">Cancel</button>
    </div>                        
</script>
<script type="text/ng-template" id="mailThanksModal.html">
    <div class="modal-header">
    <h3>Thank You!</h3>
    </div>
    <div class="modal-body">
    <p> Your email has been sent. Thank you for your feedback and questions! </p>                 
    </div>
    <div class="modal-footer">
    <button class="btn btn-primary" ng-click="cancel()">Close</button>      
    </div>                        
</script>
