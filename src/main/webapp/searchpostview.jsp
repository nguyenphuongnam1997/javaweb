<%@ page import="com.nt.rookie.post.domain.Post" %>
<%@ page import="java.util.List" %>
<%@ page import="com.nt.rookie.post.common.DateUtil" %>
<%@ page import="com.nt.rookie.post.common.BaseConstants" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:include page="header.jsp"/>

      <%
        List<Post> posts = (List<Post>) session.getAttribute("posts");
        for (Post post:posts) {
          %>
    <artical class="post-preview">
      <a href='/postdetails?id=<%=post.getId()%>'>
        <h2 class="post-title"><%=post.getTitle()%></h2>
        <h2 class="post-subtitle"><%=post.getDescription()%></h2>

          <div style='float:right'>
            <form method='GET' action='/postdetails'>
              <input type='hidden' name='id' value='<%=post.getId()%>'/>
              <input type='submit' value='Details'/>
            </form>

            <form method='GET' action='/postedit'>
              <input type='hidden' name='id' value='<%=post.getId()%>'/>
              <input type='submit' value='Edit'/>
            </form>
        </div>
      </a>

        <p>Posted by <%=post.getAuthor().getFirstName()%> <%=post.getAuthor().getLastName()%> on <%=DateUtil.format(post.getDate(), BaseConstants.PATTERM_MONTH_DAY_YEAR)%> 8 mins read</p>
    </artical>
        <%}%>
    <jsp:include page="footer.jsp"/>
</body>
</html>
