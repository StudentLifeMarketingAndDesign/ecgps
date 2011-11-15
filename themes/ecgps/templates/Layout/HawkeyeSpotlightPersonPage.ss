<div id="content"  class="typography">

	<div id="content1">
	<p><a href="{$BaseHref}/hawkeye-spotlight/">See everyone in the Hawkeye Spotlight</a></p>
	<h1>$Title</h1>
	<h2>$School</h2>
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

	
	
	<% control Image %>
		<img src="$URL" class="right"/>
	<% end_control %>
	
	$Content 

	$Form
			
	
	</div>
	

	
	<div class="clear"></div>
	
</div>