<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Acceuil</title>



    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">

    <asset:stylesheet href="css/bootstrap.min.css"/>
    <asset:stylesheet href="css/mdb.min.css"/>
    <asset:stylesheet href="css/style.css"/>
</head>

<style>

html,
body,
header,
.view {
    height: 100%;
}

@media (max-width: 740px) {
    html,
    body,
    header,
    .view {
        height: 1000px;
    }
}
@media (min-width: 800px) and (max-width: 850px) {
    html,
    body,
    header,
    .view {
        height: 600px;
    }
}

.btn .fa {
    margin-left: 3px;
}

.top-nav-collapse {
    background-color: transparent !important;
}

.navbar:not(.top-nav-collapse) {
    background: transparent !important;
}

@media (max-width: 991px) {
    .navbar:not(.top-nav-collapse) {
        background: transparent !important;
    }
}

.btn-white {
    color: black !important;
}

h6 {
    line-height: 1.7;
}

.rgba-gradient {
    background: -moz-linear-gradient(45deg, rgba(1, 1, 4, 0.8), rgba(1, 1, 4, 0.7) 100%);
    background: -webkit-linear-gradient(45deg, rgba(248, 170, 3, 0.7), rgba(238, 139, 10, 0.7) 100%);
    background: -webkit-gradient(linear, 45deg, from(rgba(1, 1, 4, 0.7)), to(rgba(1, 1, 4, 0.7)));
    background: -o-linear-gradient(45deg, rgba(1, 1, 4, 0.7), rgba(1, 1, 4, 0.7) 100%);
    background: linear-gradient(to 45deg, rgba(1, 1, 4, 0.7), rgba(1, 1, 4, 0.7) 100%);
}

.responsive {
    width: 100%;
    height: auto;
}
</style>

<body>

<!-- Start your project here-->
<!-- Main navigation -->
<header>
    <!--Navbar-->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top scrolling-navbar">
        <div class="container">
            <a class="navbar-brand" href="#">
                <strong>Projet Mr.Galli</strong>
            </a>


        </div>
    </nav>
    <!-- Full Page Intro -->

    <div class="view" style="background-image: url(${assetPath(src: 'image/back.jpg')}); background-repeat: no-repeat; background-size: cover; background-position: center center;">
        <!-- Mask & flexbox options-->
        <div class="mask rgba-gradient d-flex justify-content-center align-items-center">
            <!-- Content -->
            <div class="container">
                <!--Grid row-->
                <div class="row">
                    <!--Grid column-->
                    <div class="col-md-6 white-text text-center text-md-left mt-xl-5 mb-5 wow fadeInLeft" data-wow-delay="0.3s">
                        <h1 class="h1-responsive font-weight-bold mt-sm-5">Le Coin Coin </h1>
                        <hr class="hr-light">
                        <h6 class="mb-4"> Un projet consistant a reproduire un site comme leBonCoin, un projet réalisé par Aro, Matthieu et Tinasoa</h6>
                        <a class="btn btn-white">Front Office</a>
                        <a href="/illustration/index" class="btn btn-outline-white">Back Office</a>
                    </div>
                    <!--Grid column-->
                    <!--Grid column-->
                    <div class="col-md-6 col-xl-5 mt-xl-5 wow fadeInRight" data-wow-delay="0.3s">
                        <asset:image src="image/logo.png"  class="responsive" width="750" height="297"/>
                    </div>
                    <!--Grid column-->
                </div>
                <!--Grid row-->
            </div>
            <!-- Content -->
        </div>
        <!-- Mask & flexbox options-->
    </div>
    <!-- Full Page Intro -->
</header>
<!-- Main navigation -->



<asset:javascript src="js/jquery-3.3.1.min.js"/>
<asset:javascript src="js/popper.min.js"/>
<asset:javascript src="js/bootstrap.min.js"/>
<asset:javascript src="js/mdb.min.js"/>

</body>

</html>
