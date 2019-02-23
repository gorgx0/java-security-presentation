package com.javasecurity.web;

import com.javasecurity.service.SensitiveOperation;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/danger")
public class DangerServlet extends HttpServlet {

    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        res.setContentType("text/plain");
        PrintWriter writer = res.getWriter();
        SensitiveOperation sensitiveOperation = new SensitiveOperation();
        writer.println(sensitiveOperation.getSecretKey());
    }
}
