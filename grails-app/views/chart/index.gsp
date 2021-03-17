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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <asset:stylesheet href="assets/plugins/bootstrap-select/bootstrap-select.min.css"/>
    <asset:stylesheet href="minisidebar/css/style.css"/>
    <asset:stylesheet href="minisidebar/css/colors/default-dark.css" id="theme"/>
</head>

<body class="fix-header fix-sidebar card-no-border">
<div class="preloader">
    <svg class="circular" viewBox="25 25 50 50">
        <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10"/></svg>
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
                        <asset:image src="assets/images/text2.png" width="148px" height="48px" alt="homepage"
                                     class="dark-logo"/>
                        <asset:image src="assets/images/text2.png" width="148px" height="48px" alt="homepage"
                                     class="light-logo"/>
            </div>

            <div class="navbar-collapse"><ul class="navbar-nav mr-auto mt-md-0">
                <li class="nav-item"><a class="nav-link nav-toggler hidden-md-up text-muted waves-effect waves-dark"
                                        href="javascript:void(0)"><i class="mdi mdi-menu"></i></a></li>
                <li class="nav-item"><a
                        class="nav-link sidebartoggler hidden-sm-down text-muted waves-effect waves-dark"
                        href="javascript:void(0)"><i class="ti-menu"></i></a></li>
                <li class="nav-item hidden-sm-down search-box">
                    <a class="nav-link hidden-sm-down text-muted waves-effect waves-dark" href="javascript:void(0)"><i
                            class="ti-search"></i></a>
                    <g:form controller="saleAd" action="search" class="app-search">
                        <input type="text" class="form-control" placeholder="Rechercher quelque chose"
                               name="recherche"> <a class="srh-btn"><i class="ti-close"></i></a>
                    </g:form>
                </li>

            </ul>
                <ul class="navbar-nav my-lg-0">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="#"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><asset:image
                                src="assets/images/users/bg.jpg" alt="user" class="profile-pic"/></a>

                        <div class="dropdown-menu dropdown-menu-right scale-up">
                            <ul class="dropdown-user">
                                <li>
                                    <div class="dw-user-box">

                                        <div class="u-img"><asset:image src="assets/images/users/bg.jpg"
                                                                        alt="user"/></div>

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

                <div class="profile-img"><asset:image src="assets/images/users/bg.jpg" alt="user"/></div>

                <div class="profile-text"><a href="#" aria-haspopup="true" aria-expanded="true">Administrateur</a>
                </div>
            </div>
            <nav class="sidebar-nav">
                <ul id="sidebarnav">
                    <li class="nav-small-cap">Toutes les catégories</li>
                    <li><a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i
                            class="mdi mdi-account"></i><span class="hide-menu">Utilisateurs</span></a>
                        <ul aria-expanded="false" class="collapse">
                            <li><a href="/user/create">Creation</a></li>
                            <li><a href="/user/index">Liste</a></li>
                        </ul>
                    </li>
                    <li><a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i
                            class="mdi mdi-book-variant"></i><span class="hide-menu">Annonces</span></a>
                        <ul aria-expanded="false" class="collapse">
                            <li><a href="/saleAd/create">Creation</a></li>
                            <li><a href="/saleAd/index">Liste</a></li>
                        </ul>
                    </li>
                    <li><a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i
                            class="mdi mdi-animation"></i><span class="hide-menu">Illustrations</span></a>
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
            <a href="/logoff" class="link" data-toggle="tooltip" title="Deconnexion"><i class="mdi mdi-power"></i></a>
        </div>
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

            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body analytics-info">
                            <h4 class="card-title">Total Utilisateur</h4>
                            <ul class="list-inline two-part">
                                <li>
                                    <div id="sparklinedash"></div>
                                </li>
                                <li class="text-right"><i class="ti-arrow-up text-success"></i> <span
                                        class="counter text-success">${nbUser}</span></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body analytics-info">
                            <h4 class="card-title">Total Annonce</h4>
                            <ul class="list-inline two-part">
                                <li>
                                    <div id="sparklinedash2"></div>
                                </li>
                                <li class="text-right"><i class="ti-arrow-up text-purple"></i> <span
                                        class="counter text-purple">${nbAnno}</span></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body analytics-info">
                            <h4 class="card-title">Total Illustration</h4>
                            <ul class="list-inline two-part">
                                <li>
                                    <div id="sparklinedash3"></div>
                                </li>
                                <li class="text-right"><i class="ti-arrow-up text-info"></i> <span
                                        class="counter text-info">${nbIllu}</span></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body analytics-info">
                            <h4 class="card-title">Moyenne Price Annonce</h4>
                            <ul class="list-inline two-part">
                                <li>
                                    <div id="sparklinedash4"></div>
                                </li>
                                <li class="text-right"><i class="ti-arrow-down text-danger"></i> <span
                                        class="text-danger">${moyenne} $</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Nombre d'Utilisateur par Role</h4>
                            <div class="flot-chart">
                                <div class="flot-chart-content" id="flot-pie-chart"></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Nombre d'annonce par prix</h4>
                            <div>
                                <canvas id="chart2" height="190"></canvas>
                            </div>
                        </div>
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
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
<asset:javascript src="minisidebar/js/jquery.slimscroll.js"/>
<asset:javascript src="minisidebar/js/waves.js"/>
<asset:javascript src="assets/plugins/bootstrap-select/bootstrap-select.min.js"/>
<asset:javascript src="minisidebar/js/sidebarmenu.js"/>
<asset:javascript src="assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"/>
<asset:javascript src="assets/plugins/sparkline/jquery.sparkline.min.js"/>
<asset:javascript src="minisidebar/js/custom.min.js"/>
<asset:javascript src="assets/plugins/styleswitcher/jQuery.style.switcher.js"/>

<asset:javascript src="minisidebar/js/custom.min.js"/>
<asset:javascript src="assets/plugins/sparkline/jquery.sparkline.min.js"/>
<asset:javascript src="assets/plugins/sparkline/jquery.charts-sparkline.js"/>

<asset:javascript src="assets/plugins/flot/excanvas.js"/>
<asset:javascript src="assets/plugins/flot/jquery.flot.js"/>
<asset:javascript src="assets/plugins/flot/jquery.flot.pie.js"/>
<asset:javascript src="assets/plugins/flot/jquery.flot.time.js"/>
<asset:javascript src="assets/plugins/flot/jquery.flot.stack.js"/>
<asset:javascript src="assets/plugins/flot/jquery.flot.crosshair.js"/>
<asset:javascript src="assets/plugins/flot.tooltip/js/jquery.flot.tooltip.min.js"/>
<asset:javascript src="minisidebar/js/flot-data.js"/>

<asset:javascript src="assets/plugins/Chart.js/chartjs.init.js"/>
<asset:javascript src="assets/plugins/Chart.js/Chart.min.js"/>


<script>
    $(function () {
        var data = [
            <g:each var="i" in="${ (0..<userRoleLst.size()) }">
                {label: "${userRoleLst.get(i)[0].getAuthority()}"
                , data: ${userRoleLst.get(i)[1]}
                , color: "${listColor[i]}"
                , },
            </g:each>
            ];
        var plotObj = $.plot($("#flot-pie-chart"), data, {
            series: {
                pie: {
                    innerRadius: 0.5
                    , show: true
                }
            }
            , grid: {
                hoverable: true
            }
            , color: null
            , tooltip: true
            , tooltipOpts: {
                content: "%p.0%, %s", // show percentages, rounding to 2 decimal places
                shifts: {
                    x: 20
                    , y: 0
                }
                , defaultTheme: false
            }
        });
    });


    new Chart(document.getElementById("chart2"),
        {
            "type":"bar",
            "data":{"labels":["0 - 150$","150$ - 200$","200$ - 250$","+ de 250$"],
                "datasets":[{
                    "label":"Prix de l'annonce",
                    %{--"data":[${listPrice[0]},${listPrice[1]},${listPrice[2]},${listPrice[3]}],--}%
                    "data":[${listPrice[0]},${listPrice[1]},${listPrice[2]},${listPrice[3]}],
                    "fill":false,
                    "backgroundColor":["rgba(255, 99, 132, 0.2)","rgba(255, 159, 64, 0.2)","rgba(255, 205, 86, 0.2)","rgba(75, 192, 192, 0.2)"],
                    "borderColor":["rgb(252, 75, 108)","rgb(255, 159, 64)","rgb(255, 178, 43)","rgb(38, 198, 218)"],
                    "borderWidth":1}
                ]},
            "options":{
                "scales":{"yAxes":[{"ticks":{"beginAtZero":true}}]}
            }
        });
</script>
</body>
</html>