<#-- 相关推荐 -->
<#macro tagsRelatedMacro  >
<div class="columns is-mobile is-multiline margin-top-075">
	<#list tags as tag>
		<@postTag method="listByTagId" tagId="${tag.id}">
			<#list posts as post>
				<div class="column is-3-desktop is-6-mobile">
					<a href="${post.fullPath!}" target="_blank">
						<div class="card">
							<div class=" ">
								<figure class="image is-3by2">
                                    <#if post.thumbnail?? && post.thumbnail!=''>
										<img src="${post.thumbnail!}" alt="${post.title!}">
                                    <#else>
                                      	<img src="https://iph.href.lu/400x300?text=公告(占位图)" alt="${post.title!}">
                                    </#if>
								</figure>
							</div>
							<div class="card-content">
								<div class="content overflow-2-hide">
									${post.title!}
								</div>
							</div>
						</div>
					</a>
				</div>
			</#list>
		</@postTag>
	</#list>	
</div>
</#macro> 