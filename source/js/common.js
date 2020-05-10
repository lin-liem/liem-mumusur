var url = location.href;
var urlstatus = false;
$(".navbar-start a").each(function() {
	if ((url + '/').indexOf($(this).attr('href')) > -1 && $(this).attr('href') != '/') {
		$(this).addClass('is-active');
		urlstatus = true;
	} else {
		$(this).removeClass('is-active');
	}
});
if (!urlstatus) {
	$(".navbar-start a").eq(0).addClass('is-active');
}

/**
 * 移动端导航栏 OK
 */
document.addEventListener('DOMContentLoaded', () => {
	// Get all "navbar-burger" elements
	const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);
	// Check if there are any navbar burgers
	if ($navbarBurgers.length > 0) {
		// Add a click event on each of them
		$navbarBurgers.forEach(el => {
			el.addEventListener('click', () => {
				// Get the target from the "data-target" attribute
				const target = el.dataset.target;
				const $target = document.getElementById(target);
				// Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
				el.classList.toggle('is-active');
				$target.classList.toggle('is-active');
			});
		});
	}
});

/**
 * 个人信息模块右侧滑出效果
 */
function filtration_click() {
	if (!this.show) {
		$('#sq_drawer').css('right', 0);
	} else {
		$('#sq_drawer').css('right', '-200px');
	}
}

function close_user_info() {
	var position = $('#sq_drawer').css('right');
	if (position === "0px") {
		$('#sq_drawer').css('right', '-200px');
	}
}

/**
 * 文章界面的所有操作
 *  |-生成目录
 *  |-在代码的右上角显示代码的格式
 *  |-剪切板功能
 *  |-手机端目录
 *  Status: OK
 */
$(function() {

	/**
	 * 生成文章的目录
	 * @param from 从哪里寻找目录
	 * @param to 添加目录到哪里
	 * @param marginSpace 不同等级的标题错开多少距离
	 * @param success 成功后调用的方法
	 */
	let generateCatalogs = (marginSpace) => {
		// 获取所有的标题
		let titles = $('.content h1[id],h2[id],h3[id],h4[id],h5[id],h6[id]');
		// 得到标题数字的最小数字，用来计算每个标题的margin-left间距，例如["h2", "h3"]则返回2
		let minTitleNumber = Math.min.apply(null, [...new Set(titles.get().map(value => value.tagName[1]))]);
		// 如果没有title的话返回0
		minTitleNumber = minTitleNumber === Infinity ? 0 : minTitleNumber;
		minTitleNumber && (() => {
			// 开始生成目录
			titles.each(function() {
				// 得到标题等级，用来做margin-left处理
				let titleLevel = parseInt($(this).prop("tagName")[1]) - minTitleNumber;
				$("#catalogBox").append(
					'<p class="catalog-item"><a href="javascript:void(0)" style="margin-left:' + (titleLevel * marginSpace) +
					'rem;" data-catalog-target="' + $(this).attr("id") + '">' + $(this).text() + '</a></p>'
				);
			});
			// 为目录中每个链接添加一个点击事件
			$("#catalogBox .catalog-item a[data-catalog-target]").on("click", function() {
				let title = $(this).attr("data-catalog-target");
				let offsetTop = $('#' + title).offset().top - 20;
				$("html,body").animate({
					scrollTop: offsetTop
				}, 300);
			});
		})();
	};


	// 生成文章的目录
	generateCatalogs(1.125);

	// 固定目录
	$(function() {
		$(window).scroll(function() {
			//获取垂直滚动的距离
			var scrollTop = $(document).scrollTop();
			if (scrollTop >= 445) {
				var wdh = $("#menu-box").width();
				$("#menu-box").css("width", wdh);
				$("#menu-box").addClass("menu-fixed");
			} else {
				$("#menu-box").removeClass("menu-fixed");
			}
		});
	});
	

	/**
     * 处理手机端目录
     */
	// 目录按钮
	$(".show-mobile-menu").on("click", function () {
		$('#menu-box').addClass('is-show-mobile-menu').removeClass('is-hidden-mobile');
		$('.menu-content').css('max-height','88vh');
		$("#menu-box").animate({right: "0"}, 300);
		$("#catalog-over-box").show();
		return false;
	});
	
	// 判断为手机才执行手机端目录效果
	if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
		// 目录中的链接
		$("[data-catalog-target]").on("click", function () {
			$("#menu-box").css({right: "-70%"});
			$("#catalog-over-box").hide();
		}); 
	}    
	// 点击目录后的蒙版
	$("#catalog-over-box").click('on', function () {
		$("#menu-box").animate({right: "-70%"}, 300, () => {
			$(this).hide();
		});
		return false;
	});

});




/**
 * ===============================================================================
 * 网址导航界面的目录
 * ===============================================================================
 */
$(function() {
	/**
	 * 网址导航的目录
	 * @param from 从哪里寻找目录
	 * @param to 添加目录到哪里
	 * @param marginSpace 不同等级的标题错开多少距离
	 * @param success 成功后调用的方法
	 */
	let generateUrlNavCatalogs = (marginSpace) => {
		// 获取所有的标题
		let titles = $('#url-show-list h2[id]');
		// 得到标题数字的最小数字，用来计算每个标题的margin-left间距，例如["h2", "h3"]则返回2
		let minTitleNumber = Math.min.apply(null, [...new Set(titles.get().map(value => value.tagName[1]))]);
		// 如果没有title的话返回0
		minTitleNumber = minTitleNumber === Infinity ? 0 : minTitleNumber;
		minTitleNumber && (() => {
			// 开始生成目录
			titles.each(function() {
				// 得到标题等级，用来做margin-left处理
				let titleLevel = parseInt($(this).prop("tagName")[1]) - minTitleNumber;
				$("#urlNavBox").append(
					'<p class="catalog-item"><a href="javascript:void(0)" style="margin-left:' + (titleLevel * marginSpace) +
					'rem;" data-catalog-target="' + $(this).attr("id") + '">' + $(this).text() + '</a></p>'
				);
			});
			// 为目录中每个链接添加一个点击事件
			$("#urlNavBox .catalog-item a[data-catalog-target]").on("click", function() {
				let title = $(this).attr("data-catalog-target");
				let offsetTop = $('#' + title).offset().top - 20;
				$("html,body").animate({
					scrollTop: offsetTop
				}, 300);
			});
		})();
	};

 	generateUrlNavCatalogs(1.125);

	// 固定目录
	$(function() {
		$(window).scroll(function() {
			//获取垂直滚动的距离
			var scrollTop = $(document).scrollTop();
			if (scrollTop >= 87) {
				var wdh = $("#url-nav-menu-box").width();
				$("#url-nav-menu-box").css("width", wdh);
				$("#url-nav-menu-box").addClass("menu-fixed");
				$("#url-nav-menu-box").css("margin-top", "1.5rem");
			} else {
				$("#url-nav-menu-box").removeClass("menu-fixed");
				$("#url-nav-menu-box").css("margin-top", "0rem");
			}
		});
	});

	/**
     * 处理手机端目录
     */
	// 目录按钮
	$("#show-mobile-menu").on("click", function () {
		$('#url-nav-menu-box').addClass('is-show-mobile-menu').removeClass('is-hidden-mobile');
		$('.menu-content').css('max-height','88vh');
		$("#url-nav-menu-box").animate({right: "0"}, 300);
		$("#catalog-over-box").show();
		return false;
	});
	
	// 判断为手机才执行手机端目录效果
	if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
		// 目录中的链接
		$("[data-catalog-target]").on("click", function () {
			$("#url-nav-menu-box").css({right: "-70%"});
			$("#catalog-over-box").hide();
		}); 
	}    
	// 点击目录后的蒙版
	$("#catalog-over-box").click('on', function () {
		$("#url-nav-menu-box").animate({right: "-70%"}, 300, () => {
			$(this).hide();
		});
		return false;
	});
});


/***
* 首页轮播图slider
**/
$(function() {
  $("#hwslider").hwSlider({
    autoPlay: true,
    arrShow: true,
    dotShow: true,
    touch: true
  });
});

/***
* 点击显示评论
**/
$(".comment-btn").click(function(){
	var that = $(this);
	var ele = that.parents(".card-content").children('.journals-comment');
	ele.is(':hidden') ? that.find('span').text('收起评论') : that.find('span').text('评论');
	ele.slideToggle();
	
	
});

/***
* 关闭广告
**/
$(".close-btn").click(function(){
	var that = $(this);
	var ele = that.parents(".banner-advert");
	ele.slideUp();
});
/***
* 延时开启广告
**/
function lazyAdvert(){
  setTimeout(function(){
	$(".banner-advert").slideDown('slow');
  },1000);
}
lazyAdvert();


/**
* 公告滚动
* 参数说明
* obj      : 动画的节点，本例中是ul
* top      : 动画的高度，本例中是-35px;注意向上滚动是负数
* time     : 动画的速度，即完成动画所用时间，本例中是500毫秒，即marginTop从0到-35px耗时500毫秒
* function : 回调函数，每次动画完成，marginTop归零，并把此时第一条信息添加到列表最后;
* */

var callboarTimer;
function noticeUp(obj,rtop,time) {
	$(obj).animate({
		top: rtop
	}, time, function () {
		$(this).css({top:"0rem"}).find(":first").appendTo(this);
	})
};
$(function () {
	$('.notice-box').hover(function() {
    	clearInterval(callboarTimer);
    }, function() {
		clearInterval(callboarTimer);
    	callboarTimer = setInterval("noticeUp('.notice-box','-2rem',800)", 3000);
    });
    callboarTimer = setInterval("noticeUp('.notice-box','-2rem',800)", 3000);
});

// 布局改变
$('.change-sudoku').click(function() {
	// 改变显示内容
	if ($('#article-no-sudoku').is(":visible")) {
		$('#article-no-sudoku').addClass("is-hidden");
		$('#article-sudoku').removeClass("is-hidden");
	} else {
		$('#article-no-sudoku').removeClass("is-hidden");
		$('#article-sudoku').addClass("is-hidden");
	}

	// 改变显示图标
	var $itag = $(this).find('i');
	if ($itag.attr('class') == 'fas fa-th') {
		$itag.removeClass('fas fa-th').addClass('fas fa-list');
	} else {
		$itag.removeClass('fas fa-list').addClass('fas fa-th');
	}
})

/** 返回顶部*/
$('.go-top').on('click', function () {
	$('body, html').animate({ scrollTop: 0 }, 400);
});