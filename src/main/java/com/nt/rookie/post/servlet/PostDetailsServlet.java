package com.nt.rookie.post.servlet;

import com.nt.rookie.post.data.DaoFactory;
import com.nt.rookie.post.data.PostDao;
import com.nt.rookie.post.domain.Post;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class PostDetailsServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private final PostDao postDao = DaoFactory.getPostDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        //Get req info
        req.setCharacterEncoding("UTF-8");
        int id = Integer.parseInt(req.getParameter("id"));
        System.out.println("PostDetailsSerrvlet::" + id);

        //Query for DB
        Post post = postDao.find(id);

        HttpSession session = req.getSession();
        session.setAttribute("post",post);

        String encodeRedirectUrl = resp.encodeRedirectURL("/postdetailview.jsp");
        resp.sendRedirect(encodeRedirectUrl);
    }
}
