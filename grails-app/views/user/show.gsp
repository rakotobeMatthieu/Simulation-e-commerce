<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Show User</title>

    <asset:stylesheet href="css/font-face.css"/>
    <asset:stylesheet href="vendor/font-awesome-5/css/fontawesome-all.min.css"/>
    <asset:stylesheet href="vendor/font-awesome-4.7/css/font-awesome.min.css"/>
    <asset:stylesheet href="vendor/mdi-font/css/material-design-iconic-font.min.css"/>

    <!-- Bootstrap CSS-->
    <asset:stylesheet href="vendor/bootstrap-4.1/bootstrap.min.css"/>

    <!-- Vendor CSS-->


    <asset:stylesheet href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"/>
    <asset:stylesheet href="vendor/wow/animate.css"/>
    <asset:stylesheet href="vendor/css-hamburgers/hamburgers.min.css"/>
    <asset:stylesheet href="vendor/slick/slick.css"/>
    <asset:stylesheet href="vendor/select2/select2.min.css"/>
    <asset:stylesheet href="vendor/perfect-scrollbar/perfect-scrollbar.css"/>

    <!-- Main CSS-->
    <asset:stylesheet href="css/theme.css"/>

</head>

<body>
<div class="page-wrapper">


    <div class="page-container">
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <h1>LeCoinCoin</h1>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <nav class="navbar-mobile">
                <div class="container-fluid">
                    <ul class="navbar-mobile__list list-unstyled">
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-user"></i>Users</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="/user/index">
                                        <i class="fas fa-list-alt"></i>List</a>
                                </li>
                                <li>
                                    <a href="/user/create">
                                        <i class="fas fa-plus"></i>Create</a>
                                </li>
                                <li>
                                    <a href="/user/edit">
                                        <i class="fas fa-pencil-square"></i>Edit </a>
                                </li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-book"></i>Sales Ads</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="list-ads.html">
                                        <i class="fas fa-list-alt"></i>List</a>
                                </li>
                                <li>
                                    <a href="create-ads.html">
                                        <i class="fas fa-plus"></i>Create</a>
                                </li>
                                <li>
                                    <a href="edit-ads.html">
                                        <i class="fas fa-pencil-square"></i>Edit </a>
                                </li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-picture-o"></i>Illustrations</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="list-illu.html">
                                        <i class="fas fa-list"></i>List</a>
                                </li>
                                <li>
                                    <a href="create-illu.html">
                                        <i class="fas fa-plus"></i>Create</a>
                                </li>
                                <li>
                                    <a href="edit-illu.html">
                                        <i class="fas fa-pencil-square"></i>Edit </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>

        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <h1> LeCoinCoin </h1>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-user"></i>Users</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="/user/index">
                                        <i class="fas fa-list-alt"></i>List</a>
                                </li>
                                <li>
                                    <a href="/user/create">
                                        <i class="fas fa-plus"></i>Create</a>
                                </li>
                                <li>
                                    <a href="/user/edit">
                                        <i class="fas fa-pencil-square"></i>Edit </a>
                                </li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-book"></i>Sales Ads</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="/saleAd/index">
                                        <i class="fas fa-list-alt"></i>List</a>
                                </li>
                                <li>
                                    <a href="/saleAd/create">
                                        <i class="fas fa-plus"></i>Create</a>
                                </li>
                                <li>
                                    <a href="/saleAd/edit">
                                        <i class="fas fa-pencil-square"></i>Edit </a>
                                </li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-picture-o"></i>Illustrations</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="/illustration/index">
                                        <i class="fas fa-list"></i>List</a>
                                </li>
                                <li>
                                    <a href="/illustration/create">
                                        <i class="fas fa-plus"></i>Create</a>
                                </li>
                                <li>
                                    <a href="edit-illu.html">
                                        <i class="fas fa-pencil-square"></i>Edit </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>

        <div class="main-content">
            <div class="section__content section__content--p30">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header">Show User</div>

                                <div class="card-body">
                                    <div class="card-title">
                                        <h3 class="text-center title-2">Show User Form</h3>
                                    </div>
                                    <hr>


                                        <div class="form-group">
                                            <div class="col-lg-10">
                                                <label for="password" class="control-label mb-1">Password</label>

                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-lock"></i>
                                                    </div>
                                                    <input type="text" id="password" name="password" required=""
                                                           placeholder="Enter a password" class="form-control" disabled>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-lg-10">
                                                <label for="username" class="control-label mb-1">Username</label>

                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-user"></i>
                                                    </div>
                                                    <input type="text" id="username" name="username" required="" value="${user.username}"
                                                           placeholder="Enter a username" class="form-control" disabled>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-lg-10">
                                                <label for="passwordExpired" class="control-label mb-1">Password Expired</label>

                                                    <g:if test="${user.passwordExpired == false}">
                                                        : No
                                                    </g:if>
                                                    <g:if test="${user.passwordExpired == true}">
                                                        : Yes
                                                    </g:if>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-lg-10">
                                                <label for="accountLocked" class="control-label mb-1">Account Locked</label>

                                                    <g:if test="${user.accountLocked == false}">
                                                        : No
                                                    </g:if>
                                                    <g:if test="${user.accountLocked == true}">
                                                        : Yes
                                                    </g:if>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-lg-10">
                                                <label for="accountExpired" class="control-label mb-1">Account Expired</label>

                                                    <g:if test="${user.accountExpired == false}">
                                                        : No
                                                    </g:if>
                                                    <g:if test="${user.accountExpired == true}">
                                                        : Yes
                                                    </g:if>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-lg-10">
                                                <label for="enabled" class="control-label mb-1">Enabled</label>

                                                    <g:if test="${user.enabled == false}">
                                                        : No
                                                    </g:if>
                                                    <g:if test="${user.enabled == true}">
                                                        : Yes
                                                    </g:if>
                                            </div>
                                        </div>


                                            <div class="row">

                                                <div class="col-lg-3">
                                                    <a href="/user/edit/${user.id}">
                                                        <button id="payment" value="${message(code:'default.button.edit.label', default:'Edit')}');"
                                                                class="btn btn-lg btn-warning btn-block">
                                                            <i class="fa fa-cloud-upload fa-lg"></i>&nbsp;
                                                            <span id="paymentspan">Update User</span>
                                                        </button>
                                                    </a>
                                                </div>
                                            </div>

                                </div>
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header">Sales Ads List</div>

                                <div class="card-body">
                                    <hr>

                                    <div class="table-responsive m-b-40">
                                        <table class="table table-borderless table-data3">
                                            <thead>
                                            <tr>

                                                <th>Title</th>

                                                <th>Description</th>

                                                <th>Price</th>

                                                <th>Author</th>

                                                <th>Illustrations</th>

                                            </tr>
                                            </thead>
                                            <tbody>
                                            <g:each in="${user.saleAds}" var="saleAdList">
                                                <tr>

                                                    <td><a href="/saleAd/show/${saleAdList.id}">${saleAdList.title}</a></td>



                                                    <td>${saleAdList.description}</td>


                                                    <td>${saleAdList.author}</td>

                                                    <td><ul>
                                                        <g:each in="${saleAdList.illustrations}" var="illustration">
                                                            <li><a href="/illustration/show/${illustration.id}">${illustration.filename}</a></li>
                                                        </g:each>
                                                    </ul></td>

                                                </tr>
                                            </g:each>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="copyright">
                                <p>Copyright © 2020 Aro. All rights reserved.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<asset:javascript src="vendor/jquery-3.2.1.min.js"/>
<asset:javascript src="vendor/animsition/animsition.min.js" />
<!-- Bootstrap JS-->
<asset:javascript src="vendor/bootstrap-4.1/popper.min.js"/>
<asset:javascript src="vendor/bootstrap-4.1/bootstrap.min.js"/>
<!-- Vendor JS       -->
<asset:javascript src="vendor/slick/slick.min.js"/>
<asset:javascript src="vendor/wow/wow.min.js"/>
<asset:javascript src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js"/>
<asset:javascript src="vendor/counter-up/jquery.waypoints.min.js"/>
<asset:javascript src="vendor/circle-progress/circle-progress.min.js"/>
<asset:javascript src="vendor/perfect-scrollbar/perfect-scrollbar.js"/>
<asset:javascript src="vendor/select2/select2.min.js"/>
<asset:javascript src="js/main.js"/>
</body>

</html>
<!-- end document-->