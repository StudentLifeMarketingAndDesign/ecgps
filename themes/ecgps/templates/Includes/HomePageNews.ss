<div id="featured-news" class="homepage-feature">
						<h2><a href="news/">News and Events</a></h2>
						
						<div id="headline-container">
							<ul>
								<% control BlogPosts(4) %>
									<li>
									<h3><a href="$Link">$Title</a></h3>
									<p class="posted-by"><a href="$Link">Posted on $Date.Format(F j)</a></p>
									<p class="blog-content">$Content.BigSummary(25)</p>
									<p><a href="$Link" class="read-more-link">Read More</a></p>
									<div style="clear: right"></div>
									</li>
								<% end_control %>
							</ul>
							
							<p><a href="{$BaseHref}news/">See all events and news</a></p>
						</div><!-- end headline-container -->
					</div><!-- end featured-news -->

