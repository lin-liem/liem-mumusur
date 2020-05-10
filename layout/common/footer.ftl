<#include "./footer_navbar.ftl">
<footer class="footer">
    <div class="container">
        <div class="level">
            <div class="level-start has-text-left-mobile">
              	<#if settings.footer_flinks_enable!true>
                	<p class="is-size-7 flinks">友情链接： 
                    	<@linkTag method="listTeams">
                              <#list teams as item>
                                  <#if item.team == settings.footer_flinks_alias!'友情链接'>
                                       <#list item.links as link>
                                          <a href="${link.url!}"  title="${link.description!}" target="_blank" class="has-text-grey-dark is-size-7">${link.name!}</a>
                                       	  <span>&nbsp;&nbsp;|&nbsp;&nbsp;</span>
                                       </#list>
                                       <a href="${settings.footer_flinks_url!'https://www.mumusur.com/s/flinks.html'}"  title="${settings.footer_flinks_name}" target="_blank" class="has-text-danger is-size-7"><i class="fas fa-bicycle"></i>&nbsp;&nbsp;${settings.footer_flinks_name}</a>
                                  </#if>
                              </#list>
                     	</@linkTag>
                     </p>
                </#if>
              	<#if settings.footer_desc_enable!true && settings.footer_desc??&&settings.footer_desc!=''>
              		<p class="is-size-7">${settings.footer_desc!}</p>
                </#if>
                <p class="is-size-7">
                    Copyright&nbsp;&copy; ${.now?string('yyyy')} ${options.blog_title!}&nbsp;${user.nickname!}&nbsp; 
                  	Thank for
                    <a href="https://mumusur.com/" target="_blank">Halo</a> & 
                    <a href="https://github.com/halo-dev/halo-theme-icarus" target="_blank">Icarus</a>
                    <br />
                    <@global.footer />
                </p>
            </div>
            <div class="level-end">
                <div class="field has-addons is-flex-center-mobile has-mt-5-mobile is-flex-wrap is-flex-middle">
                    ${settings.links_footer!}
                </div>
            </div>
        </div>
    </div>
</footer>
<div class="is-hidden-desktop margin-bottom-1d75">
 <#-- 用于移动端工具栏占位-->
</div>
          
<!-- 点击过滤 弹出抽屉 -->
<#if settings.sidebar_profile!true>
    <div id="sq_drawer">
        <span class="column has-text-centered has-text-primary" >
            <i class="fa fa-times-circle fa-2x " onclick="close_user_info()"></i>
        </span>
        <#include "../widget/profile.ftl">
    </div>
</#if>