package com.LvYuyu.filter;

import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebFilter(filterName = "/admin/*")
public class AdminAuthenticationFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest httpRequest=(HttpServletRequest) request;
        HttpServletResponse httpResponse=(HttpServletResponse) response;
        HttpSession session=httpRequest.getSession(false);
        boolean isLoggedIn=(session!=null&&session.getAttribute("userList")!=null);
        String loginURI=httpRequest.getContextPath()+"/admin/login";
        boolean isLoginRequest=httpRequest.getRequestURI().equals(loginURI);
        boolean isLoginPage=httpRequest.getRequestURI().endsWith("login");
        if(isLoggedIn&&(isLoginRequest||isLoginPage)){
            RequestDispatcher dispatcher= request.getRequestDispatcher("/admin/home");
        }else if(isLoggedIn||isLoginRequest){
            chain.doFilter(request,response);
        }else{
            httpResponse.sendRedirect(httpRequest.getContextPath()+"/admin/login");
        }
    }
    }
}
