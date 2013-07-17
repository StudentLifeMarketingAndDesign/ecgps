<% if RandomPersonProfile %>
			<% control RandomPersonProfile %>
			<div id="homepage-featured-student" class="homepage-feature">
				<h2><a href="{$BaseHref}hawkeye-spotlight#{$URLSegment}">Hawkeye Spotlight: $Title</a></h2>
				<div id="homepage-featured-student-content">
					$Image.SetWidth(150) 
					
					<% if PreviewText %>
					$PreviewText
					<% else %>
					$Content.BigSummary(50)	
					<% end_if %>
					<div style="clear:left"></div>
					<ul class="featured-student-nav">
						<li><a href="$Link">Read more about $Title</a></li>
						<li><a href="$BaseHref/hawkeye-spotlight">See everyone in the spotlight</a></li>
					</ul>
					<div style="clear:left"></div>				
				</div>
			</div>
			<% end_control %>
		<% end_if %>