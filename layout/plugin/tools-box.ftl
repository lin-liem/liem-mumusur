<#-- 电脑工具栏 -->
<ul class="tools-box is-hidden-touch">
  	<li>
  		<a class="change-sudoku" title="改变布局" href="javascript:;" >
            <i class="fas fa-th" ></i>
        </a>
  	</li>
  	<li>
  		<a id="tool-search-box"  title="搜索资源" onclick="openSearchPanel()"  href="javascript:;" >
            <i class="fas fa-search" ></i>
        </a>
  	</li>
  	<li>
  		<a id="lightbulb-moon"  title="暗黑模式" href="javascript:;" >
            <i class="fas night-mode fa-moon" id="nightMode" ></i>
        </a>
  	</li>
  	<li class="is-hidden-desktop" >
  		<a class="show-mobile-menu" title="目录" href="javascript:;" >
            <i class="fas fa-bars" ></i>
        </a>
  	</li>
  	<li>
  		<a class="go-top" title="返回顶部" href="javascript:;" >
            <i class="fas fa-chevron-up" ></i>
        </a>
  	</li> 
</ul>
<!-- 手机端 -->
<style>
  .tools-box-mobile{
      width: 100%;
      bottom: 8.5rem;
      left:0px;
      right:0px;
      position: fixed;
      padding: 0.75rem 0;
      transition: .4s ease opacity,.4s ease width,.4s ease transform,.4s ease border-radius;
      line-height: 24px;
      outline: 0;
      transform: translateY(120px);
      z-index:1;
      background-color: #4a4a4a;
  }
</style>
<div class="tools-box-mobile is-hidden-desktop">
    <nav class="level is-mobile">
        <div class="level-item has-text-centered is-marginless change-sudoku">
            <div class="">
                <p class="heading title margin-bottom-045">
                    <i class="fas fa-th has-text-white"></i>
                </p>
                <p class="title is-7 has-text-weight-normal has-text-white">
                    排版
                </p>
            </div>
        </div>
        <div class="level-item has-text-centered is-marginless" onclick="openSearchPanel()">
            <div  >
                <p class="heading title margin-bottom-045">
                    <i class="fas fa-search has-text-white"></i>
                </p>
                <p class="title is-7 has-text-weight-normal has-text-white">
                    搜索
                </p>
            </div>
        </div>
        <div class="level-item has-text-centered is-marginless">
            <div >
                <p class="heading title margin-bottom-045">
                    <i class="fas fa-moon has-text-white night-mode" id="nightMode" ></i>
                </p>
                <p class="title is-7 has-text-weight-normal has-text-white">
                    夜晚
                </p>
            </div>
        </div>
        <div class="level-item has-text-centered is-marginless show-mobile-menu">
            <div>
                <p class="heading title margin-bottom-045">
                    <i class="fas fa-bars has-text-white"></i>
                </p>
                <p class="title is-7 has-text-weight-normal has-text-white">
                    目录
                </p>
            </div>
        </div>
      	<div class="level-item has-text-centered is-marginless go-top">
            <div >
                <p class="heading title margin-bottom-045">
                    <i class="fas fa-chevron-up has-text-white"></i>
                </p>
                <p class="title is-7 has-text-weight-normal has-text-white">
                    顶部
                </p>
            </div>
        </div>
    </nav>
</div>