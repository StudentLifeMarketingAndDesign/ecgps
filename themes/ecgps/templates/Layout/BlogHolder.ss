
<div id="content"  class="typography padding">
	
	<div id="content1">
		<% if SelectedTag = event %><h1>Events Calendar</h1><% else %><h1>News</h1><% end_if %>

		<div class="row-fluid">
			<div class="span8">
				<div class="">
				<% include BreadCrumbs %>
			
				<% if SelectedDate %>
					<h3><% _t('VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedDate.Month $SelectedDate.Year</h3>
				<% end_if %>
				
				<% if BlogEntries %>
					<% control BlogEntries %>
							<% include BlogSummary %>
					<% end_control %>
				<% else %>
					<h3><% _t('NOENTRIES', 'There are no blog entries') %></h3>
				<% end_if %>
				
				<% include BlogPagination %>
				</div>
			</div>
			<div class="span4">
				<div class="padding">
					<% include BlogSideBar %>
				</div>
			</div>
			</div>
	</div>


