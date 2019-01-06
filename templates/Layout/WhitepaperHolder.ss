<!--=== Breadcrumbs ===-->
<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left">$Title</h1>
    </div>
</div>
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->
<div class="container content">		
    <div class="row">
    	<div class="<% if ShowSidebar %>col-md-8<% else %>col-md-12<% end_if %>">
    		$Content

            <% if OrderedWhitepapers %>
            <% cached 'WhitepaperHolder', SpecialReportsOnly, Aggregate(Whitepaper).Max(LastEdited) %>
            <% control OrderedWhitepapers %>
            <div class="funny-boxes funny-boxes-left-green">
                <div class="row">
                    <div class="col-md-4 funny-boxes-img">
                        <a href="$Link" title="$Title.XML">
                            <% if MainImage %>
                            <% control MainImage.SetWidth(400) %><img src="$URL" class="img-responsive" /><% end_control %>
                            <% else %>
                            <img src="$ThemeDir/img/default_itemlist_Whitepaper.jpg" class="img-responsive" />
                            <% end_if %>
                        </a>
                        <% if SpecialReport %>
                        <ul class="list-unstyled dlc-details special-reports">
                            <li>
                                An i360Gov Special Report
                            </li>
                        </ul>
                        <% end_if %>
                    </div>
                    <div class="col-md-8">
                        <h2>
                            <a href="$Link">$Title</a>
                            <% if Tagline %>
                            <br /><small>$Tagline</small>
                            <% end_if %>
                        </h2>
                        <!-- tagline/date/etc -->
                        $Description.FirstParagraph
                    </div>
                </div>                            
            </div>
            <% end_control %>
            <% end_cached %>
            <% end_if %>
    	</div>
        <% include Sidebar %>
    </div>
</div>
<!--=== End Content Part ===-->
