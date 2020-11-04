<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
%{--    <asset:image src="assets/images/favicon.png" sizes="16x16" rel="icon"/>--}%
<link rel="icon" type="image/png" sizes="16x16" href="../assets/images/favicon.png">
    <title>Liste utilisateurs</title>
%{--    <link href="../assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">--}%
%{--    <link href="../assets/plugins/tablesaw-master/dist/tablesaw.css" rel="stylesheet">--}%
%{--    <link href="css/style.css" rel="stylesheet">--}%
%{--    <link href="css/colors/default-dark.css" id="theme" rel="stylesheet">--}%

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <asset:stylesheet href="assets/plugins/tablesaw-master/dist/tablesaw.css"/>
    <asset:stylesheet href="minisidebar/css/style.css"/>
    <asset:stylesheet href="minisidebar/css/colors/default-dark.css" id="theme"/>
</head>

<body class="fix-header fix-sidebar card-no-border">
<div class="preloader">
    <svg class="circular" viewBox="25 25 50 50">
        <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
</div>
<div id="main-wrapper">
    <header class="topbar">
        <nav class="navbar top-navbar navbar-expand-md navbar-light">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.html">
                    <b>

                        <asset:image src="assets/images/logo51.png" alt="homepage" class="dark-logo"/>
                        <asset:image src="assets/images/logo51.png" alt="homepage" class="light-logo"/>
                    </b>
                    <span>
                        <asset:image src="assets/images/text2.png" width="148px" height="48px" alt="homepage" class="dark-logo"/>
                        <asset:image src="assets/images/text2.png" width="148px" height="48px" alt="homepage" class="light-logo"/>
            </div>  <div class="navbar-collapse"> <ul class="navbar-nav mr-auto mt-md-0">
            <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up text-muted waves-effect waves-dark" href="javascript:void(0)"><i class="mdi mdi-menu"></i></a> </li>
            <li class="nav-item"> <a class="nav-link sidebartoggler hidden-sm-down text-muted waves-effect waves-dark" href="javascript:void(0)"><i class="ti-menu"></i></a> </li>
            <li class="nav-item hidden-sm-down search-box">
                <a class="nav-link hidden-sm-down text-muted waves-effect waves-dark" href="javascript:void(0)"><i class="ti-search"></i></a>
                <form class="app-search">
                    <input type="text" class="form-control" placeholder="Rechercher quelque chose"> <a class="srh-btn"><i class="ti-close"></i></a> </form>
            </li>

        </ul>
            <ul class="navbar-nav my-lg-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><asset:image src="assets/images/users/bg.jpg" alt="user" class="profile-pic"/></a>
                    <div class="dropdown-menu dropdown-menu-right scale-up">
                        <ul class="dropdown-user">
                            <li>
                                <div class="dw-user-box">

                                    <div class="u-img"><asset:image src="assets/images/users/bg.jpg" alt="user"/></div>
                                    <div class="u-text">
                                        <h4>RAHARISON</h4>
                                    </div>
                            </li>
                            <li><a href="/logoff"><i class="fa fa-power-off"></i> Logout</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
        </nav>
    </header>
    <aside class="left-sidebar">
        <div class="scroll-sidebar">

            <div class="user-profile" style="background: url(${assetPath(src: 'assets/images/test2.png')}) no-repeat;">

                <div class="profile-img"> <asset:image src="assets/images/users/bg.jpg" alt="user"/> </div>
                <div class="profile-text"> <a href="#"  aria-haspopup="true" aria-expanded="true">Administrateur</a>
                </div>
            </div>
            <nav class="sidebar-nav">
                <ul id="sidebarnav">
                    <li class="nav-small-cap">Toutes les catégories</li>
                    <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-account"></i><span class="hide-menu">Utilisateurs </span></a>
                        <ul aria-expanded="false" class="collapse">
                            <li><a href="/user/create">Creation</a></li>
                            <li><a href="/user/index">Liste</a></li>
                        </ul>
                    </li>
                    <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-book-variant"></i><span class="hide-menu">Annonces</span></a>
                        <ul aria-expanded="false" class="collapse">
                            <li><a href="/saleAd/create">Creation</a></li>
                            <li><a href="/saleAd/index">Liste</a></li>
                        </ul>
                    </li>
                    <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-animation"></i><span class="hide-menu">Illustrations</span></a>
                        <ul aria-expanded="false" class="collapse">
                            <li><a href="/illustration/create">Creation</a></li>
                            <li><a href="/illustration/index">Liste</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="sidebar-footer">
            <a href="/logoff" class="link" data-toggle="tooltip" title="Deconnexion"><i class="mdi mdi-power"></i></a> </div>
    </aside>
    <div class="page-wrapper">
        <div class="container-fluid">
            <div class="row page-titles">
                <div class="col-md-5 col-8 align-self-center">
                    <h3 class="text-warning m-b-0 m-t-0">Dashboard</h3>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">Dashboard</li>
                        <li class="breadcrumb-item">Utilisateur</li>
                        <li class="breadcrumb-item active"><a href="#">Liste des utilisateurs</a></li>
                    </ol>
                </div>
            </div>

            <!--- Eto le row no miditra-->
            <div class="row">
                <div class="col-12">
                    <!-- Column -->
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Liste des utilisateurs</h4>
                            <h5 class="card-subtitle">Retrouvez ici la liste de tout les utilisateurs</h5>
                            <table class="tablesaw table-striped table-hover table-bordered table" data-tablesaw-mode="columntoggle">
                                <thead>
                                <tr>
                                    <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="persist">Nom </th>
                                    <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="1">Role</th>
                                    <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="2">Annonces</th>

                                </tr>
                                </thead>
                                <tbody>
                                <g:each in="${grails.User.list()}" var="userList">
                                    <tr>
                                        <td class="title"><a href="/user/edit/${userList.id}">${userList.username}</a></td>
                                        <g:each in="${grails.UserRole.list()}" var="userRoleList">
                                            <g:if test="${userRoleList.user.id == userList.id}">
                                                <td>${userRoleList.role.authority}</td>
                                            </g:if>
                                            <g:else>
                                            </g:else>
                                        </g:each>
                                        <td><ul>
                                            <g:each in="${userList.saleAds}" var="saleAd">
                                                <li><a href="/saleAd/edit/${saleAd.id}">${saleAd.title}</a></li>
                                            </g:each>
                                        </ul></td>
                                    </tr>
                                </g:each>

                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- Column -->
                </div>
            </div>

        </div>
        <!--- De midy eto -->
    </div>
</div>

</div>
<footer class="footer">
    © 2020 Back-End BIHAR by Mika.RAHARISON
</footer>
</div>
</div>



<asset:javascript src="js/jquery-3.3.1.min.js"/>
<asset:javascript src="js/popper.min.js"/>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<asset:javascript src="minisidebar/js/jquery.slimscroll.js"/>
<asset:javascript src="minisidebar/js/waves.js"/>
<asset:javascript src="minisidebar/js/sidebarmenu.js"/>
<asset:javascript src="assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"/>
<asset:javascript src="assets/plugins/sparkline/jquery.sparkline.min.js"/>
<asset:javascript src="minisidebar/js/custom.min.js"/>
<asset:javascript src="assets/plugins/tablesaw-master/dist/tablesaw.jquery.js"/>
<asset:javascript src="assets/plugins/tablesaw-master/dist/tablesaw-init.js"/>
<asset:javascript src="assets/plugins/styleswitcher/jQuery.style.switcher.js"/>


</body>
</html>