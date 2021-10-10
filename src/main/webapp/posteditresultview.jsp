<%@ page import="com.nt.rookie.post.domain.Post" %><%--
  Created by IntelliJ IDEA.
  User: NAM
  Date: 10/10/2021
  Time: 10:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
        <jsp:include page="header.jsp"/>

        <%
            Post post = (Post) session.getAttribute("post");
        %>
        <h2><%=post.getTitle()%></h2>
        <h2><%=post.getDescription()%></h2>
        <p><%=post.getContent()%></p>

        <jsp:include page="footer.jsp"/>
</body>
</html>
