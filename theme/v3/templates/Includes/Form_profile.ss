<% if IncludeFormTag %>
<form $FormAttributes>
<% end_if %>
	<% if Message %>
	<div class="alert alert-<% if MessageType == "good" %>success<% else_if MessageType == "bad" %>danger<% else %>warning<% end_if %> alert-dismissible">
		<button aria-hidden="true" data-dismiss="alert" class="close" type="button">&times;</button>
		$Message
	</div>
	<% end_if %>

	<h2>Login Information</h2>
	<fieldset>
		$dataFieldByName(Email).BootstrapFieldHolder
		$dataFieldByName(Password).BootstrapFieldHolder
	</fieldset>

	<h2>Your Business Information</h2>
	<fieldset>
		$datafieldByName(FirstName).BootstrapFieldHolder
		$datafieldByName(Surname).BootstrapFieldHolder
		$datafieldByName(JobTitle).BootstrapFieldHolder
		$datafieldByName(Organization).BootstrapFieldHolder
		$datafieldByName(Address).BootstrapFieldHolder
		$datafieldByName(City).BootstrapFieldHolder
		$datafieldByName(State).BootstrapFieldHolder
		$datafieldByName(Country).BootstrapFieldHolder
		$datafieldByName(ZipCode).BootstrapFieldHolder
		$datafieldByName(PhoneNumber).BootstrapFieldHolder
	</fieldset>

	<h2>Personal/Organization</h2>
	<% if CurrentMember %><% else %>
	<cite>Please complete this brief section to help us serve you better.</cite>
	<% end_if %>
	<fieldset>
		$datafieldByName(JobSector).BootstrapFieldHolder
		$datafieldByName(JobField).BootstrapFieldHolder
		$datafieldByName(JobCategory).BootstrapFieldHolder
		$datafieldByName(Employees).BootstrapFieldHolder
	</fieldset>

	<h2>Topics of Interest</h2>
	<fieldset>
		$dataFieldByName(Categories).BootstrapFieldHolder
	</fieldset>

	<% if CurrentMember %>
	<h2>Communications</h2>
	<% else %>
	<h2>Subscribe to i360Gov e-newsletters and mailings</h2>
	<p>i360Gov email newsletters are designed to keep government business and technology leaders expertly informed while saving you time. Subscribe today!</p>
	<h3>Choose your newsletters</h3>
	<% end_if %>
	<fieldset>
		$dataFieldByName(Groups).BootstrapFieldHolder

		$datafieldByName(PreferredEmailFormat).BootstrapFieldHolder

		<p>i360Gov occasionally produces custom content on topics of particular importance.</p>
		$datafieldByName(CustomReports).BootstrapFieldHolder

		<p>As an added benefit, would you like to receive 3rd party offers about new products/services and discounted offers via email?</p>
		$datafieldByName(ThirdPartyOffers).BootstrapFieldHolder
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
