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

            <% if OrderedPrograms %>
            <% control OrderedPrograms %>
            <div class="funny-boxes funny-boxes-left-green">
                <div class="row">
                    <div class="col-md-4 funny-boxes-img">
                        <a href="$Link" title="$Title.XML">
                            <% if MainImage %>
                            <% control MainImage.SetWidth(400) %><img src="$URL" class="img-responsive" /><% end_control %>
                            <% else %>
                            <img src="$ThemeDir/img/default_itemlist_Program.jpg" class="img-responsive" />
                            <% end_if %>
                        </a>
                        <% if OrderedSponsors %>
                        <ul class="list-unstyled">
                            <li>
                                <i class="fa fa-star"></i>
                                Sponsored by:
                                <ul class="dlcholder-sponsor-list">
                                    <% control OrderedSponsors %>
                                    <li>
                                        <% if URL %><a href="$URL" class="i360-sponsor" target="_blank"><% end_if %>$Name<% if URL %></a><% end_if %>
                                    </li>
                                    <% end_control %>
                                </ul>
                            </li>
                        </ul>
                        <% end_if %>
                    </div>
                    <div class="col-md-8">
                        <h2>
                            <a href="#"><a href="$Link">$Title</a>
                            <% if Tagline %>
                            <br /><small>$Tagline</small>
                            <% end_if %>
                        </h2>
                        $Content.FirstParagraph
                    </div>
                </div>                            
            </div>
            <% end_control %>
            <% end_if %>
    	</div>
        <% include Sidebar %>
    </div>
</div>
<!--=== End Content Part ===-->