<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.Arrays" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>计算</title>
</head>
<body>
<%
String I=request.getParameter("I");
String 	II=java.net.URLDecoder.decode(I, "utf-8");
String[] qq = II.split(",");
Integer[] aa =new Integer[qq.length]; 
for(int a=0;a<qq.length;a++){
	 aa[a] = Integer.valueOf(qq[a]);  
}
Integer[] bb=new Integer[aa.length];
for(int i=0;i<aa.length;i++)
{	int k=1;
	for(int j=0;j<aa.length;j++)
	{
		if(j==i)
			continue;
		k=k*aa[j];	
	}
	bb[i]=k;	
}
	String str = Arrays.toString(bb);	
	out.print(str);
%>
</body>
</html>