<#macro noticeListMacro>
	<@tagTag method="list">
		<#list tags as tag>
			<#if (settings.notice_tag!'notice') == tag.slug >
				<@postTag method="listByTagId" tagId="${tag.id}">
					<#list posts as post>
						<a href="${post.fullPath!}" class="notice-title " 
                             target="_blank">
                          	${post.title!}&nbsp;&nbsp;-&nbsp;&nbsp;[${post.createTime}]
                      	</a>
					</#list>
				</@postTag>
			</#if>
		</#list>
	</@tagTag>
</#macro> 
