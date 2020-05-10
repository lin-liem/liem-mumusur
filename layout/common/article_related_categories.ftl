<#-- 相关推荐 -->
<#macro categoryRelatedMacro  >
<div class="card">
	<div class="columns is-multiline ">	
      	<div class="column is-12">
        	<h3 class="card-content title is-6 clean-top-padding title-border-bottom">相关资源</h3>
        </div>
		<#list categories as category>
		  <@postTag method="listByCategoryId" categoryId="${category.id}">
				<#list posts as post>
					<div class="column is-6-desktop is-12-mobile clean-top-padding">
						<div class="card-content level is-mobile clean-top-bottom-padding">
						  <span class="level-left column clean-top-bottom-padding clean-left-padding"">
                              <i class="fas fa-book"></i>&nbsp;&nbsp;&nbsp;
                              <a href="${post.fullPath!}" class="title overflow-1-hide has-link-black-ter is-size-6 has-text-weight-normal">
                                  ${post.title!}
                              </a>
                          </span> 
                          <time class="level-right has-text-grey-light " datetime="${post.createTime!}">${post.createTime?string('yyyy-MM-dd')}</time>
						</div>
					</div>
				</#list>
			</@postTag>
		</#list>	
	</div>
</div>
</#macro> 