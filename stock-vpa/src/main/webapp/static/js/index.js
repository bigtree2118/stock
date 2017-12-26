$(function(){
	//幻灯片功能封装
	function banner(time,delay){
		//获取图片数组，为第一张图片初始化
		var banner = $('.banner a')
		banner.eq(0).show();
		$('.banner-box .show-control-box li span').eq(0).addClass('active');
		//计数器
		var i =1;
		var t=0;
		//延迟定时器
		var timeout;
		//获取第一张图片
		var timer =setInterval(function(){
			if(i == $('.banner a').length){
				i=0
			}
			inital(i);
			i++;
		},time);
		//上一张图事件
		$(".show-left-btn").click(function(){
			if(banner.eq() == 0){
				num = $('.banner a').length -1;
			}else{
				num = index();
				num--
			}
			banner_over(num);
			banner_out(num);
		})
		//下一张图事件
		$(".show-right-btn").click(function(){
			if(index() == $('.banner a').length -1){
				var num = 0;
			}else{
				var num = index();
				num++
			}
			banner_over(num);
			banner_out(num);
		})
		//圆点事件
		$('.show-control-box li span').hover(
			function(){
				if($(this).attr('class') == 'active'){
					clearTimeout(timeout);
					clearInterval(timer);
					return;
				}
				banner_over($(this).parent().index())
			},
			function(){
				banner_out($(this).parent().index());
			}
		);
		//图片事件
		$('.banner a').hover(
			function(){
				if($(this).css('display') == 'block' || $(this).css('display') == 'inline'){
					clearTimeout(timeout);
					clearInterval(timer);
					return;
				}
				banner_over($(this).index());
			},
			function(){
				banner_out($(this).index());
			}
		);
		function banner_over(index){
			clearTimeout(timeout);
			clearInterval(timer);
			inital(index);
		}
		function banner_out(index){
			timeout = setTimeout(function(){
				timer =setInterval(function(){
					if(index==$('.banner a').length){
						index=0
					}
					inital(index);
					index++;
					clearTimeout(timeout);
				},time)
			},delay)
		}
		//由于左右按钮获取不到此时的index，因此通过index方法来获取
		function index(){
			for(var i = 0; i<banner.length;i++){
				if(banner.eq(i).css('display') == 'block'){
					return i;
				}
			}
			}
		function inital(index){
				$('.banner a').stop(true,true)
				$('.show-control-box li span').removeClass('active');
				$('.show-control-box li').eq(index).find('span').addClass('active');
				$('.banner a').fadeOut();
				$('.banner a').eq(index).fadeIn();
		}
	}
	banner(10000,1000);

	//回到顶部功能
	$(document).scroll(function(){
		if($('html').scrollTop() ==0 && $('body').scrollTop() == 0){
			$(".scroll-top").hide();
		}else{
			$(".scroll-top").show();
		}
	})
	$(".scroll-top").click(function(){
		$('html,body').animate({'scrollTop':'0'}, 400)
	})

	//播放界面的tab-nav标签切换效果
    $(".player-tab .tab-nav li").click(function(){
		$(".tab-nav li").removeClass('cur');
		$(this).addClass('cur');
	})

	//关于我们页面左边列表标签切换效果
	$(".about .tab-nav li").click(function(){
        var index = $(this).index();
        $('html,body').animate({'scrollTop':$('h3').eq(index).offset().top-$('h3').eq(index).outerHeight(true)},200);
    })

    //关于我们页面，滚动屏幕与左边列表标签定位一致
    $(document).scroll(function(){
        for(var i =0;i<$('.about h3').length;i++){
            if($('html').scrollTop()+$('h3').eq(i).outerHeight(true) >= $('h3').eq(i).offset().top || $('body').scrollTop()+$('h3').eq(i).outerHeight(true) >= $('h3').eq(i).offset().top){
                $(".tab-nav li").removeClass('cur');
                $(".tab-nav li").eq(i).addClass('cur');
            }
        }
    })
  //获取网址传过来的锚点,动画定位到锚点处
    function anchorIn(){
    	var Url = window.location.href;
        var anchor = Url.split('#');
        var anchor_text = anchor[1];
        console.log(anchor_text);
        if(anchor_text ==undefined){
        	return;
        }
        for(var i = 0;i<$('h3').length;i++){
            if($('h3').eq(i).attr('class') == anchor_text){
                index =i;
            }
        }
        $('body').animate({"scrollTop":$('h3').eq(index).offset().top-$('h3').eq(index).outerHeight(true)})
    }
	anchorIn();
})
  
