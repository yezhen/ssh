<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Immaculate | One Page Portfolio Website Template</title>
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/style2.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/shou.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
<script type="text/javascript" src="js/jquery.scrollTo-1.4.2-min.js"></script> 
<script type="text/javascript" src="js/waypoints.min.js"></script> 
<script type="text/javascript" src="js/navbar.js"></script>
<script type="text/javascript" src="js/focusBoxController.js "></script> 
<script type="text/javascript" src="js/jquery.raty.min.js"></script>
<script type="text/javascript" src="js/HTMLMaker.js"></script>

<script type="text/javascript">
document.onkeydown=function(e){
 var isie = (document.all) ? true:false;
 var key;
 var ev;
 if(isie){//IE浏览器
  key = window.event.keyCode;
  ev = window.event;
 }else{//火狐浏览器
  key = e.which;
  ev = e;
 } 
 if(key==9){//IE浏览器
  if(isie){
   ev.keyCode=0;
   ev.returnValue=false;
  }else{//火狐浏览器
   ev.which=0;
   ev.preventDefault();
  }
 }
};
$(function(){
	var maxWord=400;
	//add focusBox Controller
	focusBoxController('kakaFocus',0,5);
	focusBoxController('kakaFocus2',1,5);
	focusBoxController('kakaFocus3',2,5);
	focusBoxController('kakaFocus4',3,5);
	focusBoxController('kakaFocus5',4,5);
	//add mouseWheel effect
	$('.banner')
        .mousewheel(function(event, delta) {
			if (delta > 0)
				$(this).children('a.btn_prev').trigger('click');
			else if (delta < 0)
				$(this).children('a.btn_next').trigger('click');
			return false; // prevent default
        });
	//count TextArea
	countTextAreaMakerGrounp("cTextArea",5);
	$("#content0").focus(function(){
		$("#content0").keydown(check0);
		$("#content0").keyup(check0);
		$("#content0").onpaste(check0);
	});
	$("#content1").focus(function(){
		$("#content1").keyup(check1);
		$("#content1").keydown(check1);
		$("#content1").onpaste(check1);
	});
	$("#content2").focus(function(){
		$("#content2").keyup(check2);
		$("#content2").keydown(check2);
		$("#content2").onpaste(check2);
	});
	$("#content3").focus(function(){
		$("#content3").keyup(check3);
		$("#content3").keydown(check3);
		$("#content3").onpaste(check3);
	});
	$("#content4").focus(function(){
		$("#content4").keyup(check4);
		$("#content4").keydown(check4);
		$("#content4").onpaste(check4);
	});
	$("#note").focus(function(){
		$("#note").keyup(checkn);
		$("#note").keydown(checkn);
		$("#note").onpaste(checkn);
	});
	function check0() {
		var str = $("#content0").val();
		var info = maxWord - str.length;
		info = info + "";
		if (info.indexOf('.') > 0)
			info = info.substring(0, info.indexOf('.'));
		if (str.length <= maxWord) {
			$("#info10").html("还能输入");
			$("#info00").html(info).css('color', 'gray');
			$('#button0').removeAttr("disabled");
		} else {
			info = info.substr(1)
			$("#info10").html("超出");
			$("#info00").html(info).css('color', 'red');
			$('#button0').attr('disabled',"true");
		}
    }
	
	function check1() {
		var str = $("#content1").val();
		var info = maxWord - str.length;
		info = info + "";
		if (info.indexOf('.') > 0)
			info = info.substring(0, info.indexOf('.'));
		if (str.length <= maxWord) {
			$("#info11").html("还能输入");
			$("#info01").html(info).css('color', 'gray');
			$('#button1').removeAttr("disabled");
		} else {
			info = info.substr(1)
			$("#info11").html("超出");
			$("#info01").html(info).css('color', 'red');
			$('#button1').attr('disabled',"true");
		}
	}
	
	function check2() {
		var str = $("#content2").val();
		var info = maxWord - str.length;
		info = info + "";
		if (info.indexOf('.') > 0)
			info = info.substring(0, info.indexOf('.'));
		if (str.length <= maxWord) {
			$("#info12").html("还能输入");
			$("#info02").html(info).css('color', 'gray');
			$('#button2').removeAttr("disabled");
		} else {
			info = info.substr(1)
			$("#info12").html("超出");
			$("#info02").html(info).css('color', 'red');
			$('#button2').attr('disabled',"true");
		}
	}
	
	function check3() {
		var str = $("#content3").val();
		var info = maxWord - str.length;
		info = info + "";
		if (info.indexOf('.') > 0)
			info = info.substring(0, info.indexOf('.'));
		if (str.length <= maxWord) {
			$("#info13").html("还能输入");
			$("#info03").html(info).css('color', 'gray');
			$('#button3').removeAttr("disabled");
		} else {
			info = info.substr(1)
			$("#info13").html("超出");
			$("#info03").html(info).css('color', 'red');
			$('#button3').attr('disabled',"true");
		}
	}
	
	function check4() {
		var str = $("#content4").val();
		var info = maxWord - str.length;
		info = info + "";
		if (info.indexOf('.') > 0)
			info = info.substring(0, info.indexOf('.'));
		if (str.length <= maxWord) {
			$("#info14").html("还能输入");
			$("#info04").html(info).css('color', 'gray');
			$('#button4').removeAttr("disabled");
		} else {
			info = info.substr(1)
			$("#info14").html("超出");
			$("#info04").html(info).css('color', 'red');
			$('#button4').attr('disabled',"true");
		}
	}
	
	function checkn() {
		var str = $("#note").val();
		var info = 600 - str.length;
		info = info + "";
		if (info.indexOf('.') > 0)
			info = info.substring(0, info.indexOf('.'));
		if (str.length <= 600) {
			$("#info1n").html("还能输入");
			$("#info0n").html(info).css('color', 'gray');
			$('#buttonn').removeAttr("disabled");
		} else {
			info = info.substr(1)
			$("#info1n").html("超出");
			$("#info0n").html(info).css('color', 'red');
			$('#buttonn').attr('disabled',"true");
		}
	}
	
	function ml_close_demo() {
		$('#float-news').animate({
	      	left: '-450px'
	    }, 300, function(){
	      	$('#float-open').delay(50).animate({
	        	left: '-2px'
	      	}, 300);
	    });
	}
	function ml_open_demo() {
		$('#float-open').animate({
	      	left: '-70px'
	    }, 100, function(){
	      	$('#float-news').delay(50).animate({
	        	left: '0px'
	      	}, 300);
	    });
	}
	function m2_close_demo() {
		$('#float-news2').animate({
	      	left: '-450px'
	    }, 300, function(){
	      	$('#float-open2').delay(50).animate({
	        	left: '-2px'
	      	}, 300);
	    });
	}
	function m2_open_demo() {
		$('#float-open2').animate({
	      	left: '-70px'
	    }, 100, function(){
	      	$('#float-news2').delay(50).animate({
	        	left: '0px'
	      	}, 300);
	    });
	}
	
	$('#float-close').click(function(){
	    ml_close_demo();
	    return false;
	});
	$('#open-btn').click(function(){
	    ml_open_demo();
	    return false;
	});
	$('#float-close2').click(function(){
	    m2_close_demo();
	    return false;
	});
	$('#open-btn2').click(function(){
	    m2_open_demo();
	    return false;
	});
	starHTMLMakerGrounp('starInfo',0,5);
	starHTMLMakerGrounp('starInfo',1,5);
	starHTMLMakerGrounp('starInfo',2,5);
	starHTMLMakerGrounp('starInfo',3,5);
	starHTMLMakerGrounp('starInfo',4,5);
})
</script>
</head>
<body>
<div class="weiduduan clearfix">
	<div class="float-open" id="float-open" style="left:-2px;top:75px; background:url(images/note.png) no-repeat;background-size:90% 90%;background-position:center;"><a class="open-btn" id="open-btn" href="javascript:void(0);">&gt;</a></div>
	<div class="float-news" id="float-news" style="left:-450px;top:25px">
		<a class="float-close" id="float-close" style="background:url(images/x.png) no-repeat left top;background-size:100% 100%;" href="javascript:void(0);">X</a>
		<div class="newslist">
			<h3>笔记</h3>
			<table width="290px" border="0">
				<tr>
					<textarea id="note" cols="40" rows="18" style="overflow: auto;"></textarea><!--笔记的textarea在这里的-->
				<tr>
				<tr>
					<td><input id="buttonn" type="submit" class="button" style="width:150px" value="保存笔记"/></td><!--笔记的提交按钮在这里的-->
					<td>
						<div style="vertical-align: bottom; height: 20px; line-height: 20px; margin: 0px;color: Gray;">
							<label id="info2n" style="float: right; font-size: 12px;">个字</label>
							<span id="info0n" style="float: right; font-size: 20px; font-weight: bold;">600</span>
							<label id="info1n" style="float: right; font-size: 12px;">还能输入</label>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<!--直接搜索外链不用管-->
	<div class="float-open" id="float-open2" style="left:-2px; top:480px;background:url(images/search.png) no-repeat;background-size:90% 90%;background-position:center;"><a class="open-btn" id="open-btn2" href="javascript:void(0);">&gt;</a></div>
	<div class="float-news" id="float-news2" style="left:-450px; top:430px; width:320px;height:175px">
		<a class="float-close" id="float-close2" style="background:url(images/x.png) no-repeat;background-size:100% 100%;" href="javascript:void(0);">X</a>
		<div class="newslist">
			<h3>搜索</h3>
			<ul>
				<li>
					<form id="bdfm" target="_blank" name="bdfm" method="get" action="http://www.baidu.com/s">
						<input type="text" id="search1" name="word" style="width:200px" />
						<input type="submit" class="button" style="width:100px" value="百度一下" />
					</form>			
				</li>
				<li>
					<form action="http://www.google.com/search" target="_blank" method="get">  
						<input type="text" name="q" size="20" maxlength="255" style="width:200px"  value="" />  
						<input type="submit" class="button" name="btnG" style="width:100px" value="Google一下" />  
					</form>  		
				</li>
				<li>
					<form action="http://www.bing.com/search" target="_blank" method="get">  
						<input type="text" name="q" size="20" maxlength="255" style="width:200px"  value="" />  
						<input type="submit" class="button" name="btnG" style="width:100px" value="Bing一下" />  
					</form>  		
				</li>
			</ul>
		</div>
	</div>
	<!--以上是直接搜索外链不用管-->
</div> <!-- weiduduan End -->



<div class="wrapper">
  <section id="home">
  <header>
    <h1>Immaculate</h1>
  </header>
  <div class="nav-container">
    <nav>
      <ul>
        <li><a href="#home" class="selected">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#shortcodes">Shortcodes</a></li>
        <li><a href="#gallery">Gallery</a></li>
      </ul>
      <div class="nav-left"></div>
      <div class="nav-right"></div>
      <div class="nav-above"></div>
    </nav>
  </div>
	
<select id="select"  style="width:300px;float:right" onchange="self.location.href=options[selectedIndex].value">
	<s:iterator value="#request.chapter_list" id = "chapter" status="st">
		<option value="showArticle.action?article_id=${article_id}&chapter_id=${chapter[0]}"
			 <s:if test="%{#chapter[0] == chapter_id}">selected="true"</s:if>
		>
			第<s:property value="1+#st.index"></s:property>章：<s:property value="#chapter[1]"></s:property>
		</option>
	</s:iterator>
	<!-- 
	<option value ="volvo">第一章：世界和平</option>
	<option value ="saab">第二章：我在这里</option>
	<option value="opel">第三章：放逐</option>
	<option value="audi">第四章：解放</option>
	 -->
</select>
<div class="banner" id="kakaFocus"> 
	<a class="btn_prev" title="上一个" href="#">Previous</a> 
	<a class="btn_next" title="下一个" href="#">Next</a>
	
	<div class="banner_pic"> 
		<ul>
			<li><a href="#"><img width="630" height="210" src="images/pic_01.jpg" alt="" /></a></li> 
			<li><a href="#"><img width="630" height="210" src="images/pic_02.jpg" alt="" /></a></li> 
			<li><a href="#"><img width="630" height="210" src="images/pic_03.jpg" alt="" /></a></li> 
			<li><a href="#"><img width="630" height="210" src="images/pic_04.jpg" alt="" /></a></li> 
			<li><a href="#"><img width="630" height="210" src="images/pic_05.jpg" alt="" /></a></li> 
			<li>
				<div class="cTextArea0" width="630" height="210"/><!--这里将会用来填充输入框 在本文件的61行处 countTextAreaMakerGrounp函数负责生成（在HTMLmaker中）-->
			</li>
		</ul> 
	</div>
	<div class="banner_info">
		<ul>
			<li>
				<h4><a href="#">快乐我的旅程，参观武汉可口可乐饮料有限公司</a></h4>
				<div class="ext" id="starInfo00"/>
			</li>
			<li>
				<h4><a href="#">巧口英语“力推”Club活动——？</a></h4>
				<div class="ext" id="starInfo01"/>
			</li>
			<li>
				<h4><a href="#">想学音乐应从什么时候开始？</a></h4>
				<div class="ext" id="starInfo02"/>
			</li>
			<li>
				<h4><a href="#">关于草原情全国小记者选拔赛通知。</a></h4>
				<div class="ext" id="starInfo03"/>
			</li>
			<li>
				<h4><a href="#">中国小记者新闻写作大赛？</a></h4>
				<div class="ext" id="starInfo04"/>
			</li>
			<li>
				<h4><a href="#">我的看法</a></h4>
				<div class="ext" id="starInfo05"/>
			</li>
		</ul>
	</div>
	<div class="banner_count">1</div>
</div><!--banner end-->

  </section>
  
  <s:iterator value="#request.paragraph_list" id="paragraphs_of_sequence" status="paragraph_list_st">
  	<section <s:if test="%{#paragraph_list_st.index() == 0}">id="shortcodes"</s:if> 
  		<s:if test="%{#paragraph_list_st.index() == 1}">id="about"</s:if>
  		<s:if test="%{#paragraph_list_st.index() == 2}">id="shortcodes"</s:if>
  		<s:if test="%{#paragraph_list_st.index() == 3}">id="gallery"</s:if>
  	>
 	
  	<div class="banner" id="kakaFocus${paragraphs_list_st.index() + 1}"> 
		<a class="btn_prev" title="上一个" href="#">Previous</a> 
		<a class="btn_next" title="下一个" href="#">Next</a> 
		<div class="banner_pic"> 
			<ul>
			  	<s:iterator value="#paragraphs_of_sequence" id="paragraph" status="paragraph_st">
			  		
					<li><a href="#"><textarea cols="85" rows="11" style="overflow: auto;"><s:property value="#paragraph.content"></s:property></textarea></a></li> 
					<!-- 
					<li><a href="#"><img width="630" height="210" src="images/pic_02.jpg" alt="" /></a></li> 
					<li><a href="#"><img width="630" height="210" src="images/pic_03.jpg" alt="" /></a></li> 
					<li><a href="#"><img width="630" height="210" src="images/pic_04.jpg" alt="" /></a></li> 
					<li><a href="#"><img width="630" height="210" src="images/pic_05.jpg" alt="" /></a></li> 
					 -->
				</s:iterator>
				<li>
					<div class="cTextArea${paragraphs_list_st.index()}" width="630" height="210"></div><!--这里将会用来填充输入框 在本文件的61行处 countTextAreaMakerGrounp函数负责生成（在HTMLmaker中）-->
				</li>
			</ul> 
		</div>
		<div class="banner_info">
			<ul>
				<s:iterator value="#paragraphs_of_sequence" id="paragraph" status="paragraph_st">
					<li>
						<h4><a href="#">快乐的旅程，参观武汉可口可乐饮料有限公司</a></h4>
						<div class="ext" id="starInfo%{#paragraphs_list_st.index() * 10 + #paragraph_st.index()}"></div>
					</li>
				</s:iterator>
			</ul>
		</div>
		<div class="banner_count">1</div>
	</div><!--banner end-->
  	
  	</section>
 </s:iterator>
  


</body>
</html>