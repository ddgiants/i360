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
			$ContactForm
    	</div>
        <% include Sidebar %>
    </div>
</div>
<!--=== End Content Part ===-->