package com.nt.rookie.post.servlet;

import com.nt.rookie.post.common.BaseConstants;
import com.nt.rookie.post.common.DateUtil;
import com.nt.rookie.post.data.DaoFactory;
import com.nt.rookie.post.data.PostDao;
import com.nt.rookie.post.domain.Post;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class SearchPostServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final PostDao postDao = DaoFactory.getPostDao();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.setCharacterEncoding("UTF-8");
        String searchTerm = req.getParameter("searchTerm");
        List<Post> posts = postDao.search(searchTerm);

        HttpSession session = req.getSession();
        session.setAttribute("posts",posts);

        String encodeRedirectUrl = resp.encodeRedirectURL("/searchpostview.jsp");
        resp.sendRedirect(encodeRedirectUrl);

    }
}
