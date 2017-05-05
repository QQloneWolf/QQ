<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="${pageContext.request.contextPath }/answer/" method="get">
请输入数组，以逗号隔开：
<table width="100%" border=1>
<tr>
<td>数组:<input type="text" name="I"/></td>
<td><input type="submit" value="计算"/></td>
</tr>
</table>
</form>
<form action="${pageContext.request.contextPath }/answer.jsp" method="get">
请输入数组，以逗号隔开：
<table width="100%" border=1>
<tr>
<td>数组:<input type="text" name="I"/></td>
<td><input type="submit" value="计算"/></td>
</tr>
</table>
</form>
</body>
</html>