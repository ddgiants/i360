<!--=== Breadcrumbs ===-->
<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left">$MenuTitle</h1>
    </div>
</div>
<!--=== End Breadcrumbs ===-->

<div class="img-wide">
    <img src="{$ThemeDir}/img/wide/capitol.jpg" class="img-responsive" alt="Capitol" />
</div>

<!--=== Content Part ===-->
<div class="container content">		
    <div class="row">
    	<div class="<% if ShowSidebar %>col-md-8<% else %>col-md-12<% end_if %> margin-bottom-25">
			$Content
			<% if Channels %>
			<% cached 'RssFeedList', Aggregate(ChannelPage).Max(LastEdited) %>
			<% control Channels %>
			<% if ExternalRSSLink %>
			<h4><a class="rsslink" href="$RssLink" target="_blank"><span>$Title</span></a></h4>
			<ul>
				<li>$ExternalRSSLink</li>
			</ul>
			<% end_if %>
			<% end_control %>
			<% end_cached %>
			<% end_if %>
    	</div>
        <% include Sidebar %>
    </div>
</div>
<!--=== End Content Part ===-->