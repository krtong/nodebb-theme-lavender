<div class="row home" itemscope itemtype="http://www.schema.org/ItemList">
	<div class="col-lg-9 col-sm-12">
		<div class="row">
			<!-- BEGIN categories -->
			<div class="col-md-3 col-sm-6 col-xs-12 category-item">
				<meta itemprop="name" content="{categories.name}">

				<div class="category-icon">
					<div id="category-{categories.cid}" class="category-header category-header-image-{categories.imageClass}" style="background: {categories.background}; color: {categories.color};">
						<!-- IF !categories.link -->
						<span class="badge {categories.badgeclass}">{categories.topic_count} {categories.name}</span>
						<!-- ENDIF !categories.link -->

						<!-- IF categories.link -->
						<a style="color: {categories.color};" href="{categories.link}" itemprop="url" target="_blank">
						<!-- ELSE -->
						<a style="color: {categories.color};" href="{relative_path}/category/{categories.slug}" itemprop="url">
						<!-- ENDIF categories.link -->
						<div><i class="fa {categories.icon} fa-4x"></i></div>
					  </a>
				  </div>
					<div class="category-box">
						<!-- IF categories.link -->
						<a href="{categories.link}" itemprop="url" target="_blank">
						<!-- ELSE -->
						<a href="category/{categories.slug}" itemprop="url">
						<!-- ENDIF categories.link-->
							
						</a>
						<!-- IF !categories.link -->
					  <!-- BEGIN posts -->
						<div class="post-preview clearfix">
							<a style="color: {categories.color};" href="./user/{categories.posts.userslug}">
								<div class="clear:both"><img src="{categories.posts.picture}" title="{categories.posts.username}" class="pull-right user-img" /><a href="topic/{categories.posts.topicSlug}#{categories.posts.pid}">[[category:posted]] </a><span class="timeago" title="{categories.posts.relativeTime}"></span></div><br/>
							</a>

							<p>
								
								<a href="topic/{categories.posts.topicSlug}#{categories.posts.pid}">{categories.posts.content}</a>
							</p>
							<span class="pull-right">
								
								
							</span>
						</div>
						<!-- END posts -->
						<!-- ENDIF !categories.link -->
					</div>
				</div>
			</div>
			<!-- END categories -->
		</div>
	</div>

	<div class="col-lg-3 col-sm-12 {show_sidebar} category category-sidebar">
		<div class="panel panel-default {motd_class}">
			<div class="panel-heading">MOTD</div>
			<div class="panel-body">
				<div class="motd">
					{motd}
				</div>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">[[category:sidebar.recent_replies]]</div>
			<div class="panel-body recent-replies">
				<ul id="category_recent_replies"></ul>
			</div>
		</div>

		<div class="panel panel-default">
			<div class="panel-heading">Forum Stats</div>
			<div class="panel-body">
				<div class="row footer-stats">
					<div class="col-md-3 col-xs-6">
						<div class="stats-card">
							<h2><span id="stats_online"></span><br /><small>[[footer:stats.online]]</small></h2>
						</div>
					</div>
					<div class="col-md-3 col-xs-6">
						<div class="stats-card">
							<h2><span id="stats_users"></span><br /><small>[[footer:stats.users]]</small></h2>
						</div>
					</div>
					<div class="col-md-3 col-xs-6">
						<div class="stats-card">
							<h2><span id="stats_topics"></span><br /><small>[[footer:stats.topics]]</small></h2>
						</div>
					</div>
					<div class="col-md-3 col-xs-6">
						<div class="stats-card">
							<h2><span id="stats_posts"></span><br /><small>[[footer:stats.posts]]</small></h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
