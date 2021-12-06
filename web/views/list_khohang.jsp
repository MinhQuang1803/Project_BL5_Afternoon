<%-- 
    Document   : list_khohang
    Created on : Dec 6, 2021, 6:38:53 PM
    Author     : asus
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <h2 class="title">Lượng Hàng Tồn Kho</h2>
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col"><input type='checkbox'  id='check' value='' /></th>
                        <th scope="col">Loại Mặt Hàng</th>                      
                        <th scope="col">Số Lượng Tồn Kho</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row"><input type='checkbox'  id='check' value='' /></th>
                        <td><a href="chitiet_xuathang.jsp">Coca Cola</a></td>
                        <td>40 Thùng</td>
                    </tr>
                    <tr>
                        <th scope="row"><input type='checkbox'  id='check' value='' /></th>
                        <td><a href="chitiet_xuathang.jsp">Coca Cola</a></td>
                        <td>40 Thùng</td>
                    </tr>
                    <tr>
                        <th scope="row"><input type='checkbox'  id='check' value='' /></th>
                        <td><a href="chitiet_xuathang.jsp">Coca Cola</a></td>
                        <td>40 Thùng</td>
                    </tr>
                </tbody>
            </table>
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

