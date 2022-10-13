package Switch.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import Switch.Customer.CustomerVo;

public class CustomerDao {

	DataSource dataSource;

	public CustomerDao() {
		try {
			Context initCtx = new InitialContext();
			dataSource = (DataSource) initCtx.lookup("java:comp/env/dbcp_myoracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	public List<CustomerVo> getAllCustomers() {
		List<CustomerVo> customerList = new ArrayList<>();
		Connection con = null;
		try {
			con = dataSource.getConnection(); // Connection 객체 생성
			String sql = "select * from customer";
			PreparedStatement stmt = con.prepareStatement(sql); // Statement 생성
			ResultSet rs = stmt.executeQuery(); // 쿼리 실행
			while (rs.next()) {
				CustomerVo customer = new CustomerVo();
				customer.setCustomerId(rs.getInt("customerid"));
				customer.setName(rs.getString("name"));
				customer.setEmail(rs.getString("email"));
				customer.setPhoneNumber(rs.getString("phonenumber"));
				customer.setPack(rs.getString("pack"));
				customerList.add(customer);
			}

		} catch (Exception e) {
			throw new RuntimeException(e);
		} finally {
			if (con != null)
				try {
					con.close();
				} catch (Exception e) {
				}
		}
		return customerList;
	}

	public int getCustomerCount() { // SQL connect
		int count = 0;
		// Connection 생성
		Connection con = null;
		try {
			con = dataSource.getConnection();
			System.out.println(con);
			String sql = "select count(*) from Customer";
			PreparedStatement stmt = con.prepareStatement(sql); // Statement 생성
			ResultSet rs = stmt.executeQuery(); // SQL 쿼리 전송
			if (rs.next()) { // 결과집합소비
				count = rs.getInt(1);
			}
			System.out.println("사전예약 대기 인원 : " + count);
		} catch (Exception e) {
			e.printStackTrace();
		} finally { // Connection 닫기
			if (con != null)
				try {
					con.close();
				} catch (Exception e) {
				}
		}

		return count;
	}

	public CustomerVo getCustomerDetails(int customerId) {
		CustomerVo customer = new CustomerVo();
		Connection con = null;
		try {
			con = dataSource.getConnection();
			String sql = "select customerid, name, email, phonenumber, pack from customer where customerid=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, customerId);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) { // 결과를 vo에 매핑시킴
				customer.setCustomerId(rs.getInt("customerid"));
				customer.setName(rs.getString("name"));
				customer.setEmail(rs.getString("email"));
				customer.setPhoneNumber(rs.getString("phonenumber"));
				customer.setPack(rs.getString("pack"));
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		} finally {
			if (con != null)
				try {
					con.close();
				} catch (Exception e) {
				}
		}
		return customer;
	}

	// insert--------------------------
	public void insertCustomer(CustomerVo customer) {
		Connection con = null;
		try {
			con = dataSource.getConnection();
			String sql = "insert into customer (customerid, name, email, phonenumber, pack) "
					+ "values ( ?, ?, ?, ?, ?)";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, customer.getCustomerId());
			stmt.setString(2, customer.getName());
			stmt.setString(3, customer.getEmail());
			stmt.setString(4, customer.getPhoneNumber());
			stmt.setString(5, customer.getPack());
			stmt.executeUpdate();
			System.out.println("데이터가 입력되었습니다.");
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if (con != null)
				try {
					con.close();
				} catch (Exception e) {
				}
		}
	}

// update --------------------------
	public void updateCustomer(CustomerVo customer) {
		Connection con = null;
		try {
			con = dataSource.getConnection();
			String sql = "update customer set name=?, email=?, phonenumber=?, pack=? where customerid=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, customer.getName());
			stmt.setString(2, customer.getEmail());
			stmt.setString(3, customer.getPhoneNumber());
			stmt.setString(4, customer.getPack());
			stmt.setInt(5, customer.getCustomerId());
			stmt.executeUpdate();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if (con != null)
				try {
					con.close();
				} catch (Exception e) {
				}

		}
	}

	// delete --------------------------
	public void deleteCustomer(int customerid, String email) {
		Connection con = null;
		try {
			con = dataSource.getConnection();
			con.setAutoCommit(false);

			String sql = "delete customer where customerid=? and email=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, customerid);
			stmt.setString(2, email);
			stmt.executeUpdate();

			con.commit();
		} catch (SQLException e) {
			try {
				con.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			throw new RuntimeException(e);
		} finally {
			if (con != null)
				try {
					con.close();
				} catch (Exception e) {
				}
		}
	}
}