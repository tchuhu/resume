<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>简历列表</title>
    <meta name="renderer" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <link rel="stylesheet" href="../../static/css/font.css"/>
    <link rel="stylesheet" href="../../static/css/weadmin.css"/>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="weadmin-body">
	<div class="layui-row">
		<form class="layui-form layui-col-md12 we-search">
			简历搜索：
			<div class="layui-inline">
				<input class="layui-input" placeholder="开始日" name="start" id="start"/>
			</div>
			<div class="layui-inline">
				<input class="layui-input" placeholder="截止日" name="end" id="end"/>
			</div>
<%--			<div class="layui-inline">--%>
<%--				<input type="text" name="username" placeholder="请输入用户名" autocomplete="off" class="layui-input"/>--%>
<%--			</div>--%>
			<button class="layui-btn" lay-submit="" lay-filter="sreach">
				<i class="layui-icon layui-icon-search"></i>
			</button>
		</form>
	</div>
	<div class="weadmin-block">
		<table class="layui-hide" id="test" lay-filter="test"></table>
	</div>
</div>

<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button class="layui-btn " onclick="WeAdminShow('添加简历','add.jsp')"><i class="layui-icon"></i>添加</button>
    </div>
</script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

<script src="../../lib/layui/layui.js" charset="utf-8"></script>
<script src="../../static/js/eleDel.js" type="text/javascript" charset="utf-8"></script>
<script type="text/html" id="table_index">
	{{d.LAY_TABLE_INDEX+1}}
</script>
<script>
	layui.use('table', function(){
		var table = layui.table;

		table.render({
			elem: '#test'
			,url:'/test/table/demo1.json'
			,toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
			,defaultToolbar: ['filter', 'exports', 'print', { //自定义头部工具栏右侧图标。如无需自定义，去除该参数即可
				title: '提示'
				,layEvent: 'LAYTABLE_TIPS'
				,icon: 'layui-icon-tips'
			}]
			,title: '用户数据表'
			,cols: [[
				{type: 'checkbox', fixed: 'left'}
				,{field:"index",title:'序号',width:80, fixed: 'left', unresize: true, sort: true,templet:"#table_index"}
				,{field:'id', title:'ID', width:80 , unresize: true, sort: true}
				,{field:'username', title:'用户名', width:120, edit: 'text'}
				,{field:'email', title:'邮箱', width:150, edit: 'text', templet: function(res){
						return '<em>'+ res.email +'</em>'
					}}
				,{field:'sex', title:'性别', width:80, edit: 'text', sort: true}
				,{field:'city', title:'城市', width:100}
				,{field:'sign', title:'签名'}
				,{field:'experience', title:'积分', width:80, sort: true}
				,{field:'ip', title:'IP', width:120}
				,{field:'logins', title:'登入次数', width:100, sort: true}
				,{field:'joinTime', title:'加入时间', width:120}
				,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:150}
			]]
			,page: true
		});

		//头工具栏事件
		table.on('toolbar(test)', function(obj){
			var checkStatus = table.checkStatus(obj.config.id);
			switch(obj.event){
				case 'getCheckData':
					var data = checkStatus.data;
					layer.alert(JSON.stringify(data));
					break;
				case 'getCheckLength':
					var data = checkStatus.data;
					layer.msg('选中了：'+ data.length + ' 个');
					break;
				case 'isAll':
					layer.msg(checkStatus.isAll ? '全选': '未全选');
					break;

					//自定义头工具栏右侧图标 - 提示
				case 'LAYTABLE_TIPS':
					layer.alert('这是工具栏右侧自定义的一个图标按钮');
					break;
			};
		});

		//监听行工具事件
		table.on('tool(test)', function(obj){
			var data = obj.data;
			//console.log(obj)
			if(obj.event === 'del'){
				layer.confirm('真的删除行么', function(index){
					obj.del();
					layer.close(index);
				});
			} else if(obj.event === 'edit'){
				layer.prompt({
					formType: 2
					,value: data.email
				}, function(value, index){
					obj.update({
						email: value
					});
					layer.close(index);
				});
			}
		});
	});
</script>
<!--面包屑	-->
<!--		<div class="weadmin-nav">-->
<!--			<span class="layui-breadcrumb">-->
<!--				<a href="javascript:;">首页</a> <a href="javascript:;">会员管理</a>-->
<!--				<a href="javascript:;"> <cite>会员列表</cite></a>-->
<!--			</span>-->
<!--			<a class="layui-btn layui-btn-sm" style="margin-top:3px;float:right" href="javascript:location.replace(location.href);"-->
<!--			 title="刷新">-->
<!--				<i class="layui-icon layui-icon-refresh"></i>-->
<!--				&lt;!&ndash; <i class="layui-icon" style="line-height:30px">&#x1002;</i> &ndash;&gt;-->
<!--			</a>-->
<!--		</div>-->

<!--		<div class="weadmin-body">-->
<!--			<div class="layui-row">-->
<!--				<form class="layui-form layui-col-md12 we-search">-->
<!--					会员搜索：-->
<!--					<div class="layui-inline">-->
<!--						<input class="layui-input" placeholder="开始日" name="start" id="start" />-->
<!--					</div>-->
<!--					<div class="layui-inline">-->
<!--						<input class="layui-input" placeholder="截止日" name="end" id="end" />-->
<!--					</div>-->
<!--					<div class="layui-inline">-->
<!--						<input type="text" name="username" placeholder="请输入用户名" autocomplete="off" class="layui-input" />-->
<!--					</div>-->
<!--					<button class="layui-btn" lay-submit="" lay-filter="sreach">-->
<!--						<i class="layui-icon layui-icon-search"></i>-->
<!--					</button>-->
<!--				</form>-->
<!--			</div>-->
<!--			<div class="weadmin-block">-->
<!--				<button class="layui-btn layui-btn-danger" onclick="delAll()">-->
<!--					<i class="layui-icon layui-icon-delete"></i>批量删除-->
<!--				</button>-->
<!--				<button class="layui-btn" onclick="WeAdminShow('添加用户','./add.html',600,400)">-->
<!--					<i class="layui-icon layui-icon-add-circle-fine"></i>添加-->
<!--				</button>-->
<!--				<span class="fr" style="line-height:40px">共有数据：88 条</span>-->
<!--			</div>-->
<!--			<table class="layui-table" id="memberList">-->
<!--				<thead>-->
<!--					<tr>-->
<!--						<th>-->
<!--							<div class="layui-unselect header layui-form-checkbox" lay-skin="primary">-->
<!--								<i class="layui-icon">&#xe605;</i>-->
<!--							</div>-->
<!--						</th>-->
<!--						<th>ID</th>-->
<!--						<th>用户名</th>-->
<!--						<th>性别</th>-->
<!--						<th>手机</th>-->
<!--						<th>邮箱</th>-->
<!--						<th>地址</th>-->
<!--						<th>加入时间</th>-->
<!--						<th>状态</th>-->
<!--						<th>操作</th>-->
<!--					</tr>-->
<!--				</thead>-->
<!--				<tbody>-->
<!--					<tr data-id="1">-->
<!--						<td>-->
<!--							<div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id="1">-->
<!--								<i class="layui-icon">&#xe605;</i>-->
<!--							</div>-->
<!--						</td>-->
<!--						<td>1</td>-->
<!--						<td>小张</td>-->
<!--						<td>男</td>-->
<!--						<td>17600000000</td>-->
<!--						<td>admin@mail.com</td>-->
<!--						<td>北京市 海淀区</td>-->
<!--						<td>2017-01-01 11:11:42</td>-->
<!--						<td class="td-status">-->
<!--							<span class="layui-btn layui-btn-normal layui-btn-xs">已启用</span>-->
<!--						</td>-->
<!--						<td class="td-manage">-->
<!--							<a onclick="member_stop(this,'10001')" href="javascript:;" title="启用">-->
<!--								<i class="layui-icon layui-icon-download-circle"></i>-->
<!--							</a>-->
<!--							<a title="编辑" onclick="WeAdminEdit('编辑','./edit.html', 1, 600, 400)" href="javascript:;">-->
<!--								<i class="layui-icon layui-icon-edit"></i>-->
<!--							</a>-->
<!--							<a onclick="WeAdminShow('修改密码','./password.html',600,400)" title="修改密码" href="javascript:;">-->
<!--								<i class="layui-icon layui-icon-util"></i>-->
<!--							</a>-->
<!--							<a title="删除" onclick="member_del(this,'要删除的id')" href="javascript:;">-->
<!--								<i class="layui-icon layui-icon-delete"></i>-->
<!--							</a>-->
<!--						</td>-->
<!--					</tr>-->
<!--					<tr data-id="2">-->
<!--						<td>-->
<!--							<div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id="2">-->
<!--								<i class="layui-icon">&#xe605;</i>-->
<!--							</div>-->
<!--						</td>-->
<!--						<td>2</td>-->
<!--						<td>小明</td>-->
<!--						<td>女</td>-->
<!--						<td>13000000000</td>-->
<!--						<td>admin@mail.com</td>-->
<!--						<td>北京市 海淀区</td>-->
<!--						<td>2017-01-01 11:11:42</td>-->
<!--						<td class="td-status">-->
<!--							<span class="layui-btn layui-btn-normal layui-btn-xs">已启用</span>-->
<!--						</td>-->
<!--						<td class="td-manage">-->
<!--							<a onclick="member_stop(this,'10001')" href="javascript:;" title="启用">-->
<!--								<i class="layui-icon layui-icon-download-circle"></i>-->
<!--							</a>-->
<!--							<a title="编辑" onclick="WeAdminEdit('编辑','./edit.html', 2, 600, 400)" href="javascript:;">-->
<!--								<i class="layui-icon layui-icon-edit"></i>-->
<!--							</a>-->
<!--							<a onclick="WeAdminShow('修改密码','./password.html',600,400)" title="修改密码" href="javascript:;">-->
<!--								<i class="layui-icon layui-icon-util"></i>-->
<!--							</a>-->
<!--							<a title="删除" onclick="member_del(this,'要删除的id')" href="javascript:;">-->
<!--								<i class="layui-icon layui-icon-delete"></i>-->
<!--							</a>-->
<!--						</td>-->
<!--					</tr>-->
<!--				</tbody>-->
<!--			</table>-->
<!--			<div class="page">-->
<!--				<div>-->
<!--					<a class="prev" href="">&lt;&lt;</a> <a class="num" href="">1</a>-->
<!--					<span class="current">2</span> <a class="num" href="">3</a>-->
<!--					<a class="num" href="">489</a> <a class="next" href="">&gt;&gt;</a>-->
<!--				</div>-->
<!--			</div>-->
<!--		</div>-->
<!--<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>-->

</body>
</html>
