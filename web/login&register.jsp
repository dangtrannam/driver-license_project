<%-- Document : index.jsp Created on : Feb 27, 2021, 3:24:24 PM Author : macbookpro2018 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            ${action} page
        </title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/login&register.css">

    </head>

    <body>
        <div class="container login-container">
            <div class="row">
                <div class="offset-md-4 col-md-4 login-form-1">
                    <c:if test="${requestScope.action==null}">
                        <c:set var="action" value="Login"/>
                    </c:if>
                    ${requestScope.INVALID}
                    <h3>
                        ${action} page
                    </h3>
                    <form action="MainServlet" method="post" name="flogin">

                        <span class="message">${requestScope.msg}</span>
                        <input type="hidden" name="action" value="handle${action}"/>

                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="Username" name="uname" required/>
                        </div>

                        <div class="form-group">
                            <input class="form-control" type="password" placeholder="Password" name="psw" required/>
                        </div>

                        <c:choose>
                            <c:when test="${action=='Register'}">
                                <div class="form-group">
                                    <input class="form-control" type="password" placeholder="Re-password" name="re-psw" required/>
                                </div>

                                <div class="form-group">
                                    <input class="btnSubmit" type="submit" value="Register"/>
                                </div>

                                <div class="form-group">
                                    <a class="ForgetPwd" href="MainServlet?action=Login">Already have an account?</a>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="form-group">
                                    <input type="submit" class="btnSubmit" value="Login" />
                                </div>

                                <div class="form-group">
                                    <a class="ForgetPwd" href="MainServlet?action=Register">Don't have an account?</a>
                                </div>
                            </c:otherwise>
                        </c:choose>
                        <a class="ForgetPwd" href="MainServlet">Return to homepage</a>
                    </form>

                </div>
            </div>
        </div>




        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>

<script>

</script>Ï