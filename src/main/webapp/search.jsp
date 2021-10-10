<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

    <jsp:include page="header.jsp"/>
    <h1>Post Manager</h1>
    <h2>Search a post</h2>
    <form action="searchpost" method="get">
        <input type="text" id="searchTerm">
        <input type="submit" name="search">
    </form>
    <jsp:include page="footer.jsp"/>
</body>
</html>