package web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Customer;
import service.CustomerService;
import service.impl.CustomerServiceImpl;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/SelectServlet")
public class SelectlServlet extends HttpServlet {
	CustomerService customerService = new CustomerServiceImpl();
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String cname = request.getParameter("cname");
		String gender = request.getParameter("gender");
		String cellphone = request.getParameter("cellphone");
		String email = request.getParameter("email");
		Customer customer = new Customer(cname,gender,cellphone,email);
		try {
			List <Customer>  CustomerList = customerService.Customer(customer);
			request.getSession().setAttribute("customers", CustomerList);
			RequestDispatcher requestDis = request.getRequestDispatcher("/list.jsp");
			requestDis.forward(request, response);
		} catch (Exception e) {
			response.getWriter().append(e.getMessage());
		}
		

	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

}
