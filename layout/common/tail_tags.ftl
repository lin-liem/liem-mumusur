<#-- 标签小尾巴 -->
<div class="card">
	<div class="columns is-multiline ">	
      	<div class="column is-12">
        	<h3 class="card-content title is-6 clean-top-padding title-border-bottom">相关信息</h3>
        </div>  
        <div class="column is-12 clean-top-padding">
          	<div class="card-content clean-top-bottom-padding level article-meta is-size-7 is-uppercase is-mobile">
				<div class="buttons are-small">
					<span class="button is-primary">分类</span>
					<#if categories?? && categories?size gt 0>
						<#list categories as category>
							<a class="button is-primary is-outlined" href="${category.fullPath!}">${category.name!}</a>&nbsp;
						</#list>
					<#else>
						<button class="button is-light" disabled>暂无相关分类</button>
					</#if>
					<span class="button is-primary">标签</span>
					<#if tags?? && tags?size gt 0>
						  <#list tags as tag>
							  <a class="button is-primary is-outlined" href="${tag.fullPath!}">#&nbsp;&nbsp;${tag.name!}</a>&nbsp;
						  </#list>
					<#else>
						<button class="button is-light" disabled>暂无相关标签</button>
					</#if>
				</div>
            </div>
		</div>
	</div>
</div>