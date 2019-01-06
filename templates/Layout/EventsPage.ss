<!--=== Breadcrumbs ===-->
<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left">$Title</h1>
    </div>
</div>
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->
<div class="container content">		
    <div class="row">
    	<div class="<% if ShowSidebar %>col-md-8<% else %>col-md-12<% end_if %>">
			$Content

			<% if CategoryEvents %>
			<% cached 'Event', Aggregate(Event).Max(LastEdited) %>
			<% control CategoryEvents %>
			<div class="headline headline-md margin-bottom-20 clearfix">
				<h3>$SectionTitle</h3>
			</div>
			<% if Events %>
			<ul class="events-list">
				<% control Events %>
				<li>
					<h3 class="event-title">
						<% if URL %>
						<a href="$URL" title="$Title.ATT" target="_blank">$Title</a>
						<% else %>
						$Title
						<% end_if %>
						<% if Tagline %><small>$Tagline</small><% end_if %>
					</h3>
					$EventDates
					<address>
					$Venue<br />
					$Location<br />
					</address>
				</li>
				<% end_control %>
			</ul>
			<% else %>
			<p>No upcoming events.</p>
			<% end_if %>
			<% end_control %>
			<% end_cached %>
			<% else %>
			<p>No upcoming events.</p>
			<% end_if %>
    	</div>
    	<% include Sidebar %>
    </div>
</div>
<!--=== End Content Part ===-->