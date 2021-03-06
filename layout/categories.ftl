<div class="card widget" id="cate-fixed">
    <div class="card-content">
        <div class="menu">
            <h3 class="menu-label">
                <span class="is-left-right">分类目录</span>
              	<span class="is-pulled-right lock-category-btn" title="锁定"><i class="fas fa-unlock"></i></span>
            </h3>
            <ul class="menu-list">
                <@categoryTag method="list">
                    <#list categories as category>
                        <li>
                            <a class="level is-marginless" href="${category.fullPath!}">
                                <span class="level-start">
                                    <span class="level-item">${category.name}</span>
                                </span>
                                <span class="level-end">
                                    <span class="level-item tag">${category.postCount}</span>
                                </span>
                            </a>
                        </li>
                    </#list>
                </@categoryTag>
            </ul>
        </div>
    </div>
</div>