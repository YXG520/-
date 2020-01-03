package web.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CustomerService;
import service.impl.CustomerServiceImpl;

/**
 * Servlet implementation class EditServlet
 */
@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CustomerService customerService = new CustomerServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String cid = request.getParameter("cid");
		try {
			int i = customerService.delete(cid);
			if (i == 1) {
				request.setAttribute("msg", "ɾ���ͻ��ɹ�");
				RequestDispatcher requestDis = request.getRequestDispatcher("/msg.jsp");
				requestDis.forward(request, response);
			}else {
				request.setAttribute("msg", "ɾ���ͻ�ʧ��");
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
