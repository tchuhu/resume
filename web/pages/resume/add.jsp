<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>添加会员-WeAdmin 1.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="../../static/css/font.css">
    <link rel="stylesheet" href="../../static/css/weadmin.css">
    <link rel="stylesheet" href="../../lib/layui/css/layui.css" media="all">
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="weadmin-body">
    <form class="layui-form" action="<%=request.getContextPath()%>/AddResumeServlet" method="post">
        <div class="layui-form-item">
            <div class="layui-row">
                <div class="layui-col-xs3  ">
                    <label for="username" class="layui-form-label">
                        <span class="we-red">*</span>姓名
                    </label>
                    <div class="layui-input-inline" style="width: 200px;">
                        <input type="text" id="username" name="username" id="username" lay-verify="required|nikename"
                               autocomplete="off"
                               class="layui-input">
                    </div>
                </div>
                <div class="layui-col-xs3 ">
                    <label for="L_sex" class="layui-form-label">性别</label>
                    <div class="layui-input-block" id="L_sex" name="sex">
                        <input type="radio" name="sex" value="男" title="男" checked>
                        <input type="radio" name="sex" value="女" title="女">
                    </div>
                </div>
                <div class="layui-col-xs3 ">
                    <label class="layui-form-label">民族:</label>
                    <div class="layui-input-block" style="width: 200px;">
                        <select name="nation" id="nation"  lay-verify="required">
                            <option value="" selected=""></option>
                            <option value="1">汉族</option>
                            <option value="2">回族</option>
                            <option value="3">满族</option>
                        </select>
                    </div>
                </div>
                <div class="layui-col-xs3 ">
                    <label class="layui-form-label">
                        <span class="we-red">*</span>学历:
                    </label>
                    <div class="layui-input-block" style="width: 200px;">
                        <select name="education" id="education"  lay-verify="required">
                            <option value="" selected=""></option>
                            <option value="1">本科</option>
                            <option value="2">专科</option>
                            <option value="3">研究生</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-row">
                <div class="layui-col-xs3 ">
                    <label class="layui-form-label">
                        <span class="we-red">*</span>籍贯:
                    </label>
                    <div class="layui-input-block" style="width: 200px;">
                        <select name="location" id="location"  lay-verify="required">
                            <option value="" selected=""></option>
                            <option value="1">陕西</option>
                            <option value="2">北京</option>
                            <option value="3">天津</option>
                        </select>
                    </div>
                </div>
                <div class="layui-col-xs3 ">
                    <label class="layui-form-label">
                        <span class="we-red">*</span>政治面貌:
                    </label>
                    <div class="layui-input-block" style="width: 200px;">
                        <select name="political" id="political"  lay-verify="required">
                            <option value="" selected=""></option>
                            <option value="1">团员</option>
                            <option value="2">党员</option>
                            <option value="3">群众</option>
                        </select>
                    </div>
                </div>
                <div class="layui-col-xs3 ">
                    <label class="layui-form-label">
                        <span class="we-red">*</span>出生年月:
                    </label>
                    <div class="layui-input-inline " style="width: 200px;">
                        <input type="text" name="birth" id="birth" lay-verify="date" placeholder="yyyy-MM-dd"
                               autocomplete="off" class="layui-input" lay-verify="required">
                    </div>
                </div>
                <div class="layui-col-xs3 ">
                    <label for="phone" class="layui-form-label">
                        <span class="we-red">*</span>手机
                    </label>
                    <div class="layui-input-inline" style="width: 200px;">
                        <input type="text" id="phone" name="phone" lay-verify="required|phone" autocomplete="off"
                               class="layui-input">
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-row">
                <div class="layui-col-xs3 ">
                    <label for="email" class="layui-form-label">
                        <span class="we-red">*</span>邮箱:
                    </label>
                    <div class="layui-input-inline" style="width: 200px;">
                        <input type="text" id="email" name="email" lay-verify="required|email" autocomplete="off"
                               class="layui-input">
                    </div>
                </div>
                <div class="layui-col-xs3 ">
                    <label for="intention" class="layui-form-label">
                        <span class="we-red">*</span>求职意向:
                    </label>
                    <div class="layui-input-inline" style="width: 200px;">
                        <input type="text" id="intention" name="intention"  autocomplete="off"
                               class="layui-input" lay-verify="required">
                    </div>
                </div>
                <div class="layui-col-xs6 ">
                    <label class="layui-form-label">兴趣爱好:</label>
                    <div class="layui-input-block" >
                        <input type="checkbox" name="hobby"    value="1" title="学习" >
                        <input type="checkbox" name="hobby"    value="2" title="音乐" >
                        <input type="checkbox" name="hobby"     value="3" title="游戏">
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">上传图片:</label>
            <div class="layui-input-block ">
                <input type="file" name="photo" id="photo" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">项目经验:</label>
            <div class="layui-input-block">
                <textarea placeholder="请输入内容" class="layui-textarea" id="experience"></textarea>
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">个人技能:</label>
            <div class="layui-input-block">
                <textarea placeholder="请输入内容" class="layui-textarea" id="skill"></textarea>
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">荣誉奖励:</label>
            <div class="layui-input-block">
                <textarea placeholder="请输入内容" class="layui-textarea" id="honor"></textarea>
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">自我评价:</label>
            <div class="layui-input-block">
                <textarea placeholder="请输入内容" class="layui-textarea" id="evaluate"></textarea>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-row">
                <div class="layui-form-item layui-col-xs3 layui-col-lg-offset6 ">
                    <button class="layui-btn layui-btn-normal" lay-filter="add" lay-submit="">确认</button>
                </div>
            </div>
        </div>
    </form>
</div>


</form>
</div>
<script src="../../lib/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="../../static/js/admin.js"></script>
<script>
    layui.use(['form', 'layer', 'laydate', 'upload'], function () {
        $ = layui.jquery;
        var form = layui.form,
            laydate = layui.laydate,
            upload = layui.upload,
            layer = layui.layer;

        //日期
        laydate.render({
            elem: '#birth'
        });

        //自定义验证规则
        form.verify({
            nikename: function (value) {
                if (value.length == 0) {
                    return '请填写姓名';
                }
            }
        });
        form.on('checkbox', function(data){

            var arr =[];
            $("input:checkbox[name='hobby']:checked").each(function(i){
                arr.push($(this).val());
            });
            console.log("===> "+arr)

        });

        //监听提交
        form.on('submit(add)', function (data) {
            var requestData = JSON.stringify(data.field);
            console.log(requestData);
            console.log(data.field.hobby);
            var username = $("#username").val();
            var sex = $('input:radio[name="sex"]:checked').val();
            var nation = $("#nation").val();
            var education=$("#education").val();
            var location=$("#location").val();
            var political=$("#political").val();
            var birth=$("#birth").val();
            var phone = $("#phone").val();
            var email = $("#email").val();
            var intention = $("#intention").val();
          //  var arr =[];
            // $("input:checkbox[name='hobby']:checked").each(function(i){
            //     arr.push($(this).val());
            // });
            // console.log(arr)
            //将数组元素连接起来转化为字符串
            var hobby=arr.join(',');
            var experience = $("#experience").val();
            var skill = $("#skill").val();
            var honor = $("#honor").val();
            var evaluate = $("#evaluate").val();
            var photo = $("#photo").val();

            var a= "姓名:"+username+"性别:"+sex+"民族:"+nation+"学历:"+education+"籍贯:"+location+
                "政治面貌:"+political+"出生年月:"+birth+"电话:"+phone+"邮箱:"+email+"求职意向:"+intention+
                    "兴趣爱好:"+hobby+"项目经验:"+experience+"个人技能:"+skill+"荣誉奖励:"+honor+"自我评价:"+evaluate+"图片名:"+photo;
            console.log(a);

            var index = parent.layer.getFrameIndex(window.name);
            parent.location.reload();
            parent.layer.close(index);
            //发异步，把数据提交给php
//             layer.alert("增加成功", {
//                 icon: 6
//             }, function () {
//                 // 获得frame索引
//                 var index = parent.layer.getFrameIndex(window.name);
// //						parent.location.reload();
//                 parent.$('input[name="username"]').val(f.username);
//                 parent.$('input[name="sex"]').val(f.sex);
//                 parent.$('input[name="email"]').val(f.email);
//                 parent.$('input[name="phone"]').val(f.phone);
//                 parent.$('input[name="pass"]').val(f.pass);
//                 parent.addMember();
//                 //关闭当前frame
//                 parent.layer.close(index);
//             });
            return false;
        });

    });
</script>
</body>

</html>