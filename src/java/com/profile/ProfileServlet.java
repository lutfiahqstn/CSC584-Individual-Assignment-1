/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.profile;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author User
 */
@WebServlet (name = "ProfileServlet", urlPatterns = {"/ProfileServlet"})
public class ProfileServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        request.setCharacterEncoding("UTF-8");
        
        //retrieve information from HTML form
        String name = request.getParameter("name");
        String studentId = request.getParameter("studentId");
        String programme = request.getParameter("programme");
        String email = request.getParameter("email");
        String hobbies = request.getParameter("hobbies");
        String introduction = request.getParameter("introduction");

        // store information in HttpSession
        HttpSession session = request.getSession();

        session.setAttribute("name", name.trim());
        session.setAttribute("studentId", studentId.trim());
        session.setAttribute("programme", programme.trim());
        session.setAttribute("email", email.trim());
        session.setAttribute("hobbies", hobbies.trim());
        session.setAttribute("introduction", introduction.trim());

        // pass information to JSP
        request.setAttribute("name", name.trim());
        request.setAttribute("studentId", studentId.trim());
        request.setAttribute("programme", programme.trim());
        request.setAttribute("email", email.trim());
        request.setAttribute("hobbies", hobbies.trim());
        request.setAttribute("introduction", introduction.trim());

        // forward request to profile.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("/profile.jsp");
        dispatcher.forward(request, response);
    }

    protected void displayProfile(HttpServletRequest request,
        HttpServletResponse response)
        throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        // check whether profile information exists
        if (session == null || session.getAttribute("name") == null) 
        {
            response.sendRedirect(request.getContextPath() + "/index.html");
            return;
        }

        // retrieve existing profile information
        request.setAttribute("name", session.getAttribute("name"));
        request.setAttribute("studentId", session.getAttribute("studentId"));
        request.setAttribute("programme", session.getAttribute("programme"));
        request.setAttribute("email", session.getAttribute("email"));
        request.setAttribute("hobbies", session.getAttribute("hobbies"));
        request.setAttribute("introduction", session.getAttribute("introduction"));

        // forward request to profile.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("/viewProfile.jsp");
        dispatcher.forward(request, response);
    }  
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        displayProfile(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Personal Profile Servlet";
    }// </editor-fold>

}
