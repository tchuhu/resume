<%--
  Created by IntelliJ IDEA.
  User: tchuhu
  Date: 2021/5/19
  Time: 21:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>简历管理系统</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/layui.css"/>
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header ">
        <a href="">
        <div class="layui-logo layui-hide-xs layui-bg-black">
            <img src="<%=request.getContextPath()%>/static/image/xsyu.jpg" class="layui-nav-img">
            简历管理系统</div></a>
        <ul class="layui-nav layui-layout-left">
<%--            <li class="layui-nav-item layui-show-xs-inline-block" lay-header-event="menuLeft">--%>
<%--                <i class="layui-icon layui-icon-spread-left"></i>--%>
<%--            </li>--%>
<%--            <li class="layui-nav-item layui-hide-xs">--%>
<%--               <a>简历列表</a></li>--%>
<%--            <li class="layui-nav-item layui-hide-xs"><a href="">nav 2</a></li>--%>
<%--            <li class="layui-nav-item layui-hide-xs"><a href="">nav 3</a></li>--%>
<%--            <li class="layui-nav-item">--%>
<%--                <a href="javascript:;">nav groups</a>--%>
<%--                <dl class="layui-nav-child">--%>
<%--                    <dd><a href="">menu 11</a></dd>--%>
<%--                    <dd><a href="">menu 22</a></dd>--%>
<%--                    <dd><a href="">menu 33</a></dd>--%>
<%--                </dl>--%>
<%--            </li>--%>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item layui-hide layui-show-md-inline-block">
                <a href="javascript:;">
                    tester
                </a>
<%--                姓名鼠标悬浮下拉框--%>
<%--                <dl class="layui-nav-child">--%>
<%--                    <dd><a href="">Your Profile</a></dd>--%>
<%--                    <dd><a href="">Settings</a></dd>--%>
<%--                    <dd><a href="">Sign out</a></dd>--%>
<%--                </dl>--%>
            </li>
<%--            右边...--%>
<%--            <li class="layui-nav-item" lay-header-event="menuRight" lay-unselect>--%>
<%--                <a href="javascript:;">--%>
<%--                    <i class="layui-icon layui-icon-more-vertical"></i>--%>
<%--                </a>--%>
<%--            </li>--%>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">简历管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="<%=request.getContextPath()%>/page/resumelist.html" target="_top">简历列表</a></dd>
                        <dd><a href="javascript:;">添加简历</a></dd>
                    </dl>
                </li>
<%--                <li class="layui-nav-item">--%>
<%--                    <a href="javascript:;">menu group 2</a>--%>
<%--                    <dl class="layui-nav-child">--%>
<%--                        <dd><a href="javascript:;">list 1</a></dd>--%>
<%--                        <dd><a href="javascript:;">list 2</a></dd>--%>
<%--                        <dd><a href="">超链接</a></dd>--%>
<%--                    </dl>--%>
<%--                </li>--%>
<%--                <li class="layui-nav-item"><a href="javascript:;">click menu item</a></li>--%>
<%--                <li class="layui-nav-item"><a href="">the links</a></li>--%>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">内容主体区域。记得修改 layui.css 和 js 的路径</div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        底部固定区域
    </div>
</div>
<script src="<%=request.getContextPath()%>/static/layui.js"></script>
<script>
    //JS
    layui.use(['element', 'layer', 'util'], function(){
        var element = layui.element
            ,layer = layui.layer
            ,util = layui.util
            ,$ = layui.$;

        //头部事件
        // util.event('lay-header-event', {
        //     //左侧菜单事件
        //     menuLeft: function(othis){
        //         layer.msg('展开左侧菜单的操作', {icon: 0});
        //     }
        //     ,menuRight: function(){
        //         layer.open({
        //             type: 1
        //             ,content: '<div style="padding: 15px;">处理右侧面板的操作</div>'
        //             ,area: ['260px', '100%']
        //             ,offset: 'rt' //右上角
        //             ,anim: 5
        //             ,shadeClose: true
        //         });
        //     }
        //});

    });
</script>
</body>
</html>