<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Cookie jspViewsCount =  new Cookie("jspViewsCount",request.getParameter("jspViewsCount")+1);    
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Document</title>
    <script type="text/javascript">
    	function ajaxSendGET(){
    		
    		
    	}
    
    </script>
    
    
</head>
<body>
    
	JSP views count: <%=jspViewsCount.getValue()%>    
	
	
	
	
    #
    
    
    
</body>
</html>