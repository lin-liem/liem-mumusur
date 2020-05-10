<div class="card article-list  is-hidden-touch">
	<div class="card-content article card-category-content category-box">
		<div class="columns is-marginless is-paddingless is-mobile ">
			<div class="column is-4 is-paddingless category-img">
				<div class="card-image">
					<a href="${post.fullPath!}">
						<#if post.thumbnail?? && post.thumbnail!=''>
							<img class="thumbnail" src="${post.thumbnail!}" alt="${post.title!}">
						<#else>
						  <img class="thumbnail" src="https://iph.href.lu/400x300?text=公告(占位图)" alt="${post.title!}">
						</#if>
					</a>
				</div>
			</div>
			<div class="column is-8 category-content-padding">
				<#if post.summary?? && post.summary!=''>
					<div class="level is-size-7 is-uppercase is-mobile has-text-justified is-marginless">
						<div class="level level-left article-meta is-size-7 is-uppercase is-overflow-x-auto">
							<span class="has-text-grey">${user.nickname!"博主"}&nbsp;&nbsp;&nbsp;<@global.timeline datetime=post.createTime/></span>
						</div>
						<div class="level level-right article-meta is-size-7 is-uppercase is-overflow-x-auto">
							<time class="has-text-grey" datetime="${post.createTime!}">${post.createTime?string('yyyy-MM-dd
					HH:mm')}</time>
						</div>
					</div>
				</#if>
			  
				<h1 class="title is-size-5 is-size-5-mobile has-text-weight-bold is-marginless overflow-1-hide">
					<a class="has-link-black-ter" href="${post.fullPath!}">${post.title!}</a>
				</h1>
				<#-- 文章概要 -->
				<#if post.summary?? && post.summary!=''>
					<div class="content more-content category-content ">${post.summary!}</div>
				</#if>
				<#if post.summary?? && post.summary!=''>
					<#-- 文章的基本信息 -->
					<div class="level is-size-7 is-uppercase is-mobile has-text-justified">
						<div class="level-left">
							<#if post.categories?? && post.categories?size gt 0>
								<div class="level-item buttons are-small">
									<#list post.categories as category>
										<a class="button is-small is-light" href="${category.fullPath!}">${category.name!}</a>&nbsp;
									</#list>
								</div>
							</#if>
						</div>
						<div class="level level-right is-size-7 is-uppercase is-overflow-x-auto">
							<span class="has-text-grey-light"><i class="fas fa-user mr-2"></i>&nbsp;&nbsp;${user.nickname!"博主"}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
							<span class="has-text-grey-light"><i class="fas fa-eye mr-2"></i>&nbsp;&nbsp;${post.visits!}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
							<span class="has-text-grey-light"><i class="fas fa-comments mr-2"></i>&nbsp;&nbsp;${post.commentCount}</span>
						</div>
					</div>
				</#if>
			</div>
		</div>
	</div>
</div>

<#-- 手机端 -->
<div class="card article-list is-hidden-desktop">
	<div class="card-content article card-category-content">
		<h1 class="title is-size-5 is-size-5-mobile has-text-weight-bold bottom-margin-075rem">
			<a class="has-link-black-ter overflow-1-hide" href="${post.fullPath!}">${post.title!}</a>
		</h1>
		
		<div class="columns is-marginless is-paddingless is-mobile ">
			<div class="column is-4 is-paddingless category-img-mobile">
				<div class="card-image">
					<a href="${post.fullPath!}">
						<#if post.thumbnail?? && post.thumbnail!=''>
							<img class="thumbnail" src="${post.thumbnail!}" alt="${post.title!}">
						<#else>
						  <img class="thumbnail" src="https://iph.href.lu/400x300?text=公告(占位图)" alt="${post.title!}">
						</#if>
					</a>
				</div>
			</div>
			<div class="column is-8 category-content-padding-mobile">
				<#-- 文章概要 -->
				<#if post.summary?? && post.summary!=''>
					<div class="content overflow-3-hide margin-bottom-05rem">${post.summary!}</div>
				</#if>
				<#if post.summary?? && post.summary!=''>
					<#-- 文章的基本信息 -->
					<div class="level is-size-7 is-uppercase is-mobile has-text-justified">
						<div class="level level-left is-size-7 is-uppercase is-overflow-x-auto">
                          	<time class="has-text-grey-light" datetime="${post.createTime!}"><i class="fas fa-calendar mr-2"></i>&nbsp;&nbsp;${post.createTime?string('yyyy-MM-dd')}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</time>
							<span class="has-text-grey-light"><i class="fas fa-eye mr-2"></i>&nbsp;&nbsp;${post.visits!}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
							<span class="has-text-grey-light"><i class="fas fa-comments mr-2"></i>&nbsp;&nbsp;${post.commentCount}</span>
						</div>	
					</div>
				</#if>
			</div>
		</div>
	</div>
</div>