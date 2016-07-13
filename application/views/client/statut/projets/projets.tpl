
<div class="">
    <div id="sidebar-wrapper" class="col-lg-3 col-sm-3 col-md-3 panel panel-default">
        {include file='../../sidebar.tpl'}
    </div>

    <div class="col-lg-9 col-sm-9 col-md-9">
        {include file="../../breadcrumb.tpl"}
        <div class="panel">
            <div class="panel-body">

                <!--/Liste projets-->
                {foreach from=$projets item=projet}

                    <div class="row">    
                        <br>
                        <div class="col-md-2 col-sm-3 text-center">
                            <a class="story-img" href="#"><img src="{$ROOT}ressources/images/projets/{$projet->getUrl()}" style="width:100px;height:100px" class="img-circle"></a>
                        </div>
                        <div class="col-md-10 col-sm-9">
                            <h3>{$projet->getTitre()}</h3>
                            <div class="row">
                                <div class="col-xs-9">
                                    {$projet->getDescription()}
                                    <p class="lead"><a href="{$ROOT}statut/projet/{$projet->getId()}"><button class="btn btn-default">Lire la suite</button></a></p>
                                    <span class="list-inline">Date création :{$projet->getDate_creation()|date_format:"%Y-%m-%d"}</span>
                                </div>
                                <div class="col-xs-3"></div>
                            </div>
                            <br><br>
                        </div>
                    </div>
                    <hr>

                {/foreach}
                <!--/liste projets-->


                <a href="#" class="btn btn-primary pull-right btnNext">Plus <i class="glyphicon glyphicon-chevron-right"></i></a>

            </div> <!--/panel-body-->
        </div>

    </div>
</div>
<div class="clearfix" style="height:40px"></div>

