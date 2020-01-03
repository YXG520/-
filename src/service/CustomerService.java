package service;

import java.sql.SQLException;
import java.util.List;

import bean.Customer;
import service.impl.MyException;

public interface CustomerService {
	int register(Customer customer)throws SQLException,MyException;
	List<Customer> allCustomer()throws SQLException,MyException;
	List<bean.Customer> Customer(Customer customer) throws SQLException, MyException;
	Customer findById(String id)throws SQLException,MyException;
	int update(Customer customer) throws SQLException,MyException ;
	int delete(String id) throws SQLException, MyException ;
	

}
