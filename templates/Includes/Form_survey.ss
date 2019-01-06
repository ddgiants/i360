<% if IncludeFormTag %>
<form $FormAttributes>
<% end_if %>

	<% if Message %>
	<div class="alert alert-<% if MessageType == "good" %>success<% else_if MessageType == "bad" %>danger<% else %>warning<% end_if %> alert-dismissible">
		<button aria-hidden="true" data-dismiss="alert" class="close" type="button">&times;</button>
		$Message
	</div>
	<% end_if %>

	<fieldset>
		<% if Legend %><legend>$Legend</legend><% end_if %>
		<ol>
		<% control Fields %>
			<% if Type != hidden %>
			<li id="$Name" style="vertical-align: top;">
				<% if Type != fieldgroup %>
				<% if Type == header %>
				$BootstrapField
				<% else_if Type == literal %>
				$BootstrapField
				<% else %>
				<div class="form-group">
					<label for="Form_{$Form.Name}_$Name" style="display: block;">
						$Title
						<% if RightTitle %><br><small>$RightTitle</small><% end_if %>
					</label>
					
					<% if Type != label %>
					$BootstrapField
					<% if Message %><span class="help-block">$Message</span><% end_if %>
					<% end_if %>
				</div>
				<% end_if %>
				<% else %>


				<div class="form-group">
					<% control FieldSet %>

					<% if First %>
					<label for="Form_{$Form.Name}_$Name">
						$Title
						<% if RightTitle %><br><small>$RightTitle</small><% end_if %>
					</label>
					<% else %>
					<div class="form-group">
						<% if Type != checkbox %>
						<span>$Title</span><br />
						<% end_if %>
						<div class="field">
							$BootstrapField
							<% if Type == checkbox %>
							<label for="$id">$Title</label>
							<% end_if %>
							<% if Message %><span class="help-block">$Message</span><% end_if %>
						</div>
					</div>
					<% end_if %>
					<% if Last %>
					<% end_if %>

					<% end_control %>
				</div>

				<% end_if %>
			</li>
			<% end_if %>
		<% end_control %>
		</ol>
	</fieldset>

	<% control HiddenFields %>
	$BootstrapField
	<% end_control %>

	<% if Actions %>
	<div class="Actions">
		<% control Actions %>
			$BootstrapField
		<% end_control %>
	</div>
	<% end_if %>


<% if IncludeFormTag %>
</form>
<% end_if %>
