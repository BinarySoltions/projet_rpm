<!-- Sidebar -->
<div class="panel-heading"><h3 class="panel-title">Services</h3></div>
  <div class="panel-body nopadding">
    <div id='cssmenu'>        
                <ul>    
                <!--/liste services-->
                {nocache}
                {foreach from=$services['services'] item=service}
                        {if $service->getDomaine() != null}
                            <li class='has-sub'><a href='#'><span>{$service->getTitre()}</span></a>
			  <ul>
                              {foreach from=$service->getDomaine() item=domaine}
				 <li><a href='#'><span>{$domaine->getTitre()}</span></a></li>
                              {/foreach}
			  </ul>
                        {else}
                            <li class='last'><a href='#'><span>{$service->getTitre()}</span></a>
                        {/if}
		   </li>
                {/foreach}
                {/nocache}
                </ul>
                <!--/fin services-->
	</div>
  </div>

        <!-- /#sidebar-wrapper -->