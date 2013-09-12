<%-- 
    Document   : login
    Created on : Sep 9, 2013, 8:42:17 AM
    Author     : silbermm
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Login | The Anchor-OTR </title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="" />
        <meta name="author" content="Matt Silbernagel" />
        <link href="https://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.no-icons.min.css" rel="stylesheet" />
        <link href="https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet" />
        <link href="<c:url value='/resources/css/responsive.css'/>" rel="stylesheet" />
        <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
    </head>
    <body>
        <c:url var="postLoginUrl" value="/j_spring_security_check" />
        <section>
            <div class="container login">
                <div class="row ">
                    <div class="center span4 well">
                        <legend>Please Sign In</legend>
                        <c:if test="${not empty error}">
                        <div class="alert alert-error">
                            <a class="close" data-dismiss="alert" href="#">×</a>${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
                        </div>
                        </c:if>
                        <form method="POST" accept-charset="UTF-8" action="${postLoginUrl}" >
                            <input type="text" id="username" class="span4" name='j_username' placeholder="Username" />
                            <input type="password" id="password" class="span4" name='j_password' placeholder="Password" />
                            <label class="checkbox">
                                <input type="checkbox" name='_spring_security_remember_me' value="1" /> Remember Me
                            </label>
                            <button type="submit" name="submit" class="btn btn-primary btn-block">Sign in</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>

    </body>
</html>
