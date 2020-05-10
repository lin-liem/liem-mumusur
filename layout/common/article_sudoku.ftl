<#-- 九宫格形式-->
<div class="card  is-hidden-mobile" >
	<div class="image is-16by9">
		<figure class="">
			<a href="${post.fullPath!}">
				<#if post.thumbnail?? && post.thumbnail!=''>
					<img class="thumbnail" src="${post.thumbnail!}" alt="${post.title!}">
				<#else>
					<img class="thumbnail" src="https://iph.href.lu/400x300?text=公告(占位图)" alt="${post.title!}">
				</#if>
			</a>
		</figure>
	</div>
	<div class="card-content">
		<#if post.summary?? && post.summary!=''>
			<div class="level is-size-7 is-uppercase is-mobile has-text-justified is-marginless">
				<div class="column article-meta is-size-7 is-uppercase is-overflow-x-auto is-paddingless">
					<span class="has-text-grey">${user.nickname!"博主"}&nbsp;<@global.timeline datetime=post.createTime/></span>
				</div>
				<div class="article-meta is-size-7 is-uppercase is-overflow-x-auto">
					<time class="has-text-grey" datetime="${post.createTime!}">${post.createTime?string('yyyy-MM-dd')}</time>
				</div>
			</div>
		</#if>
	  
		<h1 class="title is-size-6 is-size-6-mobile has-text-weight-medium is-marginless margin-top-075 overflow-2-hide">
			<a class="has-link-black-ter" href="${post.fullPath!}">${post.title!}</a>
		</h1>
		<#-- 文章概要 -->
		<#if post.summary?? && post.summary!=''>
			<div class="content is-size-6 category-content has-text-grey overflow-2-hide">${post.summary!}</div>
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
					<span class="has-text-grey-light"><i class="fas fa-eye mr-2"></i>&nbsp;&nbsp;${post.visits!}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<span class="has-text-grey-light"><i class="fas fa-comments mr-2"></i>&nbsp;&nbsp;${post.commentCount}</span>
				</div>
			</div>
		</#if>
	</div>
</div>
<#-- 手机端 -->
<div class="card  is-hidden-desktop is-marginless" >
	<div class="image is-16by9">
		<figure class="">
			<a href="${post.fullPath!}">
				<#if post.thumbnail?? && post.thumbnail!=''>
					<img class="thumbnail" src="${post.thumbnail!}" alt="${post.title!}">
				<#else>
					<img class="thumbnail" src="https://iph.href.lu/400x300?text=公告(占位图)" alt="${post.title!}">
				</#if>
			</a>
		</figure>
	</div>
	<div class="card-content is-paddingless padding-075">
		<#if post.summary?? && post.summary!=''>
			<div class="level is-size-7 is-uppercase is-mobile has-text-justified is-marginless">
				<div class="level level-left article-meta is-size-7 is-uppercase is-overflow-x-auto is-paddingless">
					<span class="has-text-grey">${user.nickname!"博主"}&nbsp;<@global.timeline datetime=post.createTime/></span>
				</div>
			</div>
		</#if>
	  
		<h1 class="title is-size-6 is-size-6-mobile has-text-weight-medium is-marginless margin-top-075 overflow-2-hide">
			<a class="has-link-black-ter" href="${post.fullPath!}">${post.title!}</a>
		</h1>
		<#-- 文章概要 -->
		<#if post.summary?? && post.summary!=''>
			<div class="content is-size-6 category-content has-text-grey overflow-2-hide">${post.summary!}</div>
		</#if>
		<#if post.summary?? && post.summary!=''>
			<#-- 文章的基本信息 -->
			<div class="level is-size-7 is-uppercase is-mobile has-text-justified">
				<div class="level level-left is-size-7 is-uppercase is-overflow-x-auto">
					<span class="has-text-grey-light"><i class="fas fa-eye mr-2"></i>&nbsp;&nbsp;${post.visits!}&nbsp;&nbsp;&nbsp;&nbsp; </span>
					<span class="has-text-grey-light"><i class="fas fa-comments mr-2"></i>&nbsp;&nbsp;${post.commentCount}</span>
				</div>
			</div>
		</#if>
	</div>
</div>