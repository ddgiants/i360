<!--=== Breadcrumbs ===-->
<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left"><% if CurrentMember %>$Title<% else %>Register at i360Gov<% end_if %></h1>
    </div>
</div>
<!--=== End Breadcrumbs ===-->

<div class="img-wide">
    <img src="{$ThemeDir}/img/wide/monuments.jpg" class="img-responsive" alt="Capitol" />
</div>

<!--=== Content Part ===-->
<div class="container content">		
    <div class="row">
    	<div class="<% if ShowSidebar %>col-md-8<% else %>col-md-12<% end_if %>">
			$Content
			$Form
    	</div>
        <% include Sidebar %>
    </div>
</div>
<!--=== End Content Part ===-->