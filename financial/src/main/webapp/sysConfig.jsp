<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>财务管理系统</title>
  <%@ include file="demo.jsp"%>
  <link rel="stylesheet" type="text/css" href="./layui/css/layui.css" media="all" />
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <fieldset class="layui-elem-field">
            <legend>员工管理 - 人事调动</legend>
            <div class="layui-field-box">
                <div class="layui-btn-group">
                    
                    <button class="layui-btn layui-btn-xs dw-refresh">
                        <i class="layui-icon">&#x1002;</i>刷新
                    </button>
                </div>	
                <hr>
                <form class="layui-form" action="">
                    <div class="layui-form-item">
                        <label class="layui-form-label">用户名</label>
                        <div class="layui-input-block">
                        <input type="text" readonly="readonly" name="title" style="width:190px;" required  lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
                        </div>
                    </div>
					
					<div class="layui-form-item">
                        <label class="layui-form-label">联系方式</label>
                        <div class="layui-input-block">
                        <input type="text" readonly="readonly" lay-verify="phone" name="phone" style="width:190px;"  placeholder="从数据库中查找放入" autocomplete="off" class="layui-input">
                        </div>
                    </div>
					
					<div class="layui-form-item">
                        <label class="layui-form-label">联系邮箱</label>
                        <div class="layui-input-block">
                        <input type="text" readonly="readonly" lay-verify="email" name="email" style="width:190px;"  placeholder="从数据库中查找放入" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    
                    <div class="layui-form-item">
                        <label class="layui-form-label">调整部门</label>
                        <div class="layui-input-block" style="width:190px;" >
                        <select name="city" >
                            <option value=""></option>
                            <option value="0">财务部</option>
                            <option value="1">采购部</option>
                            <option value="2">财务经理</option>
                            <option value="3">总经理</option>
                        </select>
                        </div>
                    </div>
                    
                    <div class="layui-form-item">
                        <label class="layui-form-label">性别</label>
                        <div class="layui-input-block">
                        <input type="radio" name="sex" value="0" title="性别从数据中查询" checked disabled>
                        </div>
                    </div>
                    
                    <div class="layui-form-item">
                        <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                        </div>
                    </div>
                </form>
            </div>
        </fieldset>
    </div>
  </div>
</div>
<script type="text/javascript" src="./js/jquery.min.js"></script>
<script type="text/javascript" src="./layui/layui.js"></script>
<script type="text/javascript" src="./js/sys_config.js"></script>
</body>
</html>