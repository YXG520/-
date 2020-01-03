package service.impl;

import java.sql.SQLException;
import java.util.List;

import bean.Customer;
import dao.CustomerDao;
import service.CustomerService;

public class CustomerServiceImpl  implements CustomerService {
	CustomerDao  customerDao=new CustomerDao();
	@Override
	public int register(Customer customer) throws SQLException, MyException {
		int i = customerDao.insert(customer);
		return i;
	}
	@Override
	public List<Customer> allCustomer() throws SQLException, MyException {
		// TODO 自动生成的方法存根
		List<Customer> allCustomerList = customerDao.selectAll();
		return allCustomerList;
	}
	@Override
	public List<Customer> Customer(Customer customer) throws SQLException, MyException {
		List<Customer> customerList = customerDao.select(customer);
		return customerList;
	}
	@Override
	public Customer findById(String id) throws SQLException, MyException {
		Customer customer = customerDao.selectById(id);
		return customer;
	}
	@Override
	public int update(Customer customer) throws SQLException, MyException {
		int i = customerDao.update(customer);
		return i;
	}
	@Override
	public int delete(String id) throws SQLException, MyException {
		int i = customerDao.delete(id);
		return i;
	}
}
