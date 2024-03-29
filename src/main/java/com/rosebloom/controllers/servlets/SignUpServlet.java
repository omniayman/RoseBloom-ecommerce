package com.rosebloom.controllers.servlets;

import com.rosebloom.controllers.services.UserServices;
import com.rosebloom.dtos.UserDto;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

public class SignUpServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        System.out.println("Signup page");
        String name = request.getParameter("userName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        Date birthday = Date.valueOf(request.getParameter("birthday"));
        String phoneNo = request.getParameter("phoneNo");
        String address = request.getParameter("address");
        int creditLimit = Integer.parseInt(request.getParameter("creditLimit"));
        String  interest = request.getParameter("interests");
        String rememberMe = request.getParameter("checkbox");

       System.out.println(rememberMe);

        UserServices userServices = new UserServices();
        if(!userServices.checkIfUserIsValid(email,password)) {
            System.out.println("Insert User ;) ");

            UserDto user= new UserDto(name,password,email,address,birthday,phoneNo,creditLimit);
            userServices.insertUser(user);
            user = userServices.getUserByEmail(email,password);

            HttpSession session = request.getSession(true);
            session.setAttribute("loggedIn", new String("true"));
            session.setAttribute("User",user);

            if(rememberMe!=null){
                Cookie c = new Cookie("user_email", email);
                Cookie c2 = new Cookie("password", password);

                c.setMaxAge(30* 24 * 60 * 60);
                c2.setMaxAge(30* 24 * 60 * 60);
                response.addCookie(c);
                response.addCookie(c2);
            }
            
            RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
            rd.forward(request, response);


        }else{
            System.out.println("this User is already used :( ");
            RequestDispatcher rd = request.getRequestDispatcher("/signup2.html");
            rd.forward(request, response);
        }





    }


}
