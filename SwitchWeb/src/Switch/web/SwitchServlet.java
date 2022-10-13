package Switch.web;

import java.io.IOException;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Switch.Customer.CustomerDao;
import Switch.Customer.CustomerVo;

/**
 * Servlet implementation class EmpServlet
 */

public class SwitchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SwitchServlet() {
		super();
		// System.out.println("EmpServlet 생성자 실행");
	}

	public void init(ServletConfig config) throws ServletException { // 서블릿 초기화
		// System.out.println("EmpServlet init() 메서드 실행");
		// String email = config.getInitParameter("email");
		// System.out.println("이메일 주소: " + email);
	}

	CustomerDao dao = new CustomerDao();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
//      System.out.println(uri);
//      System.out.println(uri.lastIndexOf('/'));
//      System.out.println(uri.substring(7));
		String cmd = uri.substring(uri.lastIndexOf('/'));

		String view = "/index.jsp";
		if ("/CustomerList.do".equals(cmd)) {
			System.out.println("모든 고객의 정보를 조회합니다.");
			// DAO 메서드 호출, request에 정보 저장
			request.setAttribute("customerList", dao.getAllCustomers());
			// System.out.println(dao.getAllEmps().size());
			// view로 포워드(view 경로를 지정)
			view = "/WEB-INF/views/switch/customerlist.jsp";
		} else if ("/CustomerInsert.do".equals(cmd)) {
			System.out.println("입력 양식을 요청합니다.");
			view = "/WEB-INF/views/switch/preReg.jsp";
		} else if ("/CustomerDetails.do".equals(cmd)) {
			System.out.println("상세 정보를 요청합니다.");
			String customeridStr = request.getParameter("customerid");
			int customerid = Integer.parseInt(customeridStr);
			request.setAttribute("customer", dao.getCustomerDetails(customerid));
			view = "/WEB-INF/views/switch/customerdetails.jsp";
		} else if ("/CustomerUpdate.do".equals(cmd)) {
			System.out.println("수정 정보를 요청합니다.");
			String customeridStr = request.getParameter("customerid");
			int customerid = Integer.parseInt(customeridStr);
			request.setAttribute("customer", dao.getCustomerDetails(customerid));
			view = "/WEB-INF/views/switch/customerupdateform.jsp";
		} else if ("/CustomerDelete.do".equals(cmd)) {
			view = "/WEB-INF/views/switch/customerdeleteform.jsp";

		}

		RequestDispatcher disp = request.getRequestDispatcher(view);
		disp.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
		request.setCharacterEncoding("utf-8");

		String cmd = uri.substring(uri.lastIndexOf('/'));

		if ("/CustomerInsert.do".equals(cmd)) {
			String customerId = request.getParameter("customerId");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phoneNumber = request.getParameter("phoneNumber");
			String pack = request.getParameter("pack");

			CustomerVo customer = new CustomerVo();

			customer.setCustomerId(Integer.parseInt(customerId));
			customer.setName(name);
			customer.setEmail(email);
			customer.setPhoneNumber(phoneNumber);
			customer.setPack(pack);

			dao.insertCustomer(customer);
			response.sendRedirect("index.jsp");
		} else if ("/CustomerUpdate.do".equals(cmd)) {
			// 입력을 처리
			String customerId = request.getParameter("customerId");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phoneNumber = request.getParameter("phoneNumber");
			String pack = request.getParameter("pack");

			CustomerVo customer = new CustomerVo();

			customer.setCustomerId(Integer.parseInt(customerId));
			customer.setName(name);
			customer.setEmail(email);
			customer.setPhoneNumber(phoneNumber);
			customer.setPack(pack);
			dao.updateCustomer(customer);
			response.sendRedirect("CustomerDetails.do?customerid=" + customerId);

		} else if ("/CustomerDelete.do".equals(cmd)) {
			String customerid = request.getParameter("customerid");
			String email = request.getParameter("email");
			dao.deleteCustomer(Integer.parseInt(customerid), email);
			response.sendRedirect("CustomerList.do");
		}

	}

}