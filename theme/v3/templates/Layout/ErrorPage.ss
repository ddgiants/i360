<!--=== Breadcrumbs ===-->
<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left">Oops! We've encountered an error...</h1>
		<ul class="pull-right breadcrumb">
			<li>
				<a href="$BaseHref">Home</a>
			</li>
			<li class="active">
				Error $ErrorCode
			</li>
		</ul>
    </div>
</div>
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->
<div class="container content">		
    <div class="row">
    	<div class="<% if ShowSidebar %>col-md-8<% else %>col-md-12<% end_if %>">
    		<div class="row margin-bottom-20">
	    		<div class="col-md-12">
				<% if ErrorCode = 404 %>
				<h3>The requested page could not be found...</h3>
				<p>Sorry, we can't find the page you were looking for.  It is possible that it has been removed or changed location.
				Please check the spelling of the URL you were trying to access and try again.</p>
				<p>You may also search the site for the page you were looking for...</p>
				<div id="notfound-search">
					<div id="cse-search-form" style="width: 100%;">Loading...</div>
					<script src="http://www.google.com/jsapi" type="text/javascript"></script>
					<script type="text/javascript"> 
						google.load('search', '1', {language : 'en', style : google.loader.themes.SHINY});
						google.setOnLoadCallback(function() {
							var customSearchOptions = {};
							var customSearchControl = new google.search.CustomSearchControl('017915601220263381300:hyakiatlsy8', customSearchOptions);
							customSearchControl.setResultSetSize(google.search.Search.FILTERED_CSE_RESULTSET);
							var options = new google.search.DrawOptions();
							options.enableSearchboxOnly("$SearchPage.Link");
							customSearchControl.draw('cse-search-form', options);
						}, true);
					</script>
				</div>
				<style type="text/css">
					input.gsc-input {
						border-color: #B6BEC5;
					}
					input.gsc-search-button {
						border-color: #B6BEC5;
						background-color: #D0D1D4;
					}
					.gsc-input input.gsc-input {
						background: none repeat scroll 0% 0% white !important;
					}
				</style>
				<% else %>
				$Content
				<% end_if %>
				</div>
			</div>
			<% if HomePage %>
			<% control HomePage %>
			<div class="row">
				<% if ShowTopStories %>
				<div class="col-md-5">
					<% cached ArticleCache.TopStoriesKey %>
					$ArticleCache.TopStories
					<% end_cached %>
				</div>
				<div class="col-md-7">
				<% else %>
				<div class="col-md-12">
				<% end_if %>
					<div class="magazine-sb-categories margin-bottom-20 clearfix">
						<div class="headline headline-md">
							<h2>Whitepapers &amp; Special Reports</h2>
						</div>
						<div class="row">
							<% control ReadThisWhitepapers %>
							<div class="col-md-6" style="margin: 10px 0;">
								<% if MainImage %>
								<% control MainImage.SetWidth(250) %><img src="$URL" class="img-responsive" alt="" /><% end_control %>
								<% else %>
								<img src="{$ThemeDir}/img/default_itemlist_Whitepaper.jpg" class="img-responsive" alt="" />
								<% end_if %>
								$Title
							</div>
						<% if Even %>
						</div>
						<% if Last %><% else %><div class="row"><% end_if %>
						<% end_if %>
						<% end_control %>
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