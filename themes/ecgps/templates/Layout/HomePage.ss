<link rel="stylesheet" type="text/css" href="{$ThemeDir}/css/nivo-slider.css"> 
    <link rel="stylesheet" href="{$ThemeDir}/css/nivo-pascal/pascal.css" type="text/css" media="screen" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="{$BaseHref}/mysite/javascript/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
</script>
<div id="content"  class="typography">
							
						

	<div id="homepage-tagline-container" >
	
		<div id="homepage-tagline">
		$Tagline
		</div>
		
		<div id="tagline-link-container">
		
			<a class="tagline-link" href="{$BaseHref}about/"><span>learn more</span></a>
			<a class="tagline-link" href="{$BaseHref}funding-and-grants/"><span>see our grants</span></a>
			<a class="tagline-link" href="{$BaseHref}news/ecgps-council-meetings/"><span>meetings</span></a>

	
		</div>
		<div class="clear"></div>	
		
	</div>
		<div id="homepage-feature-container">
		
			<div id="homepage-left-column">	
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

<% if Children %>
			<div id="slider" class="nivoSlider theme-pascal">
			
				<% control Children %>
					<% if LinkURL %>
						<a href="$LinkURL"><img src="$Image.URL" title="#htmlcaption-{$Pos}" /></a>
					<% else %>
						<img src="$Image.URL" title="#htmlcaption-{$Pos}" />
					<% end_if %>
				<% end_control %>
			
			
			</div>
			<% control Children %>
			
			<div id="htmlcaption-{$Pos}" class="nivo-html-caption">
				<% if LinkURL %>
    			<a href="$LinkURL" target="_blank">$Caption</a>
    			<% else %>
    			$Caption
    			<% end_if %>
    			
    
			</div>
			<% end_control %>
		<% end_if %>	

			
		<div style="clear: both"></div>
				
	
				<script src="http://widgets.twimg.com/j/2/widget.js"></script>
<script type="text/javascript">
new TWTR.Widget({
  version: 2,
  type: 'profile',
  rpp: 4,
  interval: 6000,
  width: 500,
  height: 215,
  theme: {
    shell: {
      background: '#e0c24a',
      color: '#ffffff'
    },
    tweets: {
      background: '#ffffff',
      color: '#686868',
      links: '#213671'
    }
  },
  features: {
    scrollbar: false,
    loop: false,
    live: true,
    hashtags: true,
    timestamp: true,
    avatars: false,
    behavior: 'all'
  }
}).render().setUser('ecgps').start();
</script>

			
	<div id="homepage-social-media">
		<!--<iframe src="http://www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Fpages%2FExecutive-Council-of-Graduate-Professional-Students-ECGPS%128878975027&amp;width=500&amp;colorscheme=light&amp;show_faces=false&amp;border_color&amp;stream=true&amp;header=false&amp;height=315" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:500px; height:315px; background: white; float: left;" allowtransparency="false"></iframe>-->
<div class="clear"></div>
	</div><!-- end homepage-social-media -->
	<div id="homepage-features2">
		<!--<div id="homepage-current-initiatives" class="homepage-feature">
			<h2><a href="#">Current Initiatives</a></h2>
			<ul id="initiative-list">
			<li><a href="#">Initiative 1</a></li>
			<li><a href="#">Initiative 2</a></li>
			<li><a href="#">Initiative 3</a></li>
			<li><a href="#" class="last">Initiative 4</a></li>

			</ul>
		</div>-->
	
		<div id="homepage-contact-form" class="homepage-feature">
			<h2 class="comments-header">Comments, Questions?</h2>
			<div id="form-container">
				<p>If you'd like to request a grant or funding, please take a look at our <a href="{$BaseHref}funding/">grants and funding information</a>.</p>
			$ContactForm
		</div>		
		</div><!-- end homepage-contact-form -->
		<div class="clear"></div>

	</div><!-- end homepage-features2 -->

			
	</div><!-- end homepage-left-column -->

<div id="homepage-right-column">
	
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
	
	
	
	</div><!-- end homepage-right-column -->	
				
		<div class="clear"></div>
			</div>
</div>
