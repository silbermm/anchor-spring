<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
       <head>
    	<title> Account Settings | The Anchor-OTR </title>
       <meta name="fragment" content="!" />
		<%@ include file="../common/header.jsp" %>     
    </head>         
    </head>
    <body>
    	
	<div id="desktop-menubar" class="row">
		<%@ include file="../common/logo.jsp" %>
		<div class="container" id="main-menu">		
			<%@ include file="../common/navigation.jsp" %>
        
        <section>
            <div class="container login">                                              
                <div class="row ">
                    <div class="center span12 well tabbable">
                        <ul id="tabs" class="nav nav-tabs">
                            <li><a href="<c:url value='/settings/mail' />">Mail Settings</a></li>
                            <li class="active"><a href="<c:url value='/settings/account' />">Account Settings</a></li>                            
                        </ul>

                        <div class="tab-content">
                            <div class="tab-pane active" id="account">
                                <p>
                                    <form:form action="account" modelAttribute="accountSettings" class="form-horizontal">    
                                        <c:if test="${not empty mesg}">                                            
                                        <div class="alert alert-success">
                                            <a class="close" data-dismiss="alert" href="#">×</a>
                                            ${mesg}
                                        </div>
                                    	</c:if>
                                    <form:errors path="*"> 
                                        <div class="alert alert-error">
                                            <a class="close" data-dismiss="alert" href="#">×</a>
                                            Please fix the errors below
                                        </div>
                                    </form:errors>                                   

                                    <div class="control-group">
                                        <label class="control-label" for="password"> New Password </label>
                                        <div class="controls">
                                            <form:password path="password" cssErrorClass="error"/>
                                            <form:errors path="password">
                                                <span class="help-inline error">
                                                <form:errors path="password" htmlEscape="false" />
                                                </span>
                                            </form:errors>
                                        </div>
                                    </div>

                                    <div class="control-group">
                                        <label class="control-label" for="confirmPassword"> Confirm Password </label>
                                        <div class="controls">
                                            <form:password path="confirmPassword" cssErrorClass="error"/>
                                            <form:errors path="confirmPassword">
                                                <span class="help-inline error">
                                                <form:errors path="confirmPassword" htmlEscape="false" />
                                                </span>
                                            </form:errors>
                                        </div>
                                    </div>                                         

                                    <div class="control-group">
                                        <div class="controls">
                                            <input type="submit" class="btn" />
                                        </div>
                                    </div>                                    
                                </form:form>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        
        
			<%@ include file="../common/footer.jsp" %>
		</div>
	</div>
    </body>
</html>
