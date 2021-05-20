<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

	<head>
		<meta charset="UTF-8">
		<title>欢迎页面-WeAdmin Frame型后台管理系统-WeAdmin 1.0</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<link rel="stylesheet" href="../static/css/font.css">
		<link rel="stylesheet" href="../static/css/weadmin.css">


	</head>

	<body>
		<div class="weadmin-body">
			<blockquote class="layui-elem-quote">欢迎使用WeAdmin 后台模版！</blockquote>
<!--			<div class="layui-fluid" style="overflow: hidden;">-->
<!--				<div class="layui-row layui-col-space15">-->
<!--					<div class="layui-col-md8">-->
<!--						<div class="layui-card">-->
<!--							<div class="layui-card-header">快捷方式</div>-->
<!--							<div class="layui-card-body">-->
<!--								<div class="layui-carousel weadmin-shortcut" lay-filter="shortcut" lay-indicator="inside" lay-arrow="none" style="width: 100%; height: 280px;">-->
<!--									<div carousel-item="">-->
<!--										<ul class="layui-row layui-col-space10 layui-this">-->
<!--											<li class="layui-col-xs3">-->
<!--												<a href="http://www.layui.com/doc/" target="_blank">-->
<!--													<i class="layui-icon">&#xe705;</i>-->
<!--													<cite>Layui文档</cite>-->
<!--													<p><span>Layui作者一个字节一个字节撸出来的精华，数以万计用户的指明灯</span></p>-->
<!--												</a>-->
<!--											</li>-->
<!--											<li class="layui-col-xs3">-->
<!--												<a href="http://www.layui.com/admin/" target="_blank">-->
<!--													<i class="layui-icon">&#xe735;</i>-->
<!--													<cite>LayuiAdmin</cite>-->
<!--													<p><span>Layui官方出品的专业后台管理模板</span></p>-->
<!--												</a>-->
<!--											</li>-->
<!--											<li class="layui-col-xs3">-->
<!--												<a href="http://layim.layui.com/" target="_blank">-->
<!--													<i class="layui-icon">&#xe606;</i>-->
<!--													<cite>LayIM</cite>-->
<!--													<p><span>Layui官方出品的一款Web即时通讯前端解决方案</span></p>-->
<!--												</a>-->
<!--											</li>-->
<!--											<li class="layui-col-xs3">-->
<!--												<a href="http://fly.layui.com/case/u/777504" target="_blank">-->
<!--													<i class="layui-icon">&#xe6c6;</i>-->
<!--													<cite>案例点赞</cite>-->
<!--													<p><span>谢谢关注，更欢迎提意见，虽然我不一定能做好~~</span></p>-->
<!--												</a>-->
<!--											</li>-->
<!--											-->

<!--										</ul>-->
<!--										<ul class="layui-row layui-col-space10">-->
<!--											<li class="layui-col-xs3">-->
<!--												<a href="https://github.com/WangEn/WeAdmin" target="_blank">-->
<!--													<i class="layui-icon">&#xe600;</i>-->
<!--													<cite>Github下载</cite>-->
<!--												</a>-->
<!--											</li>-->
<!--											-->
<!--											<li class="layui-col-xs3">-->
<!--												<a href="https://gitee.com/lovetime/WeAdmin" target="_blank">-->
<!--													<i class="layui-icon">&#xe62c;</i>-->
<!--													<cite>码云下载</cite>-->
<!--												</a>-->
<!--											</li>-->
<!--											<li class="layui-col-xs3">-->
<!--												<a href="javascript:;" target="_blank">-->
<!--													<i class="layui-icon layui-icon-set"></i>-->
<!--													<cite>设置</cite>-->
<!--												</a>-->
<!--											</li>-->
<!--											<li class="layui-col-xs3">-->
<!--												<a href="javascript:;" target="_blank">-->
<!--													<i class="layui-icon layui-icon-set"></i>-->
<!--													<cite>设置</cite>-->
<!--												</a>-->
<!--											</li>-->
<!--											-->
<!--										</ul>-->

<!--									</div>-->
<!--									<div class="layui-carousel-ind">-->
<!--										<ul>-->
<!--											<li class="layui-this"></li>-->
<!--											<li></li>-->
<!--										</ul>-->
<!--									</div>-->
<!--									&lt;!&ndash;<button class="layui-icon layui-carousel-arrow" lay-type="sub"></button>-->
<!--									<button class="layui-icon layui-carousel-arrow" lay-type="add"></button>&ndash;&gt;-->
<!--								</div>-->

<!--							</div>-->
<!--						</div>-->
<!--					</div>-->
<!--					<div class="layui-col-md4">-->
<!--						<div class="layui-card">-->
<!--							<div class="layui-card-header">-->
<!--								作者叨叨-->
<!--								<i class="layui-icon" style="color: #FF5722;">&#xe756;</i>-->
<!--							</div>-->
<!--							<div class="layui-card-body layui-text weadmin-text">-->
<!--								<p>Layui发版以来一直受到不少猿的推崇，作为其中的小白，我也一直在推崇和学习中挣扎，WeAdmin无他，也只是小白实操的一个记录。</p>-->
<!--								<p>更多的疑难解答，建议移步查看<a href="http://www.layui.com/doc/" target="_blank">layui文档</a>或者进入<a href="http://fly.layui.com/" target="_blank">Fly社区</a>搜索。</p>-->
<!--								<p>更完善的商业使用，强烈建议移步<a href="http://www.layui.com/admin/" target="_blank">layuiAdmin</a></p>				-->
<!--							</div>-->
<!--						</div>-->
<!--					</div>-->
<!--				</div>-->
<!--			</div>-->
			<div style="clear: both;overflow: hidden; margin-top: 10px;">
				<blockquote class="layui-elem-quote">感谢Layui,百度Echarts,jquery,及
					<a href="http://fly.layui.com/case/2018/" target="_blank">LayUI相关案例</a>
				</blockquote>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="../lib/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript">
		layui.extend({
			admin: '{/}../static/js/admin',
		});
		layui.use(['jquery', 'element','util', 'admin', 'carousel'], function() {
			var element = layui.element,
				$ = layui.jquery,
				carousel = layui.carousel,
				util = layui.util,
				admin = layui.admin;
			//建造实例
			carousel.render({
				elem: '.weadmin-shortcut'
				,width: '100%' //设置容器宽度				
				,arrow: 'none' //始终显示箭头	
				,trigger: 'hover'
				,autoplay:false
			});
			
			carousel.render({
				elem: '.weadmin-notice'
				,width: '100%' //设置容器宽度				
				,arrow: 'none' //始终显示箭头	
				,trigger: 'hover'
				,autoplay:true
			});
			
			$(function(){
				setTimeAgo(2018,0,1,13,14,0,'#firstTime');
				setTimeAgo(2019,5,20,16,0,0,'#lastTime');
			});
			function setTimeAgo(y, M, d, H, m, s,id){
			    var str = util.timeAgo(new Date(y, M||0, d||1, H||0, m||0, s||0));
			    $(id).html(str);
			    console.log(str);
			 };
		});
	</script>

</html>