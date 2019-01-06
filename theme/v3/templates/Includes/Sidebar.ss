<% if ShowSidebar %>
<div class="col-md-4">
    <% if ShowSponsor && SponsorScrollerItems %>
    <% include SponsorScroller %>
    <% else %>
    <% if ShowNewsletterSignup %>
    <div class="row">
        <div class="col-xs-12">
            <div class="shadow-wrapper margin-bottom-20">
                <div class="tag-box tag-box-v1 tag-box-p10 box-shadow shadow-effect-1">
                    <h2>i360Gov Newsletters</h2>
                    <p>The most significant government policy, business, and technology news and analysis delivered to your inbox.</p>
                    <a href="$ProfilePage.Link" class="btn btn-danger">Subscribe Now</a>
                </div>
            </div>
        </div>
    </div>
    <% end_if %>
    <% if ShowSidebarAd %>
    <div id="SidebarAd" class="row margin-bottom-20 text-center">
        <script type="text/javascript">
            GA_googleFillSlot("$SidebarAdCode");
        </script>
    </div>
    <% end_if %>
    <% end_if %>

    <% if ClassName == "KnowledgeCenterPage" %>
    <% if RelatedWhitepapers %>
    <div class="row">
        <div class="col-xs-12">
            <div class="magazine-sb-categories margin-bottom-20 clearfix">
                <div class="headline headline-md">
                    <h4>Related Whitepapers</h4>
                </div>
                <ul class="col-xs-12 i360-link-block">
                    <% control RelatedWhitepapers %>
                    <li><a href="$Link">$Title</a></li>
                    <% end_control %>
                </ul>
            </div>
        </div>
    </div>
    <% end_if %>
    <% if RelatedWebcasts %>
    <div class="row">
        <div class="col-xs-12">
            <div class="magazine-sb-categories margin-bottom-20 clearfix">
                <div class="headline headline-md">
                    <h4>Related Webcasts</h4>
                </div>
                <ul class="col-xs-12 i360-link-block">
                    <% control RelatedWebcasts %>
                    <li><a href="$Link">$Title</a></li>
                    <% end_control %>
                </ul>
            </div>
        </div>
    </div>
    <% end_if %>
    <% end_if %>

    <% if ShowPopularStories %>
    <% if ArticleCache %>
    <div class="row">
        <div class="col-xs-12">
            $ArticleCache.PopularArticles
        </div>
    </div>
    <% else_if PopularArticles %>
    <div class="row">
        <div class="col-xs-12">
            <div class="magazine-sb-categories margin-bottom-20 clearfix">
                <div class="headline headline-md">
                    <h4>Trending<% if ClassName != HomePage %> in $SectionTitle<% end_if %></h4>
                </div>
                <ul class="col-xs-12 i360-link-block">
                    <% control PopularArticles %>
                    <li><a href="$Link">$Title</a></li>
                    <% end_control %>
                </ul>
            </div>
        </div>
    </div>
    <% end_if %>
    <% end_if %>

    <% if ClassName == "HomePage" %>
    <% if Channels %>
    <div class="row">
        <div class="col-xs-12">
            <div class="magazine-sb-categories margin-bottom-20 clearfix">
                <div class="headline headline-md">
                    <h4>i360Gov News Channels</h4>
                </div>
                <ul class="i360-link-block">
                    <% control Channels %>
                    <li>
                        <a href="$Link">
                            <% if SectionTitle %>$SectionTitle.XML<% else %>$MenuTitle.XML<% end_if %>
                        </a>
                    </li>
                    <% end_control %>
                </ul>
            </div>
        </div>
    </div>
    <% end_if %>
    <% else_if ClassName == "ChannelPage" %>
    <% if AllChildren %>
    <div class="row">
        <div class="col-xs-12">
            <div class="magazine-sb-categories margin-bottom-20 clearfix">
                <div class="headline headline-md">
                    <h4>Also in $SectionTitle</h4>
                </div>
                <ul class="i360-link-block">
                    <% control AllChildren %>
                    <li>
                        <a href="$Link">
                            <% if SectionTitle %>$SectionTitle.XML<% else %>$MenuTitle.XML<% end_if %>
                        </a>
                    </li>
                    <% end_control %>
                </ul>
            </div>
        </div>
    </div>
    <% end_if %>
    <% else_if ClassName == "KnowledgeCenterPage" %>
    <div class="row">
        <div class="col-xs-12">
            <div class="magazine-sb-categories margin-bottom-20 clearfix">
                <div class="headline headline-md">
                    <h4>Also in $Parent.SectionTitle</h4>
                </div>
                <ul class="i360-link-block">
                    <% control Parent.AllChildren %>
                    <li>
                        <a href="$Link">
                            <% if SectionTitle %>$SectionTitle.XML<% else %>$MenuTitle.XML<% end_if %>
                        </a>
                    </li>
                    <% end_control %>
                </ul>
            </div>
        </div>
    </div>
    <% end_if %>

    <% if ShowSponsor && SponsorScrollerItems %>
    <% if ShowNewsletterSignup %>
    <div class="row">
        <div class="col-xs-12">
            <div class="shadow-wrapper margin-bottom-20">
                <div class="tag-box tag-box-v1 tag-box-p10 box-shadow shadow-effect-1">
                    <h2>i360Gov Newsletters</h2>
                    <p>The most significant government policy, business, and technology news and analysis delivered to your inbox.</p>
                    <a href="$ProfilePage.Link" class="btn btn-danger">Subscribe Now</a>
                </div>
            </div>
        </div>
    </div>
    <% end_if %>
    <% end_if %>

    <% if AlchemyAttribution %>
    <div class="row">
        <div class="col-xs-12">
            <div class="shadow-wrapper margin-bottom-20">
                <div class="tag-box tag-box-v1 tag-box-p10 box-shadow shadow-effect-1 text-center">
                    <p>Concept tagging by the <a href="http://www.alchemyapi.com/" title="AlchemyAPI" target="_blank">AlchemyAPI</a></p>
                    <a href="http://www.alchemyapi.com/" title="AlchemyAPI" target="_blank"><img src="mysite/images/alchemyAPI.png"></a>
                </div>
            </div>
        </div>
    </div>
    <% end_if %>
</div>
<% end_if %>