<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>$Title &raquo; $SiteConfig.Title</title>
    <% base_tag %>
    $MetaTags(false)
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="google-site-verification" content="1_BtlgLaTFv0waO5HY7fGtsCQ2t3DCbIYJyz4IoRw5E" />
    <script type="text/javascript" src="http://partner.googleadservices.com/gampad/google_service.js"></script>

    <script type="text/javascript">
        GS_googleAddAdSenseService("ca-pub-5544061894570095");
        GS_googleEnableAllServices();
    </script>

    <script type="text/javascript">
        <% if ShowLeaderboardAd %>GA_googleAddSlot("ca-pub-5544061894570095", "$LeaderboardAdCode");<% end_if %>
        <% if ShowSidebarAd %>GA_googleAddSlot("ca-pub-5544061894570095", "$SidebarAdCode");<% end_if %>
        <% if ShowFooterAd %>GA_googleAddSlot("ca-pub-5544061894570095", "$FooterAdCode");<% end_if %>
    </script>

    <script type="text/javascript">
        GA_googleFetchAds();
    </script>

    <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-8827957-1']);
        _gaq.push(['_trackPageview']);

        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
    </script>

    <link rel="shortcut icon" href="favicon.ico">
    <% require themedCSS(style) %>
    <% require themedCSS(theme-default) %>
    <% require themedCSS(custom) %>
    <!--[if lt IE 9]>
    <script src="mysite/thirdparty/plugins/respond.js"></script>
    <script src="mysite/thirdparty/plugins/html5shiv.js"></script>
    <![endif]-->
</head> 

<body class="boxed-layout container">

<% if ShowLeaderboardAd %>
<div id="leaderboard" class="hidden-xs">
    <script type="text/javascript">
        GA_googleFillSlot("$LeaderboardAdCode");
    </script>
</div>
<% end_if %>

<div class="wrapper">
    <!--=== Header ===-->    
    <div class="header-v4">
        <!-- Topbar -->
        <div class="topbar-v1">
            <div class="container">
                <div class="row">
                    <div class="hidden-xs hidden-sm col-md-4">
                        <% if Channels %>
                        <% cached 'PageTopBar', ID %>
                        <div id="SiteSelectorDropdown" class="dropdown">
                            <button id="SiteSelector" class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <% if SiteDomain %>$SiteDomain<% else %>i360Gov.com<% end_if %>
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="SiteSelector">
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="$BaseHref">i360Gov.com</a></li>
                                <% control Channels %>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="$Link">$SiteDomain</a></li>
                                <% end_control %>
                            </ul>
                        </div>
                        <% end_cached %>
                        <% end_if %>
                    </div>
                    <div class="col-sm-12 col-md-4 top-v1-date">
                        $Now.Format(l), $Now.Format(F j), $Now.Format(Y)
                    </div>
                    <div class="col-sm-12 col-md-4">
                        <ul class="list-inline top-v1-data">
                            <% control Page(contact-us) %><li><a href="$Link">$MenuTitle</a></li><% end_control %>
                            <% if CurrentMember %>
                            <li><a href="$ProfilePage.Link">Profile</a></li>
                            <li><a href="Security/logout">Logout</a></li>
                            <% else %>
                            <li><a href="$ProfilePage.Link">Join</a></li>
                            <% if URLSegment == "Security" %>
                            <li><a href="Security/login?BackURL=/">Login</a></li>
                            <% else %>
                            <li><a href="Security/login?BackURL=$Top.Link.ATT">Login</a></li>
                            <% end_if %>
                            <% end_if %>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Topbar -->

        <!-- Navbar -->
        <% cached 'PageMainMenu', ID %>
        <div class="navbar navbar-default yamm mega-menu i360nav" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <div class="row">
                        <div class="col-md-12">
                            <% if Channel %>
                            <a class="navbar-brand hidden-xs" href="$Channel.Link">
                                <% if Channel.HeaderImage %>
                                <img src="$Channel.HeaderImage.Link" alt="$Channel.Title.ATT" title="$Channel.Title.ATT" />
                                <% else %>
                                <img src="{$ThemeDir}/img/headers/header-default.png" alt="$HomePage.Title.ATT" title="$HomePage.Title.ATT" />
                                <% end_if %>
                            </a>
                            <a class="navbar-brand visible-xs" href="$Channel.Link">
                                <img src="{$ThemeDir}/img/headers/header-default.png" alt="$HomePage.Title.ATT" title="$HomePage.Title.ATT" />
                            </a>
                            <% else %>
                            <a class="navbar-brand" href="$HomePage.Link">
                                <% if HomePage.HeaderImage %>
                                <img src="$HomePage.HeaderImage.Link" alt="$HomePage.Title.ATT" title="$HomePage.Title.ATT" />
                                <% else %>
                                <img src="{$ThemeDir}/img/headers/header-default.png" alt="$HomePage.Title.ATT" title="$HomePage.Title.ATT" />
                                <% end_if %>
                            </a>
                            <% end_if %>
                        </div>
                    </div>    
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                        <span class="full-width-menu">i360Gov</span>
                        <span class="icon-toggle">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </span>    
                    </button>
                </div>
            </div>    

            <div class="clearfix"></div>
            
            <div class="collapse navbar-collapse navbar-responsive-collapse navbar-plain">
                <div class="container visible-md visible-lg">
                    <ul class="nav navbar-nav">
                        <% control Menu(1) %>
                        <% if MenuTitle == "News" %>
                        <% else %>
                        <li<% if LinkingMode == "current" %> class="active"<% end_if %>>
                            <a href="$Link">$MenuTitle.XML</a>
                        </li>
                        <% end_if %>
                        <% end_control %>
                        <li<% if Articles %> class="active"<% end_if %>><a href="/articles/archive/" title="View the article archive">Archive</a></li>
                    </ul>
                </div>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-responsive-collapse">
                <div class="container">
                    <% if Channels %>
                    <ul class="nav navbar-nav visible-md visible-lg">
                        <% control Channels %>
                        <li class="dropdown yamm-fw mega-menu-fullwidth<% if LinkingMode == "current" %> active<% else_if LinkingMode == "section" %> active<% end_if %>">
                            <a href="$Link">
                                $MenuTitle.XML
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <div class="yamm-content">
                                            <div class="row">
                                                <div class="col-xs-2">
                                                    <img src="$RandomImage.URL" class="img-responsive" alt="" />
                                                </div>
                                                <div class="col-xs-10">
                                                    <h2 style="border-bottom: 1px solid #9e0b0f;">$SectionTitle</h2>
                                                    <ul class="list-inline">
                                                        <li>
                                                            <a href="$Link">Home</a>
                                                        </li>
                                                        <% control AllChildren %>
                                                        <li>
                                                            <a href="$Link">$MenuTitle.XML</a>
                                                        </li>
                                                        <% end_control %>
                                                    </ul>
                                                </div>
                                            </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <% end_control %>
                    </ul>
                    <ul class="nav navbar-nav visible-xs visible-sm">
                        <% control Menu(1) %>
                        <% if MenuTitle == "News" %>
                        <li class="dropdown<% if LinkingMode == "current" %> active<% else_if LinkingMode == "section" %> active<% end_if %>">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                $MenuTitle.XML
                            </a>
                            <ul class="dropdown-menu">
                                <% control Channels %>
                                <li<% if AllChildren %> class="dropdown-submenu"<% end_if %>>
                                    <a href="$Link">
                                        <% if SectionTitle %>$SectionTitle.XML<% else %>$MenuTitle.XML<% end_if %>
                                    </a>
                                    <% if AllChildren %>
                                    <ul class="dropdown-menu">
                                        <% control AllChildren %>
                                        <li>
                                            <a href="$Link">
                                                <% if SectionTitle %>$SectionTitle.XML<% else %>$MenuTitle.XML<% end_if %>
                                            </a>
                                        </li>
                                        <% end_control %>
                                    </ul>
                                    <% end_if %>
                                </li>
                                <% end_control %>
                            </ul>
                        </li>
                        <% else %>
                        <li<% if LinkingMode == "current" %> class="active"<% end_if %>>
                            <a href="$Link">
                                $MenuTitle.XML
                            </a>
                        </li>
                        <% end_if %>
                        <% end_control %>
                        <li<% if Articles %> class="active"<% end_if %>><a href="/articles/archive/" title="View the article archive">Archive</a></li>
                    </ul>
                    <% end_if %>
                    <!-- Search Block -->
                    <ul class="nav navbar-nav navbar-border-bottom navbar-right">
                        <li class="no-border">
                            <ul class="social-icons social-icons-color">
                                <li><a href="http://www.facebook.com/pages/Raleigh-NC/i360Govcom/142203794714?ref=nf" data-original-title="Facebook" class="social_facebook"></a></li>
                                <li><a href="https://www.google.com/+I360govnews" data-original-title="Google+" class="social_googleplus"></a></li>
                                <li><a href="http://twitter.com/i360gov" data-original-title="Twitter" class="social_twitter"></a></li>
                                <li><a href="http://www.linkedin.com/company/i360gov%2Dinc%2E" data-original-title="Linkedin" class="social_linkedin"></a></li>
                            </ul>
                        </li>
                        <li class="no-border">
                            <i class="search fa fa-search search-btn"></i>
                            <div class="search-open">
                                <form id="formsearch" name="formsearch" action="$SearchPage.Link">
                                    <div class="input-group animated fadeInDown">
                                        <input name="q" type="text" class="form-control" placeholder="Search">
                                        <span class="input-group-btn">
                                            <button class="btn-u" type="submit">Go</button>
                                        </span>
                                    </div>
                                </form>
                            </div>    
                        </li>

                    </ul>
                    <!-- End Search Block -->
                </div>
            </div><!--/navbar-collapse-->
        </div>
        <% end_cached %>
        <!-- End Navbar -->
    </div>
    <!--=== End Header ===-->    

    <!--=== Content Part ===-->
    $Layout
    <!--=== End Content Part ===-->

    <!--=== Footer ===-->
    <div class="footer-default">
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-6 md-margin-bottom-40">
                        <div class="headline">
                            <h2>About</h2>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <% if HeaderClass == education %>
                                <% control Page(education-news) %>
                                <a href="$Link" title="Keeping policy, business and technology leaders in education expertly informed."><img src="$ThemeDir/images/footer_logo_education.png" class="margin-bottom-30 margin-top-5" alt="i360Edu" /></a>
                                <% end_control %>
                                <% else %>
                                <a href="$BaseHref" title="Keeping busy government business and technology leaders expertly informed."><img src="$ThemeDir/img/footer_logo.png" class="margin-bottom-30 margin-top-5" alt="i360Gov" /></a>
                                <% end_if %>
                                <br />
                                <% control Page(2012-magnum-opus-award) %><a href="$Link"><img src="$ThemeDir/img/2012_magnum_opus_footer.png" class="margin-bottom-10" title="$Title.ATT" alt="$MenuTitle.ATT" /></a><% end_control %><br />
                            </div>
                            <div class="col-md-8 md-margin-bottom-40">
                                <!-- About -->
                                <p>
                                    <% if HeaderClass == education %>
                                    <em>i360Edu</em> is an intelligent network of websites and newsletters that provides
                                    policy, business and technology leaders in education with a single destination for the most
                                    important news and analysis regarding their strategies and initiatives.
                                    <% else %>
                                    <em>i360Gov</em> is an intelligent network of websites and e-newsletters that provides
                                    government business, policy and technology leaders with a single destination for the most
                                    important news and analysis regarding their agency strategies and initiatives.
                                    <% end_if %>
                                    <!-- End Social Links -->
                                </p>    
                                <!-- End About -->

                                <!-- Social Links -->
                                <ul class="social-icons">
                                    <% if RssFeedListPage %><li><a href="$RssFeedListPage.Link" data-original-title="Feed" class="social_rss"></a></li><% end_if %>
                                    <li><a href="http://www.facebook.com/pages/Raleigh-NC/i360Govcom/142203794714?ref=nf" data-original-title="Facebook" class="social_facebook"></a></li>
                                    <li><a href="https://www.google.com/+I360govnews" data-original-title="Google+" class="social_googleplus"></a></li>
                                    <li><a href="http://twitter.com/i360gov" data-original-title="Twitter" class="social_twitter"></a></li>
                                    <li><a href="http://www.linkedin.com/company/i360gov%2Dinc%2E" data-original-title="Linkedin" class="social_linkedin"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div><!--/col-md-4-->  
                    
                    <div class="col-sm-6 col-md-3 md-margin-bottom-40">
                        <!-- Contact Us -->
                        <div class="headline"><h2>Contact Us</h2></div> 
                        <p class="md-margin-bottom-40">
                            Telephone: 202.760.2280<br />
                            Toll Free: 855.i360.Gov<br />
                            Fax: 202.697.5045
                        </p>
                        <!-- End Contact Us -->
                    </div><!--/col-md-4-->

                    <div class="col-sm-6 col-md-3">
                        <!-- Newsletter -->
                        <div class="headline"><h2>Newsletters</h2></div>
                        <p class="margin-bottom-20">
                            The most significant government policy, business, and technology news and analysis delivered to your inbox.
                        </p>
                        <% control Page(profile) %><a href="$Link" class="btn btn-danger">Subscribe Now</a><% end_control %>
                        <!-- End Newsletter -->
                    </div><!--/col-md-4-->
                </div>
            </div> 
        </div><!--/footer-->
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-sm-10">                   
                        <p>
                            Copyright &copy; 2009-$Now.Format(Y) i360Gov, Inc.
                            <br class="tiny" />
                            <% control Page(privacy-policy) %>
                            <a href="$Link">$MenuTitle</a>
                            <% end_control %>
                            |
                            <% control Page(advertising) %>
                            <a href="$Link">$MenuTitle</a>
                            <% end_control %>
                            |
                            <% control Page(contact-us) %>
                            <a href="$Link">$MenuTitle</a>
                            <% end_control %>
                        </p>
                    </div>
                    <div class="col-sm-2 hidden-xs">  
                        <a href="$BaseHref">
                            <img class="pull-right" id="logo-footer" src="{$ThemeDir}/img/i360_logo_small_dblinv.png" alt="">
                        </a>
                    </div>
                </div>
            </div> 
        </div><!--/copyright--> 
    </div>
    <!--=== End Footer ===-->
</div><!--/wrapper-->

<% require javascript(themes/v3/js/app.js) %>
<script type="text/javascript"></script>
</body>
</html> 