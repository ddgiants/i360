<!--=== Breadcrumbs ===-->
<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left">Program</h1>
    </div>
</div>
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->
<div class="container content">		
    <div class="row">
    	<div class="<% if ShowSidebar %>col-md-8<% else %>col-md-12<% end_if %>">
            <% if MainImage %>
            <% control MainImage.SetWidth(750) %><img src="$URL" class="img-responsive margin-bottom-10" /><% end_control %>
            <% end_if %>

            <div class="row">
                <div class="col-md-8 margin-bottom-15">
                    <h2>
                        $Title
                        <% if Tagline %>
                        <br /><small>$Tagline</small>
                        <% end_if %>
                    </h2>

                    <div class="margin-bottom-20">
                        $Content

                        <% if OrderedSponsors %>
                        <!-- sponsors -->
                        <p>
                            Sponsored by: <% control OrderedSponsors %><% if FirstLast == last %> and <% else_if FirstLast != first %>, <% end_if %><% if URL %><a href="$URL" class="i360-sponsor" target="_blank"><% end_if %>$Name<% if URL %></a><% end_if %><% end_control %>
                        </p>
                        <% end_if %>
                    </div>
                </div>
                <div class="col-md-4">
                    <% if OrderedSponsors %>
                    <div class="margin-bottom-20">
                        <div class="headline headline-md"><h4>Sponsors</h4></div>
                        <% control OrderedSponsors %>
                        <% if URL %><a href="$URL" target="_blank"><% end_if %>
                        <% if Logo %>
                        <% control Logo %>
                        <img src="$URL" class="margin-bottom-5" />
                        <% end_control %>
                        <% else %>
                        <h3>$Name</h3>
                        <% end_if %><% if URL %></a><% end_if %><br />
                        <% end_control %>
                    </div>
                    <% end_if %>

                    <div class="margin-bottom-20">
                        <div class="headline headline-md"><h4>Share</h4></div>
                        <ul class="social-icons social-icons-color">
                            <li><a target="_blank" href="http://facebook.com/sharer.php?u=$AbsoluteShortLink.URLATT&amp;t=$Title.URLATT" data-original-title="Facebook" class="social_facebook"></a></li>
                            <li><a target="_blank" href="https://plus.google.com/share?url=$AbsoluteShortLink.URLATT" data-original-title="Google+" class="social_googleplus"></a></li>
                            <li><a target="_blank" href="http://twitter.com/home?status=RT @i360Gov: $Title.URLATT $AbsoluteShortLink.URLATT" data-original-title="Twitter" class="social_twitter"></a></li>
                            <li><a target="_blank" href="http://www.linkedin.com/shareArticle?mini=true&amp;url=$AbsoluteShortLink.URLATT&amp;title=$Title.URLATT&amp;summary=$Content.Summary.URLATT&amp;source=$ArticleChannel.NewsletterTitle.URLATT" data-original-title="Linkedin" class="social_linkedin"></a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <% if ContentItems %>
            <% control ContentItems %>
            <% if IsSectionHeader %>
            <div class="row">
                <div class="col-xs-12 margin-bottom-20">
                    <% if Description %>
                    <div class="headline headline-md"><h2>$Title</h2></div>
                    $Description
                    <% else %>
                    <h2>$Title</h2>
                    <% end_if %>
                </div>
            </div>
            <% else_if ContentItem %>
            <div class="row">
                <div class="col-xs-12 margin-bottom-20">
                    <div class="headline headline-md"><h4>
                        <a href="$ContentItem.Link" title="$ContentItem.Title.ATT">$Title</a><br />
                        <small>
                            <% control ContentItem %>
                            <% if ClassName == Webcast %>
                            <% if InFuture %>Live<% else %>On Demand<% end_if %> Webcast
                            <% else_if SpecialReport %>
                            i360Gov Special Report
                            <% else %>
                            $ClassName
                            <% end_if %>
                            <% end_control %>
                        </small>
                    </h4></div>

                    $Description

                    <% control ContentItem %>
                    <p>
                        <% if SpecialReport %>
                        <a class="btn btn-danger" href="$Link" title="$Title.ATT">View Special Report</a>
                        <% else %>
                        <a class="btn btn-danger" href="$Link" title="$Title.ATT">View $ClassName</a>
                        <% end_if %>
                    </p>
                    <% end_control %>
                </div>
            </div>
            <% end_if %>
            <% end_control %>
            <% end_if %>

    	</div>
        <% include Sidebar %>
    </div>

</div>
<!--=== End Content Part ===-->