package web.servlet;

import java.io.IOException;

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
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/update")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CustomerService customerService = new CustomerServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String cid = request.getParameter("cid");
		String cname = request.getParameter("cname");
		String gender = request.getParameter("gender");
		String birthday = request.getParameter("birthday");
		String cellphone = request.getParameter("cellphone");
		String email = request.getParameter("email");
		String description = request.getParameter("description");
		Customer customer = new Customer(cid,cname,gender,birthday,cellphone,email,description);
		try {
			int i = customerService.update(customer);
			if (i == 1) {
				request.setAttribute("msg", "更新客户成功");
				RequestDispatcher requestDis = request.getRequestDispatcher("/msg.jsp");
				requestDis.forward(request, response);
			}else {
				request.setAttribute("msg", "更新客户失败");
				RequestDispatcher requestDis = request.getRequestDispatcher("/edit.jsp");
				requestDis.forward(request, response);
			}
		} catch (Exception e) {
			response.getWriter().append(e.getMessage());
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
