<!--=== Breadcrumbs ===-->
<div class="breadcrumbs">
    <div class="container">
        <% if ClassName == Webcast %>
        <h1 class="pull-left">Resource Library: <% if InFuture %>Live<% else %>On Demand<% end_if %> Webcast</h1>
        <% else_if SpecialReport %>
        <h1 class="pull-left">Resource Library: Special Report Download</h1>
        <% else %>
        <h1 class="pull-left">Resource Library: $ClassName Download</h1>
        <% end_if %>
    </div>
</div>
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->
<div class="container content">		
    <div class="row">
    	<div class="<% if ShowSidebar %>col-md-8<% else %>col-md-12<% end_if %> margin-bottom-20">
            <% if MainImage %>
            <% control MainImage.SetWidth(750) %><img src="$URL" class="img-responsive margin-bottom-10" /><% end_control %>
            <% end_if %>

            <div class="row">
                <div class="col-md-8 margin-bottom-20">
                    <h2>
                        $Title
                        <% if ClassName == Webcast %>
            			<% if InFuture %>
                                    <br /><small>$Time.format(D), $Time.format(F jS), $Time.format(Y) at $Time.Time ET</small>
            			<% else %>
            			<br /><small>On Demand Webcast</small>
            			<% end_if %>
                        <% else_if SpecialReport %>
                        <br /><small>An i360Gov Special Report.</small>
                        <% else_if Tagline %>
                        <br /><small>$Tagline</small>
                        <% end_if %>
                    </h2>

                    <div class="margin-bottom-25">
                        $Description

                        <% if OrderedSponsors %>
                        <p>Sponsored by: <% control OrderedSponsors %><% if FirstLast == last %> and <% else_if FirstLast != first %>, <% end_if %><% if URL %><a href="$URL" class="i360-sponsor" target="_blank"><% end_if %>$Name<% if URL %></a><% end_if %><% end_control %></p>
                        <% end_if %>
                    </div>

                    <% if Form %>
                    <div class="headline headline-md"><h4>Please fill out this short survey...</h4></div>
                    $Form
                    <% if FormDisclaimer %><p>$FormDisclaimer</p><% end_if %>
                    <% end_if %>
                </div>
                <div class="col-md-4">
                    <% if OrderedSponsors %>
                    <div class="margin-bottom-20">
                        <div class="headline headline-md"><h4>Sponsors</h4></div>
                        <% control OrderedSponsors %>
                        <div class="margin-bottom-15">
                            <% if URL %><a href="$URL" target="_blank"><% end_if %>
                            <% if Logo %>
                            <% control Logo %>
                            <img src="$URL" class="margin-bottom-5" />
                            <% end_control %>
                            <% else %>
                            <h3>$Name</h3>
                            <% end_if %><% if URL %></a><% end_if %><br />
                        </div>
                        <% end_control %>
                    </div>
                    <% end_if %>

                    <div class="margin-bottom-20">
                        <div class="headline headline-md"><h4>Share</h4></div>
                        <ul class="social-icons social-icons-color">
                            <li><a target="_blank" href="http://facebook.com/sharer.php?u=$AbsoluteShortLink.URLATT&amp;t=$Title.URLATT" data-original-title="Facebook" class="social_facebook"></a></li>
                            <li><a target="_blank" href="https://plus.google.com/share?url=$AbsoluteShortLink.URLATT" data-original-title="Google+" class="social_googleplus"></a></li>
                            <li><a target="_blank" href="http://twitter.com/home?status=RT+@i360Gov:+$Title.URLATT $AbsoluteShortLink.URLATT" data-original-title="Twitter" class="social_twitter"></a></li>
                            <li><a target="_blank" href="http://www.linkedin.com/shareArticle?mini=true&amp;url=$AbsoluteShortLink.URLATT&amp;title=$Title.URLATT&amp;summary=$Content.Summary.URLATT&amp;source=$ArticleChannel.NewsletterTitle.URLATT" data-original-title="Linkedin" class="social_linkedin"></a></li>
                        </ul>
                    </div>

                    <% if Form %>
                    <% else %>
                    <div class="margin-bottom-20">
                        <div class="headline headline-md"><h4><% if ClassName == Webcast %><% if InFuture %>Register<% else %>Download<% end_if %><% else %>Download<% end_if %></h4></div>
                        <a href="$DLCLink" class="btn btn-danger" target="$LinkTarget"><% if ClassName == Webcast %><% if InFuture %>Register Now<% else %>Download Now<% end_if %><% else %>Download Now<% end_if %></a>
                    </div>
                    <% end_if %>
                </div>
            </div>

            <% if RelatedWhitepapers || RelatedWebcasts %>
            <div class="row">
                <div class="col-xs-12">
                    <% if RelatedWhitepapers %>
                    <div class="margin-bottom-20">
                        <div class="headline headline-md"><h4>Related Whitepapers</h4></div>
                        <ul>
                            <% control RelatedWhitepapers %>
                            <li><a href="$Link">$Title</a></li>
                            <% end_control %>
                        </ul>
                    </div>
                    <% end_if %>

                    <% if RelatedWebcasts %>
                    <div class="margin-bottom-20">
                        <div class="headline headline-md"><h4>Related Webcasts</h4></div>
                        <ul>
                            <% control RelatedWebcasts %>
                            <li><a href="$Link">$Title</a></li>
                            <% end_control %>
                        </ul>
                    </div>
                    <% end_if %>
                </div>
            </div>
            <% end_if %>

    	</div>
        <% include Sidebar %>
    </div>

</div>
<!--=== End Content Part ===-->
