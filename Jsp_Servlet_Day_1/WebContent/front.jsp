<%@ page import="pojo.Data" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta charset=UTF-8">
        <title>Age calculation</title>
        <link rel="stylesheet" href="style.css" />
    </head>
    <body>
<%
    if (request.getMethod().equals("POST")||request.getMethod().equals("GET")) {
         int age; 
  
        int birth_day = Integer.parseInt(request.getParameter("birth_day"));
       int  birth_month = Integer.parseInt(request.getParameter("birth_month"));
       int birth_year = Integer.parseInt(request.getParameter("birth_year"));
       int current_day = Integer.parseInt(request.getParameter("current_day"));
       int current_month = Integer.parseInt(request.getParameter("current_month"));
       int current_year = Integer.parseInt(request.getParameter("current_year"));
        Data s=new Data();
        s.setBirth_day(birth_day);
        s.setBirth_month(birth_month);
        s.setBirth_year(birth_year);
        s.setCurrent_day(current_day);
        s.setCurrent_month(current_month);
        s.setCurrent_year(current_year);
        age=s.getCurrent_year()-s.getBirth_year();
        if(s.getBirth_month()>s.getCurrent_month()||(s.getBirth_month()==s.getCurrent_month()&&s.getBirth_day()>s.getCurrent_day()))
        
        	age=age-1;
        
        %>
        
        <script>
        alert("Your age is : <%= age %>");
        </script>
        
       <%  
       
    } %>


    </body>
</html>