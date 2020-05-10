<#include "layout/layout.ftl">
<#include "layout/common/article.ftl">
<@layout type="search" title="搜索：${keyword} - ${blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${blog_url!}/search?keyword=${keyword}">
  	<div class="card category-title-box">
        <div class="category-title-bg" style=""></div>
        <div class="category-title">
            <form action="${blog_url!}/search" class="margin-bottom-045">
                <div class="level is-mobile">
                  	 <div class="control has-icons-left width-100">
                     	<input class="input is-medium is-radiusless clean-outline" type="text" value="${keyword}" name="keyword" placeholder="请输入搜索关键字">
                  	 	<span class="icon is-small is-left">
                        	<i class="fas fa-search"></i>
                     	</span>
                     </div>
                  	 <div class="control">
                     	<input type="submit" class="button is-primary is-medium is-radiusless" value="搜　索">
                     </div>
                </div>
            </form>
            <#-- <h1 class="title is-5 title-letter text-shadow margin-bottom-045"><i class="fas fa-search"></i>&nbsp;搜索关键字：<span class="has-text-danger">${keyword}</span></h1>   -->
            <p class=" text-shadow">本次搜索为您找到相关的结果约&nbsp;<span class="has-text-danger">${posts.content?size * posts.getTotalPages()}</span>&nbsp;个</p>  
      	</div>
    </div>
  	<div id="article-no-sudoku" class="margin-top-1d5">
        <#list posts.content as post>
            <@article post,'index','null', 'search' />
        </#list>
    </div>
    <div id="article-sudoku" class="columns is-mobile is-multiline margin-top-075 is-hidden padding-left-right-0375">
        <#list posts.content as post>
            <div class="column is-3-desktop is-6-mobile padding-left-right-0375 clean-bottom-padding">
                <@article post,'index','null', 'searchSudoku' />
            </div>
        </#list>
    </div>
	<#if posts.getTotalPages() gt 0>
        <div class="card card-transparent margin-top-075">
            <nav class="pagination is-centered" role="navigation" aria-label="pagination">
                <@paginationTag method="search" page="${posts.number}" total="${posts.totalPages}" display="3" keyword="${keyword!}">
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
</@layout>