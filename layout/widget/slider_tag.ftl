<#macro sliderTagMacro>
<#if settings.slider_json_enable && settings.slider_side_json_content??>
    <#assign sideText>${settings.slider_side_json_content!''}</#assign>
  	<#assign sideJson=sideText?eval />
  	<div class="column is-3 clean-left-padding is-hidden-touch">
        <div class="columns is-multiline">
          	<#list sideJson as item>
              <div class="banner-height-2 column is-12" id="${item.id}">
                <a href="${item.url!}" target="_blank">
                  <img src="${item.thumbnail!}"  alt="${item.title!}" title="${item.title!}">
                </a>
              </div>
            </#list>
        </div>
    </div>
    <div class="column is-3 is-hidden-desktop">
        <div class="columns is-mobile">
            <#list sideJson as item>
                <#-- 0，取第1条 -->
                <#if item_index == 0>
                    <div class="banner-height-2 column is-6 right-padding-0375 clean-top-padding">
                        <a href="${item.url!}" id="${item.id!}" target="_blank">
                            <img src="${item.thumbnail!}"  alt="${item.title!}" title="${item.title!}">
                        </a>
                    </div>
                <#-- 1，取第2条 -->
                <#elseif item_index == 1>
                    <div class="banner-height-2 column is-6 left-padding-0375 clean-top-padding">
                        <a href="${item.url!}" id="${item.id!}" target="_blank">
                            <img src="${item.thumbnail!}"  alt="${item.title!}" title="${item.title!}">
                        </a>
                    </div>
                </#if>
            </#list>
        </div>
    </div>
<#elseif settings.slider_tag_enable!true>
    <@tagTag method="list">
        <#list tags as tag>
            <#if (settings.slider_right_tag!'lunbofutu') == tag.slug >
                <@postTag method="listByTagId" tagId="${tag.id}">
                    <div class="column is-3 clean-left-padding is-hidden-touch">
                        <div class="columns is-multiline">
                            <#list posts as post>
                                <div class="banner-height-2 column is-12">
                                    <a href="${post.fullPath!}" target="_blank">
                                        <img src="${post.thumbnail!}"  alt="${post.title!}" title="${post.title!}">
                                    </a>
                                </div>
                            </#list>
                        </div>
                    </div>
                    <div class="column is-3 is-hidden-desktop">
                        <div class="columns is-mobile">
                            <#list posts as post>
                                <#-- 0，取第1条 -->
                                <#if post_index == 0>
                                  <div class="banner-height-2 column is-6 right-padding-0375 clean-top-padding">
                                      <a href="${post.fullPath!}" target="_blank">
                                        <img src="${post.thumbnail!}"  alt="${post.title!}" title="${post.title!}">
                                      </a>
                                  </div>
                                <#-- 1，取第2条 -->
                                <#elseif post_index == 1>
                                  <div class="banner-height-2 column is-6 left-padding-0375 clean-top-padding">
                                      <a href="${post.fullPath!}" target="_blank">
                                        <img src="${post.thumbnail!}"  alt="${post.title!}" title="${post.title!}">
                                      </a>
                                  </div>
                                </#if>
                            </#list>
                        </div>
                    </div>
                </@postTag>
            </#if>
        </#list>
    </@tagTag>
</#if>
</#macro> 
			