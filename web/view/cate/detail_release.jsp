<%-- 
    Document   : xuathang
    Created on : Dec 6, 2021, 3:41:24 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/style.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <img src="../image/Logo.png" class="rounded float-right" alt="..." width="100px" height="100px">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Trang Chủ <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Hàng Hóa</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="#">Nhập Kho Hàng</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Xuất Kho Hàng</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Doanh Thu</a>
                        </li>
                    </ul>
                    <form class="form-inline my-2 my-lg-0">
                        <a class="nav-link" href="#">Xin Chào</a>
                        <a class="nav-link" href="#">Đăng Xuất</a>
                    </form>
                </div>
            </nav>

        </header>
        <section class="session">
            <h2 class="title">Chi Tiết Xuất Kho</h2>
            <div class="search">
                From: <input type="date" name="from"/>
                To: <input type="date" name="to"/>
                <input type="text" name="search"/>
                <input type="submit" value="Search"/>
            </div>
            <form action="detail" method="POST">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col"><input type='checkbox'  id='check' value='' /></th>
                            <th scope="col">Tên Hàng</th>
                            <th scope="col">Giá Cả</th>
                            <th scope="col">Kho</th>
                            <th scope="col">Số Lượng Xuất Ra</th>
                            <th scope="col">Ngày Xuất Hàng</th>
                            <th scope="col">Thành Tiền</th>                   
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${requestScope.releaseDetails}" var="p">
                            <tr>
                                <th scope="row"><input type='checkbox'  id='check' value='' /></th>
                                <td>${p.product.mname}</td>
                                <td>${p.product.price}</td>
                                <td>${p.release.warehouse.kname}</td>
                                <td>${p.number_out}</td>
                                <td>${p.release.pdate}</td>
                                <td>${p.total}</td>
                            </tr>            
                        </c:forEach>
                    </tbody>
                </table>
            </form>

            <div class="div-btn">
                <button type="button" class="btn btn-primary">Xuất Sản Phẩm</button>
                <button type="button" class="btn btn-secondary">Sửa Sản Phẩm</button>
                <button type="button" class="btn btn-success">Xóa Sản Phẩm</button>
            </div>
        </section>
        <footer class="page-footer font-small blue pt-4">
            <div class="footer-copyright text-center py-3">© 2020 Copyright:
                <a href="https://mdbootstrap.com/"> Tạp Hóa Bảo Châu</a>
            </div>

        </footer>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
