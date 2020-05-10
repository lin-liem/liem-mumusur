<#macro sliderListMacro>
<#if settings.slider_json_enable && settings.slider_list_json_content??>
  	<#assign text>${settings.slider_list_json_content!''}</#assign>
  	<#assign json=text?eval />
  	<#list json as item>
		<li id="${item.id}">
            <a href="${item.url!}" target="_blank">
              <img src="${item.thumbnail!}" alt="${item.title!}">
              <div class="intro">${item.title!}</div>
            </a>
        </li>
	</#list>	
<#elseif settings.slider_tag_enable!true>
  	<@tagTag method="list">
      <#list tags as tag>
        <#if (settings.slider_main_tag!'lunbobiaoqian') == tag.slug >
          <@postTag method="listByTagId" tagId="${tag.id}">
            <#list posts as post>
              <li>
                <a href="${post.fullPath!}" target="_blank">
                  <img src="${post.thumbnail!}" alt="${post.title!}">
                  <div class="intro">${post.title!}</div>
                </a>
              </li>
              </#list>
            </@postTag>
          </#if>
        </#list>
    </@tagTag>
</#if>
</#macro> 

