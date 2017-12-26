$(function(){
	$('#tab-picture').empty().append(parentType == 'actor' ? '写真' : '海报');
	
	$('.tab-nav li').click(function(){
		$('.tab-nav li').removeClass('cur');
		$(this).addClass('cur');
		var tabId = $(this).attr('id');
		
		if(tabId == 'tab-video'){
			getVideoList();
		}else if(tabId == 'tab-picture'){
			getPictureList();
		}else if(tabId == 'tab-news'){
			getNewsList();
		}
	});
	
	$('#tab-video').click();
});

/**
 * 获取视频列表
 * @returns
 */
function getVideoList(){
	var params = {
		parentId: parentId,
		parentType: parentType
	};
	
	$('#media-list').empty();
	$.post(ctx.basePath + '/media/getVideoList', params, function(data) {
		if(isEmpty(data)){
			$('#media-list').append("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;很抱歉，没有找到相关内容");
		}else{
			$('#media-list').append(data);
		}
	}, 'html');
}

function getPictureList(){
	var params = {
		parentId: parentId,
		parentType: parentType
	};
	
	$('#media-list').empty();
	$.post(ctx.basePath + '/media/getPictureList', params, function(data) {
		if(isEmpty(data)){
			$('#media-list').append("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;很抱歉，没有找到相关内容");
		}else{
			$('#media-list').append(data);
		}
	}, 'html');
}

function getNewsList(){
	var params = {
		parentId: parentId,
		parentType: parentType
	};
	
	$('#media-list').empty();
	$.post(ctx.basePath + '/media/getNewsList', params, function(data) {
		if(isEmpty(data)){
			$('#media-list').append("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;很抱歉，没有找到相关内容");
		}else{
			$('#media-list').append(data);
		}
	}, 'html');
}

function isEmpty(v, allowBlank){
	if(v != null && v != undefined){
		v = v.trim();
	}
    return v === null || v === undefined || (!allowBlank ? v === '' : false);
}