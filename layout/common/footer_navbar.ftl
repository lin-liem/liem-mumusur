<div class="footer-navbar has-background-grey-dark has-text-grey-lighter"> 
    <div class="container">
        <div class="columns is-multiline is-mobile">
            <div class="column is-4-desktop is-12-mobile has-text-justified">
          		<a class="footer-logo is-block has-mb-6 top-margin-075rem" href="${context!}">
                  	<#if settings.footer_logo?? && settings.footer_logo!=''>
                      	<img src="${settings.footer_logo!}" alt="${options.blog_title!}" height="32">
                    <#else>
                    	<#if options.blog_logo?? && options.blog_logo!=''>
                            <img src="${options.blog_logo!}" alt="${options.blog_title!}" height="32">
                        <#else>
                            ${options.blog_title!}
                        </#if>
                    </#if>
                </a>
                ${settings.footer_logo_memo!}
          	</div>
            <div class="column is-4-desktop is-12-mobile">
          		<h3	class="title is-5 has-text-grey-lighter top-margin-075rem">直达链接</h3>
              	<#assign text>${settings.footer_more_links!}</#assign>
              	<#assign json=text?eval />
              	<div class="columns  is-multiline is-mobile icon-btn-links">
                  	<#list json as item>
                      	<a class="column is-4 has-text-grey-lighter clean-bottom-padding" href="${item.url}" target="_blank">
                          	<i class="${item.icon}"></i>&nbsp;&nbsp;${item.title}
                        </a>
                    </#list>
                </div>
          	</div>
            <div class="column is-4-desktop is-12-mobile">
            	<h3	class="title is-5 has-text-grey-lighter top-margin-075rem">关注我们</h3>
              	<div class="columns is-mobile qr-list">
              		<div class="column is-4" >
                    	<img src="${settings.footer_qr_01!}" alt="${settings.footer_qr_01_desc!}">
                      	<p class="has-text-centered">${settings.footer_qr_01_desc!}</p>
                  	</div>
                  	<div class="column is-4" >
                    	<img src="${settings.footer_qr_02!}" alt="${settings.footer_qr_02_desc!}">
                      	<p class="has-text-centered">${settings.footer_qr_02_desc!}</p>
                  	</div>
                    <div class="column is-4" >
                    	<img src="${settings.footer_qr_03!}" alt="${settings.footer_qr_03_desc!}">
                      	<p class="has-text-centered">${settings.footer_qr_03_desc!}</p>
                  	</div>
                </div>
            </div>
        </div>
    </div>
</div>