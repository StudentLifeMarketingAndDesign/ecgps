<div id="content"  class="typography padding">

	<div id="content1">
	<h1>$Title</h1>
	
	<% if Children %>
		<% if AllowSubNav %>
			<div id="sub-navigation">
				<ul>
					<% control Children %>
					<li><a href="$Link">$MenuTitle</a></li>
					
					<% end_control %>
				</ul>
			</div>
		<% end_if %>
	<% end_if %>

	<% if Level(2) %>
	<div id="breadcrumbs">
		$Breadcrumbs
	</div>
	<% end_if %>
	$Content
	$Form
			
	
	</div>
