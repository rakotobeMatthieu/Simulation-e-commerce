<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/favicon.png">
    <title>Modification annonce</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <asset:stylesheet href="assets/plugins/bootstrap-select/bootstrap-select.min.css"/>
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
                        <li class="breadcrumb-item">Annonces</li>
                        <li class="breadcrumb-item active"><a href="#">Modification</a></li>
                    </ol>
                </div>
            </div>

            <!--- Eto le row no miditra-->
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Page de modification d'un annonce</h4>
                            <h6 class="card-subtitle">Veuillez modifiez les champs </h6>


                            <g:form resource="${this.saleAd}" method="PUT">
                                <div class="form-group row">
                                    <div class="col-sm-9">
                                        <label for="cc-name" class="control-label mb-1">Titre</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">
                                                    <i class="ti-text"></i>
                                                </span>
                                            </div>
                                            <input type="text" id="title" name="title" placeholder="Entrez le titre de l'annonce" value="${saleAd.title}" class="form-control">
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group row">
                                    <div class="col-sm-9">
                                        <label for="cc-name" class="control-label mb-1">Description</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">
                                                    <i class="ti-write"></i>
                                                </span>
                                            </div>
                                            <input type="text" id="description" name="description" rows="9" name="title" placeholder="Enter a title" value="${saleAd.description}" class="form-control">
%{--                                            <textarea name="description" id="description" rows="9" placeholder="Description" class="form-control">${saleAd.description}</textarea>--}%
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-sm-9">
                                        <label for="cc-name" class="control-label mb-1">Prix</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="basic-addon1">
                                                    <i class="ti-ruler-pencil"></i>
                                                </span>
                                            </div>
                                            <input type="number" id="price" value="${saleAd.price}" name="price" placeholder="0" class="form-control">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-sm-9">
                                        <div class="input-group">
                                            <h5 class="m-t-30">Choississez l'auteur de l'annonce</h5>
                                            %{--                                                <select class="selectpicker m-b-20 m-r-10" data-style="btn-warning">--}%
                                            %{--                                                    <option data-tokens="ketchup mustard">ROLE_ADMIN</option>--}%
                                            %{--                                                    <option data-tokens="mustard">ROLE_MODERATOR</option>--}%
                                            %{--                                                    <option data-tokens="frosting">ROLE_CLIENT</option>--}%
                                            %{--                                                </select>--}%



                                            <select name="author" required="" id="author" class="selectpicker m-b-20 m-r-10" data-style="btn-warning">

%{--                                                <g:each in="${grails.User.list()}" var="userList">--}%
%{--                                                    <option data-tokens="ketchup mustard" value="${userList.id}" >${userList.username}</option>--}%
%{--                                                </g:each>--}%

                                                <g:each in="${grails.User.list()}" var="userList" name="author" optionKey="id">
                                                    <g:if test="${userList.id == saleAd.author.id}">
                                                        <option data-tokens="ketchup mustard" value="${userList.id}" selected="selected">${userList.username}</option>
                                                    </g:if>
                                                    <g:else>
                                                        <option data-tokens="ketchup mustard" value="${userList.id}">${userList.username}</option>
                                                    </g:else>
                                                </g:each>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-sm-9">
                                        <label for="cc-name" class="control-label mb-1">Illustrations</label>
                                        <div class="input-group">
                                            <div class="fileupload btn-md btn-warning btn-rounded waves-effect waves-light"><span><i class="ion-upload m-r-5"></i>Ajouter Illustrations</span>
                                                <input type="file" class="upload"> </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group row ">
                                    <div class="col-sm-9">
                                        <button type="submit" class="btn-md btn-success btn-rounded"><i class="fa fa-edit"></i> Modifier</button>
                                    </div>
                                </div>

                            </g:form>

                            <g:form resource="${this.saleAd}" method="DELETE">
                                <div class="form-group row ">
                                    <div class="col-sm-9">
                                        <button type="submit" class="btn-md btn-danger btn-rounded" onclick="return confirm('${message(code: 'delete', default: 'Etes vous sur de supprimer cet élement ?')}');"><i class="fa fa-trash"></i> Supprimer</button>
                                    </div>
                                </div>
                            </g:form>
                        </div>
                    </div>
                </div>
            </div>
            <!--- De midy eto -->

            <div class="row">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Liste des illustrations de cette annonce</h4>

                        <g:each in="${saleAd.illustrations}" var="illustration">
                            <div class="col-lg-3 col-md-6 img-responsive">
                                <div class="card">
                                    <asset:image src="${illustration.filename}" class="card-img-top img-responsive" alt="Card image cap"/>
%{--                                    <img class="card-img-top img-responsive" src="../assets/images/cod.jpg" alt="Card image cap">--}%
                                    <div class="card-body">
                                        <h4 class="card-title">${illustration.filename}</h4>
                                        <p class="card-text"> ${illustration.saleAd.title}</p>
                                        <a  class="card-inverse" href="/illustration/edit/${illustration.id}" class="btn btn-primary"><i class="fa fa-eye"></i> Voir illustration</a>
                                        <a class="card-actions" href="#" class="btn btn-danger"> <i class="fa fa-trash"></i> Supprimer</a>
                                    </div>
                                </div>
                            </div>
                        </g:each>

                    </div>
                </div>
            </div>







        </div>

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
<asset:javascript src="assets/plugins/bootstrap-select/bootstrap-select.min.js"/>
<asset:javascript src="minisidebar/js/sidebarmenu.js"/>
<asset:javascript src="assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"/>
<asset:javascript src="assets/plugins/sparkline/jquery.sparkline.min.js"/>
<asset:javascript src="minisidebar/js/custom.min.js"/>
<asset:javascript src="assets/plugins/styleswitcher/jQuery.style.switcher.js"/>
</body>
</html>