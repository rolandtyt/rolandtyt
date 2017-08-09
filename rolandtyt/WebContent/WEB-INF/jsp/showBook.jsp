<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ShowBook</title>

<style>

	.table{
		width:80%;
		margin:10px auto;
	}
	.title{
		border:2px solid;
		font-weight:bold;
	}
	.row{
		border-left:1px solid blue;
		border-right:1px solid blue;
		border-bottom:1px solid blue;
	}
	.row:nth-child(even){
		background-color:#99FF66;
	}
	
	span{
		display:inline-block;
		
	}
	.title span{
		text-align:center;
	}
	.col1{
		width:5%;
		border-right:1px solid blue;
	}
	.col2{
		width:20%;
	}
	.col3{
		border-left:1px solid blue;
		width:63%;
	}
	.col4{
		border-left:1px solid blue;
		width:10%;
	}
	
</style>

</head>
<body>
	<div style="width:80%;margin:auto;text-align:right">
		<a href="<%=request.getContextPath() %>/Book/insert">新增</a>
	</div>
	<div class="table">
		<div class="title">
			<span class="col1">id</span>
			<span class="col2">bookNo</span>
			<span class="col3">bookName</span>
			<span class="col4">operation</span>
		</div>
		<c:forEach items="${bookList}" var="book">
			<div class="row">
				<span class="col1"><c:out value="${book.id }" /></span>
				<span class="col2"><c:out value="${book.bookNo }" /></span>
				<span class="col3"><c:out value="${book.bookName }" /></span>
				<span class="col4">
					<a href="<%=request.getContextPath() %>/Book/update?id=${book.id }">更改</a>
					&nbsp;|&nbsp;
					<a href="<%=request.getContextPath() %>/Book/delete?id=${book.id }">删除</a>
				</span>
			</div>
		</c:forEach>
		
	</div>
</body>
</html>