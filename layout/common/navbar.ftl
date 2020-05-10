<#macro navbar layout>
<nav class="navbar is-white" role="navigation" aria-label="main navigation">
  	<div class="container">
		<div class="navbar-brand">
			<a class="navbar-item navbar-logo" href="${blog_url!}">
				<#if blog_logo?? && blog_logo!=''>
					<img src="${blog_logo!}" alt="${blog_title!}" height="28">
				<#else>
					${blog_title!}
				</#if>
			</a>
			<a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasic">
			  <span aria-hidden="true"></span>
			  <span aria-hidden="true"></span>
			  <span aria-hidden="true"></span>
			</a>
		</div>
		<div id="navbarBasic" class="navbar-menu">
			<@menuTag method="tree">
                <#if menus?? && menus?size gt 0>
                    <div class="navbar-start">
                        <#list menus?sort_by('priority') as menu>
                          	<a class="navbar-item" href="${menu.url}" target="${menu.target!}">${menu.name}</a>
                          	<#if menu.children?? && menu.children?size gt 0>
                                <div class="navbar-item has-dropdown is-hoverable">
                                    <a class="navbar-link" href="${menu.url}" target="${menu.target!}">${menu.name}</a>
                                    <div class="navbar-dropdown">
                                      <#list menu.children?sort_by('priority') as child>
                                        <a class="navbar-item" href="${child.url!}">${child.name!}</a>
                                        </#list>
                                    </div>
                                </div>
                            </#if>
                        </#list>
                    </div>
                </#if>
            </@menuTag>
          
			<div class="navbar-end">
              	<div class="navbar-item">
                    <div class="buttons">
                        <a class="button is-primary  search" title="搜索" onclick="openSearchPanel()" href="javascript:;"><i class="fas fa-search"></i>&nbsp;&nbsp;搜索</a>
                    	${settings.links_top!}
                      	<#if settings.sidebar_profile!true>
                      		<a class="button is-light" href="javascript:;" onclick="filtration_click()"><i class="fas fa-user"></i>&nbsp;&nbsp;个人信息</a>
                    	</#if>
                    </div>
                </div>
          	</div>
		</div>
	</div>
</nav>
</#macro>
