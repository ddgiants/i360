<!--=== Breadcrumbs ===-->
<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left">Login or Register</h1>
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
			<p>Welcome back, $CurrentMember.FirstName!</p>
			<p><a href="Security/logout" class="btn btn-primary">Log me out...</a></p>
			<% else %>
			<% control LoginForm %>
			<% if IncludeFormTag %>
			<form $FormAttributes>
			<% end_if %>
			<h2>Log into my account</h2>
			<fieldset>
				$dataFieldByName(Email).BootstrapFieldHolder
				$dataFieldByName(Password).BootstrapFieldHolder

				<% control dataFieldByName(Remember) %>
				<div class="checkbox">
					<label class="rememberme" for="$id">
						<input id="MemberLoginForm_LoginForm_Remember" type="checkbox" value="1" name="Remember" checked>
						Keep me signed in
					</label>
				</div>
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