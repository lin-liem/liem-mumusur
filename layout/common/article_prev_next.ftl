<#-- 上、下篇-->
<style type="text/css">
    .post-navigation{
      	position: relative;
    }
    .post-navigation .level-start{
		justify-content: flex-start;
    }
  	.post-navigation .level-end{
		justify-content: flex-end;
    }
  	.post-navigation .level-start,.post-navigation .level-end{
		background-position: center;
		background-size: cover;
		background-repeat: no-repeat;
      	margin: 0;
        min-height: 7rem;
        max-height: auto;
      	color:white;
      	width:49.5%;
      	padding:1.25rem 0.75rem;
	}
    .post-navigation .level-start::before{
        content: '';
        position: absolute;
        width: 49.5%;
        height: 100%;
        background-color: rgba(0,0,0,.5);
        top: 0;
        left: 0;
        z-index: 1;
  	}
  	.post-navigation .level-end::before {
        content: '';
        position: absolute;
        width: 49.5%;
        height: 100%;
        background-color: rgba(0,0,0,.5);
        top: 0;
        right: 0;
        z-index: 1;
  	}
    .prev-text, .next-text{
      	position: relative;
    	z-index: 2;
    }
</style>
<div class="card" style="margin-top: 1.5rem; background-color: rgba(0,0,0,0); box-shadow:none">
	<div class="level post-navigation is-flex-wrap is-mobile">
		<#if prevPost??>
			<div class="level-start" style="background-image:url('${prevPost.thumbnail!}')">
                <a  href="${prevPost.fullPath!}" class="has-text-white" target="_blank">
                    <div class="prev-text has-text-left">
                        <i class="fas fa-chevron-left"></i>
                        <span>&nbsp;&nbsp;&nbsp;&nbsp;上一篇</span>
                        <div class="has-text-left is-size-6 overflow-2-hide">${prevPost.title!}</div>
                        <time class="has-text-left is-size-7 is-hidden-mobile" datetime="${prevPost.createTime!}">${prevPost.createTime?string('yyyy-MM-dd HH:mm:ss')}</time>
                    </div>
                </a>
			</div>
		</#if>
		<#if nextPost??>
			<div class="level-end" style="background-image:url('${nextPost.thumbnail!}')">
              	<a href="${nextPost.fullPath!}" class="has-text-white"  target="_blank">
					<div class="next-text has-text-right">	 
                         <span>下一篇&nbsp;&nbsp;&nbsp;&nbsp;</span>
                         <i class="fas fa-chevron-right"></i>
                      	 <div class="has-text-right is-size-6 overflow-2-hide">${nextPost.title!}</div>
                      	 <time class="has-text-right is-size-7 is-hidden-mobile" datetime="${nextPost.createTime!}">${nextPost.createTime?string('yyyy-MM-dd HH:mm:ss')}</time>
              		</div>
                 </a>
			</div>
		</#if>
	</div>
</div>