package com.example.jspbasic;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.namespace.QName;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;


//libreg.jsp로 url 매핑
@WebServlet(name = "libservlet", value = "/libreg")
public class LibregServlet extends HttpServlet {

    static HashMap<String, String> book = new HashMap<>();
    static ServletContext sc = null;

    @Override
    public void init(ServletConfig config) throws ServletException {
        sc = config.getServletContext();
    }

    //도서 등록하기
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("text/html;charset =  UTF-8"); // 인코딩
//        PrintWriter out = resp.getWriter();
        resp.setCharacterEncoding("UTF-8");

        String name = req.getParameter("name");
        String author = req.getParameter("author");
        String date = req.getParameter("date");

//        book.put(name, new String(na ));
        sc.setAttribute("Name",name);
        sc.setAttribute("Author",author);
        sc.setAttribute("Date",date);

//        req.setAttribute("result",result);   //결과값을 setAttruibute를 통해 저장
        RequestDispatcher rd = req.getRequestDispatcher("libinfo.jsp");
        rd.forward(req,resp);

    }

    //도서 조회하기
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8"); //한글 패치/ 파일의 인코딩 속성을 "UTF-8"로 변경
        resp.setContentType("text/html;charset = UTF-8");

        String name = req.getParameter("name");
        String author = req.getParameter("author");
        String date = req.getParameter("date");


    }
}
