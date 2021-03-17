<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/favicon.png">
    <title>Création illustration</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <asset:stylesheet href="assets/plugins/bootstrap-select/bootstrap-select.min.css"/>
    <asset:stylesheet href="minisidebar/css/style.css"/>
    <asset:stylesheet href="assets/plugins/dropzone-master/dist/dropzone.css" id="theme"/>
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
                <g:form controller="saleAd" action="search" class="app-search">
                    <input type="text" class="form-control" placeholder="Rechercher quelque chose" name="recherche"> <a class="srh-btn"><i class="ti-close"></i></a>
                </g:form>
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
                    <li> <a class="has-arrow waves-effect waves-dark" href="/chart/index" aria-expanded="false"><i class="mdi mdi-file-chart"></i><span class="hide-menu">Tableau de Bord</span></a>
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
                        <li class="breadcrumb-item">Illustrations</li>
                        <li class="breadcrumb-item active"><a href="#">Création</a></li>
                    </ol>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Page de création illustration</h4>
                            <h6 class="card-subtitle">Veuillez remplir les formulaires </h6>

                            %{--    Debut form  --}%
                            <g:form resource="${this.illustration}" method="POST" enctype="multipart/form-data">
                                <g:hiddenField name="filename" value="files"/>
                                    <div class="form-group row">
                                        <div class="col-sm-9">
                                            <label for="cc-name" class="control-label mb-1">Illustrations</label>
                                            <div class="input-group">
                                                <div class="fileupload btn-md btn-danger btn-rounded waves-effect waves-light"><i class="fa fa-upload"></i>
                                                    <input type="file" class="" name="listeFchiers" id="title" multiple="multiple">
                                                </div>
                                            </div>
                                        </div>
                                    </div>




                                    <div class="form-group row">
                                        <div class="col-sm-9">
                                            <div class="input-group">
                                                <h5 class="m-t-30">Choississez un annonce pour cette illustration</h5>
                                                <g:select from="${grails.SaleAd.list()}"
                                                          name="saleAd" optionKey="id"
                                                          optionValue="title" value="${it?.id}"
                                                          class="selectpicker m-b-20 m-r-10" data-style="btn-warning "
                                                          data-tokens="ketchup mustard"/>

                                            </div>
                                        </div>
                                    </div>


                                    <div class="form-group row ">
                                        <div class="col-sm-9">
                                            <button type="submit" class="btn-md btn-success btn-rounded"><i class="fa fa-plus"></i> Ajouter</button>
                                        </div>
                                    </div>
                            </g:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<footer class="footer">
    © 2020 Back-End BIHAR by Mika.RAHARISON & Matthieu RAKOTOBE
</footer>
</div>
</div>


<asset:javascript src="js/jquery-3.3.1.min.js"/>
<asset:javascript src="js/popper.min.js"/>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<asset:javascript src="minisidebar/js/jquery.slimscroll.js"/>
<asset:javascript src="minisidebar/js/waves.js"/>
<asset:javascript src="assets/plugins/bootstrap-select/bootstrap-select.min.js"/>
<asset:javascript src="minisidebar/js/sidebarmenu.js"/>
<asset:javascript src="assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"/>
<asset:javascript src="assets/plugins/sparkline/jquery.sparkline.min.js"/>
<asset:javascript src="minisidebar/js/custom.min.js"/>
<asset:javascript src="assets/plugins/dropzone-master/dist/dropzone.js"/>
<asset:javascript src="assets/plugins/styleswitcher/jQuery.style.switcher.js"/>

</body>
</html>