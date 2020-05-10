<#include "../comment/comment.ftl">
<#import "./article_related_tag.ftl" as tags_related_macro>
<#import "./article_related_categories.ftl" as categories_related_macro>
<div class="card article-list" >
	<div class="card-content article">
      	<div class="level title-border-bottom is-mobile">
          <div class="level-left is-size-7 is-uppercase is-overflow-x-auto">
              	<span class="has-text-grey-light">${user.nickname!"博主"}<@global.timeline datetime=post.createTime/></span>
          </div>
          <div class="level-right is-size-7 is-uppercase is-overflow-x-auto">
              	<time class="has-text-grey-light is-hidden-mobile" datetime="${post.createTime!}">${post.createTime?string('yyyy-MM-dd HH:mm:ss')}&nbsp;&nbsp;|&nbsp;&nbsp;</time>
            	<span class="has-text-grey-light">浏览&nbsp;&nbsp;${post.visits!}</span>
            	<span class="has-text-grey-light">&nbsp;&nbsp;|&nbsp;&nbsp;留言&nbsp;&nbsp;${post.commentCount}&nbsp;&nbsp;</span>
          </div>
        </div>
		<h1 class="title is-size-3 is-size-4-mobile has-text-weight-normal">
			${post.title!}
		</h1>
		<div class="content">${post.formatContent!}</div>
      	<#include "tail_zsxq.ftl">
		<#include "tail.ftl">
        <div class="level-right is-size-7 is-uppercase is-overflow-x-auto">
          	<time class="has-text-grey-light" datetime="${post.editTime!}">最后编辑时间&nbsp;&nbsp;|&nbsp;&nbsp;${post.editTime?string('yyyy-MM-dd HH:mm:ss')}</time>
		</div>
		<#if settings.share_type?? && settings.share_type!=''>
			<#include "../share/${settings.share_type}.ftl">
		</#if>
	</div>
</div>
		       
<#-- 标签小尾巴 -->
<#include "./tail_tags.ftl">
  
<#-- 分类推荐 -->
<#if categories?? && categories?size gt 0>
<@categories_related_macro.categoryRelatedMacro />
</#if>
<#if (settings.donate_alipay?? && settings.donate_alipay!='' ) || (settings.donate_wechat?? &&
settings.donate_wechat!='' )>
	<div class="card">
		<div class="card-content">
          	<h3 class="menu-label has-text-centered is-size-6">所有的伟大，都源于一个勇敢的开始</h3>
			<div class="buttons is-centered">
				<#if settings.donate_alipay?? && settings.donate_alipay!=''>
					<#include "../donate/alipay.ftl">
				</#if>
				<#if settings.donate_wechat?? && settings.donate_wechat!=''>
					<#include "../donate/wechat.ftl">
				</#if>
			</div>
		</div>
	</div>
</#if>
      
<#if nextPost?? && prevPost??>
	<#include "./article_prev_next.ftl">
</#if>

<div class="card" id="comment-wrapper">
  	<div class="card-content  has-background-primary ">
      	<h3 class="title is-5 has-text-white has-text-centered is-marginless">我要先说</h3>	
      	<h3 class="menu-label has-text-white is-size-6 caihong-text  has-text-centered">所有的伟大，都源于一个勇敢的开始</h3>
    </div>
	<div class="card-content">
		<h3 class="title is-6 has-text-weight-normal">评论&nbsp;&nbsp;|&nbsp;&nbsp;${post.commentCount}条回复</h3>
      	<h4 class="subtitle is-7">若显示条数与实际不符，表明部分留言非开放...</h4>
		<#if commentType=='post'>
			<@comment post,"post" />
			<#else>
			<@comment post,"sheet" />
		</#if>
	</div>
</div>
  
<#-- 标签推荐 -->
<#if tags?? && tags?size gt 0>
<@tags_related_macro.tagsRelatedMacro />
</#if>