<!-- TOPNAV
================================================== -->
<nav class="nav navbar-default navbar-fixed-top bar-top">
    <div class="container ">
        <div class="pull-right">
            {nocache}
            {if $User != null}

                <div class="dropdown">
                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                        Bonjour&nbsp;{$User->getPrenom()}
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownLoginMenu">
                        <li><a href="{$ROOT}authentification/profil/{$User->getId()}">Profil</a></li>
                        <li class="dropdown-header"><span><a href="{$ROOT}authentification/logout/">Se déconnecter</a></li>
                    </ul>
                </div>
            {else}
                <span><a class="sign" href="{$ROOT}authentification/inscription/">S'inscrire</a></span>
                <span><a id='' href="{$ROOT}authentification/connecter/" class="sign" data-toggle="" data-target="">Se connecter</a></span>
            {/if}
{/nocache}
        </div>
    </div>
</nav>
<div class="header_top"><!--header_top-->
    <div class="banner">

        <div class="row top">
            <div class="col-sm-8" style="margin:0 0 0 10px">
                <a  href='{$ROOT}accueil' title="Réseau des Professionels Mourides"><img src="{$ROOT}ressources/images/logo.png" class="logo" /></a>
                <br/>
                <span class="text-logo">Réseau des Professionels Mourides du Monde</span>
            </div>
            <div class="col-sm-3">
                <div class="search" >
                    <form class="navbar-form nopadding" role="search">
                        <div class="input-group pull-right" >
                            <input type="text" class="form-control" placeholder="Search" name="q">
                            
                            <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                            
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
    <div class="">

        <div class="navbar navbar navbar-static-top" role="navigation">
            <div class="">
                <span class="glyphicon glyphicon-th-list show-menu"> MENU </span>
               <center> <div class="navbar-collapse collapse">
                     <ul class="nav navbar-nav nav1">
                        {nocache}
                      {foreach from=$pages key=page item=info_page}
                         
                          <li class="{$info_page.class}"><a href="{$page}"{$info_page.param[0]}>{$info_page.name} {$info_page.param[1]}</a>
                            {if $info_page.param[0] != ''}

                                <ul class="dropdown-menu nav bg-footer">
                                {foreach from=$info_page.sub_menu key=sub_page item=info_sub_page}
                           
                                   <li class="{$info_sub_page.class}"><a href="{$sub_page}">{$info_sub_page.name}</a></li>
                                {/foreach}

                                </ul>
                             {/if}
                         </li>
                    {/foreach}
                    {/nocache}
                        </ul>
                </div></center>
            </div>
        </div>

    </div>
</div>
            {nocache}
                <div class="{$addmarging}"></div>
{/nocache}
<script>
    $('.show-menu').click(function(){
        $('.nav1>li').toggle();
        $('.collapse').show();
    });
   $(window).resize(function() {
    if(screen.width == window.innerWidth){
       $('.nav1>li').show();
       $('.collapse').show();
    } else if(screen.width > window.innerWidth){
     $('.nav1>li').show();
       // $('.collapse').hide();
    } else {
        $('.nav1>li').show();
        $('.collapse').show();
    }
});
</script>