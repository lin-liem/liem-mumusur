<#import "./notice_list.ftl" as notice_list>
<div class="section notice has-background-black clean-top-bottom-padding">
	<div class="notice-content container is-size-7">
		<div class="columns is-mobile">
			<div class="column is-5-desktop is-12-mobile notice-main">
                <div class="is-pulled-left notice-icon">
                  	<i class="fa fa-volume-up"></i> 
                </div>
                <div class="is-pulled-left is-mobile notice-box overflow-1-hide">
                  	<@notice_list.noticeListMacro/>
                </div>
			</div>
			<div class="column is-7 is-hidden-mobile">
				<div class="navbar-end notice-top-navbar">
                  <#if settings.notice_navbar_enable!true>
                      ${settings.notice_navbar!''}
                  </#if>
				</div>
			</div>
		</div>
	</div>
</div>