<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    	let xhr  =  new XMLHttpRequest();
    	let url = "MyServlet";
    
    	function ajaxSendGET(method, data){
    		let result = document.querySelector('#result');
    		xhr.open(method, url, false);

    		xhr.send();
			//alert(method)
    		// 4. Если код ответа сервера не 200, то это ошибка
    		if (xhr.status != 200) {
    		  // обработать ошибку
    		  // alert( xhr.status + ': ' + xhr.statusText ); // пример вывода: 404: Not Found
    		  result.innerHTML= xhr.status + ': ' + xhr.statusText;
    		  
    		} else {
    		  // вывести результат
    		  // alert( xhr.responseText ); // responseText -- текст ответа.
    		  result.innerHTML= xhr.responseText;     		 
    		}    		
    	}
    
    	onClick
    	
    	
    </script>
    
    
</head>
<body>
    
	JSP views count: <%=jspViewsCount.getValue()%>    
	
	
	
	
    <button id="GET" onClick="ajaxSendGET('GET')">GET</button> 
    <button id="POST"  onClick="ajaxSendGET('POST')">POST</button> 
    <button id="PUT"  onClick="ajaxSendGET('PUT')">PUT</button> 
    <button id="DELETE"  onClick="ajaxSendGET('DELETE')">DELETE</button> 
    
    
    <input type="button" value="test" onclick="obj.method()">

	<div id="result">
	
	</div>
	
	<jstl:
	
	
	
    
</body>
</html>