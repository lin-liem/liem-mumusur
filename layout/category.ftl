<div class="card category-title-box">
  	<div class="category-title-bg" style="background-image: url(${category.thumbnail});"></div>
  	<div class="category-title">
		<h1 class="title is-5 title-letter text-shadow margin-bottom-045"><i class="fas fa-flag"></i>&nbsp;${category.name}</h1>  
  		<p class=" text-shadow">${category.description}</p>  
  	</div>
</div>

<div id="article-no-sudoku" class="margin-top-1d5">
	<#list posts.content as post>
      	<@article post,'index','null', 'category' />
	</#list>
</div>
<div id="article-sudoku" class="columns is-mobile is-multiline margin-top-075 is-hidden padding-left-right-0375 ">
	<#list posts.content as post>
		<div class="column is-3-desktop is-6-mobile padding-left-right-0375 clean-bottom-padding">
			<@article post,'index','null', 'categorySudoku' />
		</div>
	</#list>
</div>

<#if posts.getTotalPages() gt 0>
    <div class="card card-transparent margin-top-075">
        <nav class="pagination is-centered" role="navigation" aria-label="pagination">
            <@paginationTag method="categoryPosts" page="${posts.number}" total="${posts.totalPages}" display="3" slug="${category.slug!}">
                <div class="pagination-previous<#if pagination.hasPrev><#else > is-invisible is-hidden-mobile</#if>">
                    <a class="is-flex-grow has-text-black-ter" href="${pagination.prevPageFullPath!}">上一页</a>
                </div>
                <div class="pagination-next<#if pagination.hasNext><#else > is-invisible is-hidden-mobile</#if>">
                    <a class="is-flex-grow has-text-black-ter" href="${pagination.nextPageFullPath!}">下一页</a>
                </div>
                <ul class="pagination-list is-hidden-mobile">
                    <#list pagination.rainbowPages as number>
                        <#if number.isCurrent>
                            <li><a class="pagination-link is-current" href="${number.fullPath!}">${number.page!}</a></li>
                        <#else>
                            <li><a class="pagination-link has-text-black-ter" href="${number.fullPath!}">${number.page!}</a></li>
                        </#if>
                    </#list>
                </ul>
            </@paginationTag>
        </nav>
    </div>
</#if>