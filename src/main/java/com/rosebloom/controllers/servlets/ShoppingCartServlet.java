package com.rosebloom.controllers.servlets;

import com.rosebloom.controllers.enums.RequestAttributes;
import com.rosebloom.controllers.services.CartServices;
import com.rosebloom.dtos.CartDto;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ShoppingCartServlet extends HttpServlet {
    ServletConfig myConfig;

    @Override
    public void init(ServletConfig arg0) throws ServletException {
        myConfig=arg0;
        System.out.println("Init!!!!!");
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/html/shopping_cart.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
