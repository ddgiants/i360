<div class="row margin-bottom-20">
	<div class="col-xs-12">
		<div id="SponsorBlock">
			<div style="width: 300px; height: 58px; $SponsorHeaderBackgroundStyle background-size: cover;">
			</div>
			<div id="SponsorCarousel" class="carousel slide" data-ride="carousel">
				<div class="viewport" style="$SponsorPanelBackgroundStyle background-size: cover;">
					<div class="carousel-inner" role="listbox">
						<% control SponsorScrollerItems %>
						<div class="item<% if First %> active<% end_if %>">
							$Content
						</div>
						<% end_control %>
					</div>
				</div>
				<% if ShowScrollerPagination %>
				<div class="control-nav">
					<ol class="carousel-indicators">
					<% control SponsorScrollerItems %>
						<li data-target="#SponsorCarousel" data-slide-to="{$Pos(0)}"<% if First %> class="active"<% end_if %>></li>
					<% end_control %>
					</ol>
				</div>
				<% end_if %>
			</div>
		</div>
	</div>
</div>