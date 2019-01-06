<!--=== Breadcrumbs ===-->
<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left">$MenuTitle</h1>
		<% if Article.BreadcrumbItems %>
		<ul class="pull-right breadcrumb">
			<% control Article.BreadcrumbItems %>
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

			<% control Article %>
			<% cached 'ArticleHandler_Content', ID, LastEdited %>

            <% if MainImage %>
            <% control MainImage.SetWidth(750) %><img src="$URL" class="img-responsive margin-bottom-10" /><% end_control %>
            <% end_if %>

			<h2>$Title</h2>
			$Content
			<p><a href="$ReadLink" class="btn btn-danger" target="_blank" rel="nofollow">Read article</a></p>

			<div class="row">
				<div class="col-md-8">
					<% if NavigationTags %>
					<div class="headline headline-md"><h4>Tags</h4></div>
					<ul class="list-unstyled blog-tags margin-bottom-25">
						<% control NavigationTags %>
						<li>
							<a href="$Link">
								<i class="fa fa-tag"></i>
								$Name
							</a>
						</li>
						<% end_control %>
					</ul>
					<% end_if %>
				</div>
				<div class="col-md-4">
					<div class="headline headline-md"><h4>Share</h4></div>
					<ul class="social-icons social-icons-color margin-bottom-25">
						<li><a target="_blank" href="http://facebook.com/sharer.php?u=$AbsoluteShortLink.URLATT&amp;t=$Title.URLATT" data-original-title="Facebook" class="social_facebook"></a></li>
						<li><a target="_blank" href="https://plus.google.com/share?url=$AbsoluteShortLink.URLATT" data-original-title="Google+" class="social_googleplus"></a></li>
						<li><a target="_blank" href="http://twitter.com/home?status=RT @i360Gov: $Title.URLATT $AbsoluteShortLink.URLATT" data-original-title="Twitter" class="social_twitter"></a></li>
						<li><a target="_blank" href="http://www.linkedin.com/shareArticle?mini=true&amp;url=$AbsoluteShortLink.URLATT&amp;title=$Title.URLATT&amp;summary=$Content.Summary.URLATT&amp;source=$ArticleChannel.NewsletterTitle.URLATT" data-original-title="Linkedin" class="social_linkedin"></a></li>
					</ul>
				</div>
			</div>

			<% end_cached %>
			<% end_control %>

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
					<% if ReadThisWhitepapers %>
					<% cached 'ArticleReadThis', Aggregate(Whitepaper).Max(LastEdited) %>
					<div class="magazine-sb-categories margin-bottom-20 clearfix">
						<div class="headline headline-md">
							<h2>Whitepapers &amp; Special Reports</h2>
						</div>
                        <div class="row">
                            <% cached 'ReadThisWhitepapers', Aggregate(Whitepaper).Max(LastEdited) %>
                            <% control ReadThisWhitepapers %>
                            <div class="col-xs-6">
                                <div class="media margin-bottom-20">
                                    <% if MainImage %>
                                    <% control MainImage %><img src="$URL" class="img-responsive" alt="" /><% end_control %>
                                    <% else %>
                                    <img src="{$ThemeDir}/img/default_itemlist_Whitepaper.jpg" class="img-responsive" alt="" />
                                    <% end_if %>
                                    <div class="media-body">
                                        <a href="$Link">$Title</a>
                                    </div>
                                </div>
                            </div>
                            <% if Last || Even %>
                            <div class="clearfix"></div>
                            <% end_if %>
                            <% end_control %>
                            <% end_cached %>
                        </div>
					</div>
					<% end_cached %>
					<% end_if %>
				</div>
			</div>

    	</div>
    	<% include Sidebar %>
    </div>
</div>
<!--=== End Content Part ===-->