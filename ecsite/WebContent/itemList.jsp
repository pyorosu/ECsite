<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />

<title>ItemList画面</title>

<style type="text/css">
body{
margin:0;
padding:0;
line-height:1.6;
letter-spacing:1px;
font-family:Verdana,Helvetica,sans-serif;
font-size:12px;
color:#333;
background:#fff;
}

table{
text-align:center;
margin:0 auto;
}

#top{
	width:100%;
	text-align:center;
	margin-top:30px;
}
#top h2{
	position:relative;
	display:inline-block;
	padding:24px 64px;
}
#top h2:before, #top h2:after{
	content:"";
	display:block;
	width:50%;
	height:4px;
	border-top:1px solid #111;
	position:absolute;
	top:0;
}
#top h2:before{left:-24px;}
#top h2:after{right:-24px;}
#top h2 span{
	display:block;
	width:4px;height:4px;
	border:2px solid #111;
	-webkit-transform:rotate(45deg);
	transform:rotate(45deg);
	position:absolute;
	top:-4px;
	left:50%;
	margin-left:-4px;
}

#header{
width:100%;
height:80px;
background-color:black;
}

#main{
width:100%;
height:500px;
text-align:center;
}
#footer{
width:100%;
height:80px;
background-color:black;
clear:both;
}


</style>
</head>
<body>


<div id="header">
<div id="pr">
</div>
</div>


<div id="main">
<div id="top">
<h2><span></span>ItemList</h2>
</div>

<div>
<s:if test="itemInfoDTOList==null">
<h3>商品情報はありません。</h3>
</s:if>

<s:elseif test="message==null">
<h3>商品情報は以下になります。</h3>

<table>
<tr>
<th>id</th>
<th>商品名</th>
<th>値段</th>
<th>在庫</th>
<th>登録日</th>
<th>更新日</th>
</tr>

<s:iterator value="itemInfoDTOList">

<tr>
	<td><s:property value="id" /></td>
	<td><s:property value="itemName" /></td>
	<td><s:property value="itemPrice" /><span>円</span></td>
	<td><s:property value="itemStock" /><span>個</span></td>
	<td><s:property value="insert_date" /></td>
	<td><s:property value="update_date" /></td>
</tr>
</s:iterator>
</table>
<s:form action="ItemListDeleteConfirmAction">
<s:submit value="削除" />
</s:form>
</s:elseif>

<s:if test="message !=null">
<h3><s:property value="message" /></h3>
</s:if>
<br>
<span>前画面に戻る場合は</span>
<a href='<s:url action="AdminAction" />'>こちら</a>

</div>
</div>

<div id="footer">
<div id="pr">
</div>
</div>
</body>
</html>