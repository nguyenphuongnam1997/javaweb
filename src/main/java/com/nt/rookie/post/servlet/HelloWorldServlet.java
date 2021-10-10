package com.nt.rookie.post.servlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.Instant;

public class HelloWorldServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

//    @Override
//    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.setCharacterEncoding("UTF-8");
//
//        resp.setContentType("text/html");
//
//        PrintWriter out = resp.getWriter();
//        out.println("<html><body>");
//        out.println("<p>This time is " + Instant.now() +"<p>");
//        out.println("<body><html>");
//        out.close();
//    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        resp.setContentType("text/html");

        req.setAttribute("now",Instant.now());

        ServletContext context = req.getServletContext();
        context.getRequestDispatcher("/helloworld.jsp").forward(req,resp);

    }

}
