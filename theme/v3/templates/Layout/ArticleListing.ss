<!--=== Breadcrumbs ===-->
<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left">$Title</h1>
		<% if BreadcrumbItems %>
		<ul class="pull-right breadcrumb">
			<% control BreadcrumbItems %>
			<% if Current %><li class="active"><% else %><li><% end_if %>
				<a href="$Link">$Title</a>
			</li>
			<% end_control %>
		</ul>
		<% end_if %>
    </div>
</div>
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->
<div class="container content">		
    <div class="row">
    	<div class="<% if ShowSidebar %>col-md-8<% else %>col-md-12<% end_if %>">
			<% if Articles %>
			<ul class="i360-link-block">
				<% control Articles %>
				<li>
					<a href="$Link" title="$Title.ATT">$Title</a><br />
					<% if ClassName = Article %><small class="text-muted">$Created.format(M d), $Created.format(Y)<% if ChannelList %> in $ChannelList<% end_if %></small><% end_if %>
				</li>
				<% end_control %>
			</ul>
			<% else %>
			<h3>No articles found.</h3>
			<% end_if %>

			<% if Articles.MoreThanOnePage %>
			<!-- Pagination Centered -->
			<div class="text-center">
				<ul class="pagination">
					<% if Articles.NotFirstPage %>
					<li><a href="$Articles.PrevLink">&laquo;</a></li>
					<% else %>
					<li class="disabled"><span>&laquo;</span></li>
					<% end_if %>
					<% control Articles.PaginationSummary(5) %>
					<% if CurrentBool %><li class="active"><% else %><li><% end_if %>
						<% if Link %>
						<a href="$Link">
							$PageNum
						</a>
						<% else %>
						<span>
							...
						</span>
						<% end_if %>
					</li>
					<% end_control %>
					<% if Articles.NotLastPage %>
					<li><a href="$Articles.NextLink">&raquo;</a></li>
					<% else %>
					<li class="disabled"><span>&raquo;</span></li>
					<% end_if %>
				</ul>
			</div>
			<!--End Pagination Centered-->
			<% end_if %>

    	</div>
    	<% include Sidebar %>
    </div>
</div>
<!--=== End Content Part ===-->
