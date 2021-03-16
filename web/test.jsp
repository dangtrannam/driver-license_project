<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Thi bằng lái xe A1</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <link rel="stylesheet" href="./css/test.css">
    </head>

    <body>
        <header>
            <div class="container">
                <!-- Start: Navigation with Search -->
                <nav role="navigation"
                     class="navbar navbar-dark navbar-expand-md bg-success border rounded navigation-clean-search relative">
                    <div class="container"><a class="navbar-brand homepage" href="#">Trang chủ</a>
                        <button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navcol-1">
                            <ul class="nav navbar-nav">
                                <li class="nav-item active"><a class="nav-link" href="#">Thi thử­ A1</a></li>
                                <li class="nav-item"><a class="nav-link" href="#">Thi thử­­ A2</a></li>
                                <li class="nav-item"><a class="nav-link" href="#">Thi thử­­ B1</a></li>
                                <li class="nav-item"><a class="nav-link" href="#">Thi thử­­ B2</a></li>

                            </ul>

                            <div>
                               
                                <c:choose >
                                    <c:when  test="${not empty sessionScope.user.userName}">
                                        <!--TODO: ViewProfile-->
                                        <c:url value="MainServlet?action=ViewProfile" var ="profileLink"></c:url>
                                        <a  href="${profileLink}" class="btn  btn-sm login " >Welcome <c:out value = "${sessionScope.user.userName}" /></a>
                                    </c:when>
                                    <c:otherwise>
                                        <c:url value="MainServlet?action=Login" var ="LoginLink"></c:url>
                                        <a  href="${LoginLink}" class="btn btn-sm login " >Đăng nhập</a>
                                    </c:otherwise>
                                </c:choose>

                                <c:url value="MainServlet?action=Logout" var="LogoutLink"></c:url>
                                <a href="${LogoutLink}" class="btn  btn-sm logout ">Đăng xuất</a>
                            </div>

                        </div>
                    </div>
                </nav>
                <h1 class="text-center text-white bg-info">ĐỀ THI THỬ BẰNG LÁI XE A1 200 CÂU HỎI MỚI NHẤT 2020</h1>

            </div>

        </header>

        <main>
            <div class="container">
                <form action="" name="f-doquiz" method="post">
                    <div class="row">

                        <div class="col-md-4">
                            <div class="panel panel-default" id="blockA">
                                <div class="panel-body">
                                    <div style="margin: bottom 10px;">
                                        <strong style="font-size: 12pt; color: blue;">Câu hỏi | Đề số: 01 - 200 Câu Hỏi Thi A1</strong>
                                    </div>
                                    <div id="questionList">
                                        <c:forEach var="btn" begin="1" end="25">
                                            <label class="btn btn-success btn-cauhoi clickcauhoi btn-${btn}" id="show${btn}" data-id="data${btn}">
                                                <input type="radio" id="${btn}" data-id="data${btn}" >
                                                ${btn}
                                            </label>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <div id="blockB" class="panel panel-default">
                                <strong style="font-size:12pt; color:blue"> Thời gian còn lại:  <span id="countdown" class="timer"></span></strong>
                                
                            </div>
                            <div id="blockC" class="panel panel-default">
                                <div>
                                    <input type="submit" name="nopbai" id="nopbai" value="Nộp bài">
                                </div>
                            </div>
                            
                        </div>

                        <div class="col-md-8">
                            <div class="panel panel-default" id="blockD">
                                <div class="panel-body">
                                    <div>

                                        <c:forEach var="i" begin="1" end="25" >
                                            <div class="row d-none ndcauhoi" id="cauhoi${i}">
                                                <div class="row">
                                                    <div class="col-md-12 text-primary">
                                                        <strong>Câu hỏi ${i}:</strong>
                                                    </div>

                                                    <div class="col-12" style="text-align: justify;">
                                                        <strong>PPhần của đường bộ được sử dụng cho các phương tiện giao thông qua lại là gì ?</strong>
                                                    </div>
                                                    <img class="col-12 img-responsive" src="" alt="">

                                                    <div class="col-md-12">
                                                        <div class="cautraloi">
                                                            <label class="checkbox-inline">
                                                                <input type="radio" class="answer" name="1[]" value="Pháº§n máº·t ÄÆ°á»ng vÃ  lá» ÄÆ°á»ng"> 1- Phần mặt đường và lề đường.
                                                            </label>
                                                        </div>
                                                        <div class="cautraloi">
                                                            <label class="checkbox-inline">
                                                                <input type="radio" class="answer" name="1[]" value="Pháº§n máº·t ÄÆ°á»ng vÃ  lá» ÄÆ°á»ng"> 2- Phần đường xe chạy.
                                                            </label>
                                                        </div>
                                                        <div class="cautraloi">
                                                            <label class="checkbox-inline">
                                                                <input type="radio" class="answer" name="1[]" value="Pháº§n máº·t ÄÆ°á»ng vÃ  lá» ÄÆ°á»ng"> 3- Phần đường xe cơ giới.
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </c:forEach>


                                    </div>
                                </div>

                                <div>
                                    <div>
                                        <ul class="pager d-flex justify-content-around">
                                            <li id="prev" class="previous cautruoc btn btn-primary float-left ">Câu trước</li>
                                            <li id="next" class="next causau btn btn-primary float-right">Câu sau</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

            </div>
        </form>
    </div>

</main>


<footer>
    <div class="container">
        <div class="footer-basic panel">
            <!-- Start: Links -->
            <ul class="list-inline">
                <li class="list-inline-item"><a href="#">Home</a></li>
                <li class="list-inline-item"><a href="#">Services</a></li>
                <li class="list-inline-item"><a href="#">About</a></li>
                <li class="list-inline-item"><a href="#">Terms</a></li>
                <li class="list-inline-item"><a href="#">Privacy Policy</a></li>
            </ul><!-- End: Links -->
            <!-- Start: Copyright -->
            <p class="copyright">FPT University Â© 2021</p><!-- End: Copyright -->
        </div>
    </div>
</footer>
</body>

</html>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>



<script src="./js/test.js"></script>