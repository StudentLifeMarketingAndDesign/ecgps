<div id="content"  class="typography">

	<div id="content1">
	<h1>$Title</h1>
	<% control Children %>
		<div class="featured-student-listing">
			<h2><a href="$Link">$Title</a></h2>
			<h3>$School</h3>
			<% if Image %>
				<a href="$Link">
					<% control Image.SetWidth(200) %>
						<img src="$URL" class="right" />
					<% end_control %> 
				</a>
			<% end_if %>
			
			<% if PreviewText %>
				$PreviewText
			<% else %>
				$Content.BigSummary(50)	
			<% end_if %>
			<div style="clear: right"></div>
		</div>
		
	<% end_control %>
	$Form
			
	
	</div>
	

	
	<div class="clear"></div>
	
</div>