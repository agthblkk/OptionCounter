package com.example.optionscounter;
import jakarta.servlet.http.*;
import java.io.IOException;

public class CounterServlet extends  HttpServlet {

    int n = 0;
    int n1 = 0;
    int n2 = 0;
    int n3 = 0;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String a = request.getParameter("a");
        HttpSession session = request.getSession(false);

        if ("exit".equals(a) && (session != null))
            session.removeAttribute("x");
        session.removeAttribute("y");
        session.removeAttribute("x1");
        session.removeAttribute("y1");

        response.sendRedirect("index.jsp");
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String answer = request.getParameter("lang");
        String answer1 = request.getParameter("show");
        if(answer.equals("HTML")){
            n++;
        }
        else if(answer.equals("CSS")){
            n1++;
        }
        if(answer1.equals("teenwolf")){
            n2++;
        }
        else if(answer1.equals("bridgertons")){
            n3++;
        }
        HttpSession session = request.getSession(true);
        response.setContentType("text/html");
        String nInt = String.valueOf(n);
        String n1Int = String.valueOf(n1);
        String n2Int = String.valueOf(n2);
        String n3Int = String.valueOf(n3);
        session.setAttribute("x", nInt);
        session.setAttribute("y", n1Int);
        session.setAttribute("x1", n2Int);
        session.setAttribute("y1", n3Int);
        response.sendRedirect("index.jsp");
    }
}
