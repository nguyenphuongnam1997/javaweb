<%@ page import="com.nt.rookie.post.domain.Post" %><%--
  Created by IntelliJ IDEA.
  User: NAM
  Date: 10/10/2021
  Time: 9:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
        <jsp:include page="header.jsp"/>

        <%
          Post post = (Post) session.getAttribute("post");
        %>
        <form id="editform" method="post" action="/postupdate">

            <input type="text" name="newTitle" value="<%=post.getTitle()%>" style="width: 500px"/><br>

            <input type="text" name="newDescription" value="<%=post.getDescription()%>" style="width: 500px"/><br>

            <textarea form="editform" name="newContent" rows="10" style="width: 500px"><%=post.getContent()%></textarea>

          <input type="hidden" name="id" value="<%=post.getId()%>"/>

          <a href="/searchpost"> Back to home</a>
          <input type="submit" value="Update"/>
        </form>

        <jsp:include page="footer.jsp"/>
</body>
</html>
