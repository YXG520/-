package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Customer;
import utils.JdbcUtils;

public class CustomerDao {
	Connection con = null;
	ResultSet rs = null;
	PreparedStatement ps = null;
	int i =-1;

	// ��ӿͻ�
	public int insert(Customer customer) throws SQLException {
		int i = 0;
		try {
			con = JdbcUtils.getConnection();
			String sql = "insert into tb_customer(cname,gender,birthday,cellphone,email,description) values (?,?,?,?,?,?)";
			// Ԥ����
			ps = con.prepareStatement(sql);
			ps.setString(1, customer.getCname());
			ps.setString(2, customer.getGender());
			ps.setString(3, customer.getBirthday());
			ps.setString(4, customer.getCellphone());
			ps.setString(5, customer.getEmail());
			ps.setString(6, customer.getDescription());
			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtils.release(con, ps, rs);
		}
		return i;
	}

	// ��ѯ���пͻ�
	public List<Customer> selectAll() throws SQLException {
		List<Customer> allCustomerList = new ArrayList<Customer>();
		Customer customer = null;
		try {
			con = JdbcUtils.getConnection();
			String sql = "select * from tb_customer";
			// Ԥ����
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				String cid = rs.getString(1);
				String cname = rs.getString(2);
				String gender = rs.getString(3);
				String birthday = rs.getString(4);
				String cellphone = rs.getString(5);
				String email = rs.getString(6);
				String description = rs.getString(7);
				customer = new Customer(cid, cname, gender, birthday, cellphone, email, description);
				allCustomerList.add(customer);
			}
		} catch (Exception e) {
			allCustomerList = null;
			e.printStackTrace();
		} finally {
			JdbcUtils.release(con, ps, rs);
		}

		return allCustomerList;

	}

	// ����id��ѯ
	public Customer selectById(String id) throws SQLException {
		Customer customer = null;
		try {
			con = JdbcUtils.getConnection();
			String sql = "select * from  tb_customer where cid=?";
			// Ԥ����
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if (rs.next()) {
				String cid = rs.getString(1);
				String cname = rs.getString(2);
				String gender = rs.getString(3);
				String birthday = rs.getString(4);
				String cellphone = rs.getString(5);
				String email = rs.getString(6);
				String description = rs.getString(7);
				customer = new Customer(cid, cname, gender, birthday, cellphone, email, description);
			}
		} catch (Exception e) {
			customer = null;
			e.printStackTrace();
		} finally {
			JdbcUtils.release(con, ps, rs);
		}

		return customer;

	}
	//����
	public int update(Customer customer) throws SQLException {

		String sql = "update tb_customer set cname=?,gender=?,birthday =?,cellphone=?,email=?,description =? where cid=? ";
		try {
			// jdncUtils��ȡ����
			con = JdbcUtils.getConnection();
			// Ԥ����
			ps = con.prepareStatement(sql);
			ps.setString(1, customer.getCname());
			ps.setString(2, customer.getGender());
			ps.setString(3, customer.getBirthday());
			ps.setString(4, customer.getCellphone());
			ps.setString(5, customer.getEmail());
			ps.setString(6, customer.getDescription());
			ps.setString(7, customer.getCid());
			i = ps.executeUpdate();
			return i;

		} catch (Exception e) {
			return i;
		} finally {
			// �ͷ�����
			JdbcUtils.release(con, ps, rs);
		}

	}

	// �߼�����
	public List<Customer> select(Customer customer) throws SQLException {
		List<Customer> customerList = new ArrayList<Customer>();
		Customer acustomer = null;
		try {
			con = JdbcUtils.getConnection();
			String sql = "select * from tb_customer where cname=? and gender=? and cellphone=? and email=?";
			// Ԥ����
			ps = con.prepareStatement(sql);
			ps.setString(1, customer.getCname());
			ps.setString(2, customer.getGender());
			ps.setString(3, customer.getCellphone());
			ps.setString(4, customer.getEmail());
			rs = ps.executeQuery();
			while (rs.next()) {
				String cid = rs.getString(1);
				String cname = rs.getString(2);
				String gender = rs.getString(3);
				String birthday = rs.getString(4);
				String cellphone = rs.getString(5);
				String email = rs.getString(6);
				String description = rs.getString(7);
				acustomer = new Customer(cid, cname, gender, birthday, cellphone, email, description);
				customerList.add(acustomer);
			}
		} catch (Exception e) {
			customerList = null;
			e.printStackTrace();
		} finally {
			JdbcUtils.release(con, ps, rs);
		}

		return customerList;

	}
	//����idɾ��
	public int delete(String id) throws SQLException {
		try {
			con = JdbcUtils.getConnection();
			String sql = "delete from tb_customer where cid=?";
			// Ԥ����
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			i = ps.executeUpdate();
			return i;

		} catch (Exception e) {
			return i;
		} finally {
			// �ͷ�����
			JdbcUtils.release(con, ps, rs);
		}

	}

}
