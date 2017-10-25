<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>车位添加</title>
    <link rel="stylesheet" href="/CBD_port_management_sec/CBD_port_manager/manager/css/style.css"/>
    <link rel="stylesheet" href="/CBD_port_management_sec/CBD_port_manager/manager/css/yzccss/addPark.css"/>
    <link rel="stylesheet" href="/CBD_port_management_sec/CBD_port_manager/manager/css/font.css">
    <link rel="stylesheet" href="/CBD_port_management_sec/CBD_port_manager/manager/css/xadmin.css">
    <link rel="stylesheet" href="/CBD_port_management_sec/CBD_port_manager/manager/css/swiper.min.css">
    <script src="/CBD_port_management_sec/CBD_port_manager/manager/js/jquery-1.8.0.min.js"></script>
    <script src="/CBD_port_management_sec/CBD_port_manager/manager/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/CBD_port_management_sec/CBD_port_manager/manager/js/xadmin.js"></script>
    <script type="text/javascript" src="/CBD_port_management_sec/CBD_port_manager/manager/js/swiper.jquery.min.js"></script>
    <script src="/CBD_port_management_sec/CBD_port_manager/manager/js/yzcjs/addPark.js"></script>
</head>
<body style="background-color: transparent;background-image: none">
<xblock>
    <a href="javascript:void(0)" style="color: white">CBD车位管理</a>&nbsp;->
    <a href="javascript:void(0)" style="color: white">CBD车位添加</a>
</xblock>

<div>
	<div class="btnDiv">
		<button class="layui-btn" type="button" id="singleChoice">单个添加车位121</button>
	    <button class="layui-btn" type="button" id="batchChoice">批量添加车位</button>
    </div>
    <br/><br/><br/>
    <div id="singleAdd">
	    <form action="../../../../../singleAddCarport" method="post" id="singleAddForm" class="layui-form layui-form-pane">
	    	<h1 style="font-size: 20px;">单个添加车位</h1>
	        <table class="tab">
	            <tr>
	                <td><label class="layui-form-label">车位类型：</label></td>
	                <td class="tdinp">
	                	<select class="layui-input" id="type" lay-verify="required" lay-search="" name="type" lay-filter="type">
						     <option value="">-请选择-</option>
						     <option value="CBD车位">CBD车位</option>
						     <option value="第三方车位">第三方车位</option>
						 </select>
	                </td>
	            </tr>
	            <tr>
	                <td class="character">
	                	<label class="layui-form-label">车位地址：</label>
	                	<input type="hidden" id="hidOpcatId" name="outPactId" value="" />
	                </td>
	                <td class="tdinp" id="carportAddress">
	                	<input type="text" id="singAddress" name="address" lay-verify="required" autocomplete="off" placeholder="车位地址"  class="layui-input"/>
	                </td>
	            </tr>
	            <tr>
	                <td><label class="layui-form-label">车位编号：</label></td>
	                <td class="tdinp" id="carportCode">
	                	<input type="text" id="singCode" name="code" lay-verify="required" autocomplete="off" placeholder="车位编号" class="layui-input"/>
	                </td>
	            </tr>
	            <tr>
	           		<td colspan="2"><button class="layui-btn" type="button" lay-submit lay-filter="singleAdd" id="singlebtn">添加</button></td>
	            </tr>
	        </table>
        </form>
    </div>
    
    <div id="batchAdd">
		<form action="../../../../../batchAddCarport" method="post" id="batchAddForm" class="layui-form layui-form-pane">
			<h1 style="font-size: 20px;">批量添加车位</h1>
			<table class="tab">
				<tr>
	                <td><label class="layui-form-label">车位类型：</label></td>
	                <td class="tdinp">
	                	<select class="layui-input" id="batchtype" lay-verify="required" lay-search="" name="batchtype" lay-filter="batchtype">
						     <option value="">-请选择-</option>
						     <option value="CBD车位">CBD车位</option>
						     <option value="第三方车位">第三方车位</option>
						 </select>
						 <input type="hidden" name="type" id="hidBatchType" value=""/>
	                </td>
	            </tr>
				<tr>
				    <td class="character">
				    	<label class="layui-form-label">车位地址：</label>
				    	<input type="hidden" id="hidbatchId" name="outPactId" value="" />
				    </td>
				    <td class="tdinp" id="carportbatchAddress"><input type="text" id="batchAddress" name="address" class="layui-input" lay-verify="required" autocomplete="off" placeholder="车位地址" /></td>
				</tr>
				<tr>
				    <td><label class="layui-form-label">区域编号：</label></td>
				    <td class="tdinp"><input type="text" id="areaCode" name="areaCode" class="layui-input" lay-verify="required" autocomplete="off" placeholder="车位区域编号" /></td>
				</tr>
				<tr>
				    <td><label class="layui-form-label">起始号：</label></td>
				    <td class="tdinp"><input type="text" id="startCode" name="startCode" class="layui-input" lay-verify="number" autocomplete="off" placeholder="车位起始号"/></td>
				</tr>
				<tr>
				    <td><label class="layui-form-label">车位总数：</label></td>
				    <td class="tdinp"><input type="text" id="carPortNums" name="carPortNums" class="layui-input" lay-verify="number" autocomplete="off" placeholder="车位总数"/></td>
				</tr>
				<tr>
	           		<td><button class="layui-btn" type="button" lay-submit lay-filter="batchAdd" id="batchbtn">添加</button></td>
	            </tr>
			</table>
		 </form>
    </div>
    
</div>
</body>
</html>