<!-- TOPNAV
================================================== -->
<nav class="nav navbar-default navbar-fixed-top bar-top">
    <div class="container">
        <div class="pull-right">
            <span><a id='modal-launcher' class="sign" data-toggle="modal" data-target="#login-modal">S'enregistrer</a></span>
            <span><a id='modal-launcher' class="sign" data-toggle="modal" data-target="#login-modal">Se connecter</a></span>
        </div>
    </div>
</nav>
<div class="header_top"><!--header_top-->
    <div class="container">

        <div class="row top">
            <div class="col-sm-6">
                <img src="{$ROOT}ressources/images/logo.jpeg" class="logo" />
                <span class="text-logo">Réseaux Professionels Mourides</span>
            </div>
            <div class="col-sm-6">
                <div class="search pull-right">
                    <form class="navbar-form nopadding" role="search">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search" name="q">
                            <div class="input-group-btn">
                                <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
</div><!--/header_top-->




<!-- NAVBAR
================================================== -->
<div class="navbar-wrapper">
    <div class="container">

        <div class="navbar navbar navbar-static-top" role="navigation">
            <div class="container">
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="{$ROOT}accueil/">Accueil</a></li>
                        <li><a href="{$ROOT}authentification/register/">Devenir membre</a></li>
                        <li><a href="{$ROOT}pourquoi/">Pourquoi devenir membre</a></li>
                        <li><a href="{$ROOT}statut/">Projets/Réalisations</a></li>

                        <li><a href="{$ROOT}actualites/">Actualités</a></li>
                        <li><a href="{$ROOT}apropos/">A propos de RPM</a></li>
                        <li><a href="#">Forum</a></li>
                        <li><a href="{$ROOT}contact/">Nous joindre</a></li>
                    </ul>
                </div>
            </div>
        </div>

    </div>
</div>
