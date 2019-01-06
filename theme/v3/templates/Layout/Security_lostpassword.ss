<!--=== Breadcrumbs ===-->
<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left">Welcome to i360Gov!</h1>
    </div>
</div>
<!--=== End Breadcrumbs ===-->

<div class="img-wide">
    <img src="{$ThemeDir}/img/wide/aerial.jpg" class="img-responsive" alt="D.C." />
</div>

<!--=== Content Part ===-->
<div class="container content">		
    <div class="row">
    	<div class="col-md-6">
			<% if CurrentMember %>
			<h2 class="redUnderline">You are already logged in...</h2>
			<p>If you would like to change your password, you can do so by <a href="$ProfilePage.Link">editing your profile</a>.</p>
			<% else %>
			<% control Form %>
			<% if IncludeFormTag %>
			<form $FormAttributes>
			<% end_if %>
			<h2>I forgot my password...</h2>
			<fieldset>
				<div class="form-group">
					<% control dataFieldByName(Email) %>
					<label for="MemberLoginForm_{$Form.Name}_$Name">$Name</label>
					$BootstrapField
					<% end_control %>
					<p class="help-block">Enter your email address above and instructions will be sent to your account.</p>
				</div>
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
			<% end_control %>
			<% end_if %>
    	</div>
    	<div class="col-md-6">
			<h2>Not Registered? <a href="$ProfilePage.Link">Register now!</a></h2>
			<p>By registering, you'll receive instant access to our vast network of government business and technology resources including:</p>
			<ul>
				<li><strong>Register once</strong> and get easy one-click downloads for all premium content</li>
				<li><strong>i360Gov Proof Points</strong> research reports for government policy and IT pros</li>
				<li><strong>Access to white papers, case studies and special reports</strong> in the i360Gov Digital Library</li>
				<li><strong>Topical Webcasts and virtual events</strong> from i360Gov and our partners</li>
			</ul>
			<p><a href="$ProfilePage.Link" class="btn btn-danger">Register now!</a></p>
    	</div>
    </div>
</div>
<!--=== End Content Part ===-->