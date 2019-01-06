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
		<% control Fields %>
			<% if Type != hidden %>
			<div class="form-group">
				<label for="Form_{$Form.Name}_$Name">$Title</label>
				$BootstrapField
				<% if Message %><span class="help-block">$Message</span><% end_if %>
			</div>
			<% end_if %>
		<% end_control %>
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
