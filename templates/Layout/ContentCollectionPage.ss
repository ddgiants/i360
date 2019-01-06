<!--=== Breadcrumbs ===-->
<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left">
            <% if ClassName == "KnowledgeCenterPage" %>
            $Parent.SectionTitle:
            <% end_if %>
            $Title
        </h1>
        <% if ClassName == "KnowledgeCenterPage" %>
        <ul class="pull-right breadcrumb visible-md visible-lg">
            <li><a href="$Parent.Link">$Parent.MenuTitle</a></li>
            <li class="active">$MenuTitle</li>
        </ul>
        <% end_if %>
    </div>
</div>
<!--=== End Breadcrumbs ===-->

<% if 'business' in Channel.HeaderImage %>
<% set channelClass = 'business' %>

<% elif 'government-technology' in Channel.HeaderImage %>
<% set channelClass = 'federalit' %>

<% elif 'local-government' in Channel.HeaderImage %>
<% set channelClass = 'statelocal' %>

<% elif 'us-military' in Channel.HeaderImage %>
<% set channelClass = 'defense' %>

<% elif 'government-health' in Channel.HeaderImage %>
<% set channelClass = 'healthcare' %>

<% elif 'government-energy' in Channel.HeaderImage %>
<% set channelClass = 'energy' %>

<% elif 'education-news' in Channel.HeaderImage %>
<% set channelClass = 'education' %>

<% else %>
<% set channelClass = 'home' %>

<% endif %>

<!--=== Content Part ===-->
<div class="container content">
    <div class="row">
    	<div class="<% if ShowSidebar %>col-md-8 channel-{{ channelClass }}<% else %>col-md-12 channel-{{ channelClass }}<% end_if %>">

            <% if ShowScroller %>
            <% include ContentScroller %>
            <% end_if %>

            <div class="row">
                <% if ShowTopStories %>

                <div class="col-sm-5 channel-{{ channelClass }}">
                    <% cached ArticleCache.TopStoriesKey %>
                    $ArticleCache.TopStories
                    <% end_cached %>
                </div>
                <div class="col-sm-7">
                <% else %>
                <div class="col-md-12">
                <% end_if %>
                    <div class="magazine-sb-categories margin-bottom-20 clearfix channel-{{ channelClass }}">
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
                </div>
            </div>
    	</div>
        <% include Sidebar %>
    </div>

    <% if ShowAnalysis && AnalysisChannels %>
    <div class="row">
        <div class="col-md-12 magazine-sb-categories margin-bottom-20 clearfix channel-{{ channelClass }}">
            <div class="headline headline-md">
                <h2>More News &amp; Analysis</h2>
            </div>
            <div class="margin-bottom-20">
                $Content
            </div>
            
            <div class="row">
                <% control AnalysisChannels %>
                <% cached ArticleCache.AnalysisKey %>
                $ArticleCache.Analysis
                <% end_cached %>
                <% if Last %>
                <div class="clearfix"></div>
                <% else %>
                <% if MultipleOf(2) %>
                <div class="clearfix visible-sm"></div>
                <% end_if %>
                <% if MultipleOf(3) %>
                <div class="clearfix visible-md visible-lg"></div>
                <% end_if %>
                <% end_if %>
                <% end_control %>
            </div>
        </div>
    </div>
    <% end_if %>

    <% if ShowFooter %>
    <div class="row">
        <div class="col-sm-12 col-md-4">
            <div class="row">
                <div class="col-sm-6 col-md-12">
                    <% if ShowFooterQuote %>
                    <% cached QuotationCacheKey %>
                    <div class="shadow-wrapper margin-bottom-20">
                        <blockquote class="hero box-shadow shadow-effect-1">
                            <h2>Say What?</h2>
                            <p>&ldquo;{$Quotation.Quote}&rdquo;</p>
                            <small>
                                <em>$Quotation.Author</em>
                            </small>
                        </blockquote>
                    </div>
                    <% end_cached %>
                    <% end_if %>

                    <% if ShowFooterAd %>
                    <div class="margin-bottom-20 text-center">
                        <div id="FooterAd">
                            <script type="text/javascript">
                                GA_googleFillSlot("$FooterAdCode");
                            </script>
                        </div>
                    </div>
                    <% end_if %>
                </div>

                <div class="col-sm-6 col-md-12">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <h3 class="panel-title">i360Gov Special Reports</h3>
                        </div>
                        <div class="panel-body">
                            <div class="margin-bottom-10">
                                <ul class="i360-link-block">
                                    <% cached 'CCPFooterSpecialReports', URLSegment, LastEdited, Aggregate(Whitepaper).Max(LastEdited) %>
                                    <% control FeaturedReports(8) %>
                                    <li>
                                        <a href="$Link">$Title</a>
                                    </li>
                                    <% end_control %>
                                    <% end_cached %>
                                </ul>
                            </div>
                            <a href="$SpecialReportsHolder.Link" class="btn btn-danger">More Special Reports...</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-md-4">
            <% if ShowFooterWebcasts %>
            <div class="panel panel-red">
                <div class="panel-heading">
                    <h3 class="panel-title">i360Gov Knowledge Center: Webcasts</h3>
                </div>
                <div class="panel-body">
                    <% if FooterWebcasts %>
                    <% cached 'CCPFooterWebcasts', URLSegment, LastEdited, Aggregate(Webcast).Max(LastEdited) %>
                    <% control FooterWebcasts %>
                    <div class="webcast $FirstLast">
                        <h4><a href="$Link" class="title" title="$Title.ATT">$Title</a></h4>
                        <% if InFuture %><p class="time">$Time.format(D), $Time.format(F jS), $Time.format(Y) at $Time.Time EST</p><% end_if %>
                        <p>$Description.LimitWordCount(35)</p>
                    </div>
                    <% end_control %>
                    <% end_cached %>
                    <% end_if %>
                    <div>
                        <a href="$WebcastHolder.Link" class="btn btn-danger">More Webcasts...</a>
                    </div>
                </div>
            </div>
            <% end_if %>
        </div>

        <div class="col-sm-6 col-md-4">
            <% if ShowFooterReport %>
            <div class="shadow-wrapper margin-bottom-20">
                <div class="tag-box tag-box-v1 tag-box-p10 box-shadow shadow-effect-1 margin-bottom-10">
                    <% control SiteConfig %>
                    <h2><a href="$SpecialReportLink">$SpecialReportTitle</a></h2>
                    $SpecialReportContent
                    <a href="$SpecialReportLink" class="btn btn-danger">Download Now</a>
                    <% end_control %>
                </div>
            </div>
            <% end_if %>

            <div class="panel panel-red">
                <div class="panel-heading">
                    <h3 class="panel-title">Industry Whitepapers</h3>
                </div>
                <div class="panel-body">
                    <div class="margin-bottom-10">
                        <ul class="i360-link-block">
                            <% cached 'CCPFooterWhitepapers', URLSegment, LastEdited, Aggregate(Whitepaper).Max(LastEdited) %>
                            <% control FooterWhitepapers %>
                            <li>
                                <a href="$Link">$Title</a>
                            </li>
                            <% end_control %>
                            <% end_cached %>
                        </ul>
                    </div>
                    <a href="$WhitepaperHolder.Link" class="btn btn-danger">More Whitepapers...</a>
                </div>
            </div>
        </div>

    </div>
    <% end_if %>
</div>
<!--=== End Content Part ===-->
