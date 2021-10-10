<%--
  Created by IntelliJ IDEA.
  User: NAM
  Date: 10/10/2021
  Time: 8:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
        <jsp:include page="header.jsp"/>
        <h1>Hello Post Manager</h1>
        <p>The time is : <%=request.getAttribute("now")%></p>
        <jsp:include page="footer.jsp"/>
</body>
</html>
