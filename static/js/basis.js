$(function(){
	$('#nav_ul li').hover(function() {
		$(this).find('.nav_s').fadeIn(200);
		$(this).find('.nav_f').animate({'marginTop':'-43px'}, 200);
	}, function() {
		$(this).find('.nav_s').stop().fadeOut(300);
		$(this).find('.nav_f').animate({'marginTop':'0'}, 200);
	});

	var pic_row = $('.pic_row a, .jgsj a, .bttd_b .bttd_tx');
	pic_row.hover(function() {
		if($(this).parent().hasClass('allhide'))return;
		$(this).find('h3').animate({'marginTop':'-23px'}, 200);
	}, function() {
		$(this).find('h3').animate({'marginTop':'0'}, 200);
	});

	var allhide = $('.allhide a')
	allhide.hover(function() {
		$(this).find('h3').animate({'marginTop':'-15px'}, 200);
	}, function() {
		$(this).find('h3').animate({'marginTop':'0'}, 200);
	});
	var nav_sc = $('.nav_sc');
	nav_sc.each(function(index, el) {
		var wid = 0, that = $(this);
		that.find('a').each(function(index, el) {
			//wid += $(this).outerWidth();
			wid+=1;
		});
		//that.width(wid+30);
		//alert(wid*110);
		// that.width(wid*70);
	});
	$('.bttb_ct').each(function(index, el) {
		var i = $('.bttb_ct').index($(this)) + 1;
		if(i%2 == 0){
			$(this).css('left','-189px');
		}
	});
	$('.bttd_tx').click(function(event) {
		$('.bttb_ct').fadeOut(200);
		//$(this).parent().find('.bttb_ct').fadeIn(200);
	});
$('.bttb_clo').click(function(event) {
	$(this).parent().fadeOut(200);
});

//设置遮罩高度
	var fix_bg = $('#fix_bg'), wd = $(window);
	fix_bg.height($('body').outerHeight());
	////////
	var t_stop = $('#t_stop'),
			go_btn = t_stop.find('.go_btn');
		/*wd.scroll(wd_scroll);//固定弹框垂直居中
	wd.resize(wd_scroll);
	function wd_scroll(){
		var wd_t = wd.scrollTop(),
				scroll_t = wd_t + (wd.height()-t_stop.outerHeight())/2;
		t_stop.stop().animate({'top':scroll_t}, 300);
	}
	wd_scroll();*/

	$('#fic_close').click(function(event) {
		fix_bg.add(t_stop).fadeOut();
	});
	$('.fix_op').click(function(event) {
		fix_bg.add(t_stop).fadeIn();
		$('body').animate({'scrollTop':0}, 300);
	});

	var sid_nav = $('.sid_nav li');
	sid_nav.hover(function() {
		if($(this).find('.sid_nav_sub').attr('data-dq'))return;
		$(this).find('span').addClass('sid_nav_dq');
		$(this).find('.sid_nav_f').animate({'marginTop':'-50px'}, 200);
		$(this).find('.sid_nav_sub').slideDown();
	}, function() {
		if($(this).find('.sid_nav_sub').attr('data-dq'))return;
		$(this).find('span').removeClass('sid_nav_dq');
		$(this).find('.sid_nav_f').animate({'marginTop':'0'}, 200);
		$(this).find('.sid_nav_sub').stop().slideUp();
	});

	var nav_sc = $('.nav_sc strong');
	nav_sc.hover(function() {
		$(this).find('.a').animate({'marginTop':'-30px'}, 200);
	}, function() {
		$(this).find('.a').animate({'marginTop':'0'}, 200);
	});







	$('.info_pic2').each(function() {
		var that = $(this), pic = that.find('a'), pic_s = pic.size(),
				pv = that.find('.info_pic2_pv'), nt = that.find('.info_pic2_nt'), ind = 0;
		pv.click(function(event) {
			if(pic.is(':animated'))return;
			pic.eq(ind).fadeOut();
			ind--;
			if(ind<0)ind = pic_s-1;
			pic.eq(ind).fadeIn();
		});
		nt.click(function(event) {
			if(pic.is(':animated'))return;
			pic.eq(ind).fadeOut();
			ind++;
			if(ind>=pic_s)ind = 0;
			pic.eq(ind).fadeIn();
		});
	});

	$('.ind_c1').each(function() {
		var that = $(this), ct = that.find('.info_pic'), btn = that.find('.ind_btn1 i'),
				ct_s = ct.size(), ind = 0;
		btn.on('mouseenter', function(event) {
			event.preventDefault();
			var i = btn.index($(this));
			if(ind == i)return;
			btn.removeClass('ind_dq1');
			$(this).addClass('ind_dq1');
			ct.eq(ind).fadeOut();
			ind = i;
			ct.eq(ind).fadeIn();
		});
	});

	$('.gsxw_b').hover(function() {
		$(this).addClass('gsxw_b_dq').find('.gsxw_bc').slideDown(600);
	}, function() {
		$(this).removeClass('gsxw_b_dq').find('.gsxw_bc').stop().slideUp(600);
	});

	$('.cnt_b:even').css('marginRight','75px');

	var fbmap_i = $('.fbmap_b i'), fbmap_pl = $('.fbmap_pl'), fbmap_txa = $('.fbmap_txa');
	$('.fbmap_b').each(function() {
		$(this).find('i').mouseenter(function(event) {
			var that = $(this), ct = $(this).prev('.fbmap_pl'), 
					ind = 0;
			if($('.fbmap_dq').size()>0){
				if($(this).hasClass('fbmap_dq')){
					ct.animate({'opacity':0}, 300, function(){ct.css('marginBottom','60px').hide()});
					fbmap_i.removeClass('fbmap_dq');
					fbmap_txa.fadeOut();
				}else{
					fbmap_pl.animate({'opacity':0}, 300, function(){
						fbmap_pl.css('marginBottom','60px').hide();
						fbmap_txa.fadeOut();
						fbmap_txa.eq(fbmap_i.index(that)).stop().fadeIn();
						ct.show().animate({'marginBottom':0,'opacity':1}, 300);
						fbmap_i.removeClass('fbmap_dq');
						that.addClass('fbmap_dq');
					});
				}
			}else{
				fbmap_txa.eq(fbmap_i.index(that)).stop().fadeIn();
				ct.show().animate({'marginBottom':0,'opacity':1}, 300);
				fbmap_i.removeClass('fbmap_dq');
				that.addClass('fbmap_dq');
			}
		});
	});

	var sli2 = $('.sli2'), 
			sli2_bp = sli2.find('.sli2_p'), sli2_bpic = sli2_bp.find('a'), 
			sli2_mp = sli2.find('.sli2_b_w'), sli2_mpic = sli2_mp.find('img'),
			sli2_mpic_s = sli2_mpic.size(), sli2_mpic_w = sli2_mpic.innerWidth()+9,
			sli2_pv = sli2.find('.sli2_pv'), sli2_nt = sli2.find('.sli2_nt'), 
			sli2_i = 0;
	sli2_mp.width(sli2_mpic_s*sli2_mpic_w);
	
	sli2_pv.click(function(event) {
		if(sli2_i == 0)return;
		sli2_i--;
		sli2_mp.animate({'marginLeft':-sli2_i*sli2_mpic_w}, 300);
	});
	sli2_nt.click(function(event) {
		if(sli2_i == sli2_mpic_s-6)return;
		sli2_i++;
		sli2_mp.animate({'marginLeft':-sli2_i*sli2_mpic_w}, 300);
	});
	sli2_mpic.click(function(event) {
		var i = sli2_mpic.index($(this));
		if(sli2_i == i)return;
		sli2_bpic.eq(sli2_i).stop().fadeOut();
		sli2_i = i;
		sli2_bpic.eq(sli2_i).stop().fadeIn();
	});






});

(function($){
	$.fn.selecter = function(opa){
		var def = {};
		var opa = $.extend(def, opa);
		this.each(function() {
			var sel = $(this);
		});
	}
})(jQuery);