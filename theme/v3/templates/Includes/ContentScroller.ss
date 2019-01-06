<div class="row hidden-xs">
	<div class="col-sm-12">
		<div id="ContentScroller" class="carousel slide">
			<div class="viewport">
				<div class="carousel-inner" role="listbox">
					<% control ContentScroller %>
					<div class="item<% if First %> active<% end_if %>">
						<a href="$Link">
						<% if MainImage %>
						$MainImage.SetSize(750,335)
						<% else %>
						<% if ItemClass = Webcast %>
						<img src="$ThemeDir/img/placeholder/webcast.jpg" alt="Webcast" />
						<% else_if ItemClass = Whitepaper %>
						<img src="$ThemeDir/img/placeholder/whitepaper.jpg" alt="Whitepaper" />
						<% else %>
						<img src="$ThemeDir/img/placeholder/article.jpg" alt="Article" />
						<% end_if %>
						<% end_if %>
						</a>
						<div class="carousel-caption">
							<% if ItemClass = Webcast %>
							<h3>
								<a href="$Link" title="$Title.ATT">$Title.XML</a>
								<% if InFuture %><br /><small>$Time</small><% end_if %>
							</h3>
							<% else %>
							<h3>
								<a href="$Link" title="$Title.ATT">$Title.XML</a>
							</h3>
							<% end_if %>
							$Content
						</div>
						<div class="content-type">
							<% if ItemType == Webcast %>$WebcastType <% end_if %>$ItemType
						</div>
					</div>
					<% end_control %>
				</div>
				<a class="left carousel-control" href="#ContentScroller" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#ContentScroller" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
			<div class="control-nav">
				<ol class="carousel-indicators">
					<% control ContentScroller %>
					<li data-target="#ContentScroller" data-slide-to="$Pos(0)"<% if First %> class="active"<% end_if %>></li>
					<% end_control %>
				</ol>
			</div>
		</div>
	</div>
</div>