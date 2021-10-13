<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>Add new meal</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Edit meal</h2>
<form method="POST" action='meals' name="formAddMeal">
    <input type="hidden" name="mealId" value="<c:out value="${meal.id}"/>"/>
    DateTime : <label>
    <input type="datetime-local" name="dateTime"
           value="<c:out value="${meal.dateTime.format(DateTimeFormatter.ofPattern(\"yyyy-MM-dd'T'HH:mm\"))}"/>"/>

</label> <br/>
    Description : <label>
    <input
            type="text" name="description"
            value="<c:out value=" ${meal.description}" />"/>

</label> <br/>
    Calories : <label>
    <input
            type="text" name="calories"
            value="<c:out value=" ${meal.calories}" />"/>

</label> <br/>
    <input
            type="submit" value="Submit"/>
</form>
</body>
</html>