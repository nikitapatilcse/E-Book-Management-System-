package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.BookDtls;
import com.entity.cart;

public class CartDAOImpl implements CartDAO {

	private Connection conn;
	
	public CartDAOImpl(Connection conn)
	{
		this.conn=conn;
	}
	
	
	public boolean addCart(cart c) {
		boolean f=false;
		try {
			
			String sql="insert into cart1(bid,uid,bookName,author,price,total_price) values(?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, c.getBid());
			ps.setInt(2, c.getUserId());
			ps.setString(3, c.getBookName());
			ps.setString(4,c.getAuthor());
			ps.setDouble(5, c.getPrice());
			ps.setDouble(6,c.getTotal_price());
			
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}


	public List<cart> getBookByUser(int userId) {
		List<cart> list=new ArrayList<cart>();
		cart c=null;
		double total_price=0;
		
		try {
			String sql="Select * from cart1 where uid=? ";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, userId);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				c=new cart();
				c.setCid(rs.getInt(1));
				c.setBid(rs.getInt(2));
				c.setUserId(rs.getInt(3));
				c.setBookName(rs.getString(4));
				c.setAuthor(rs.getString(5));
				c.setPrice(rs.getDouble(6));
				
				total_price=total_price+rs.getDouble(7);
				c.setTotal_price(total_price);
				
				list.add(c);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}


	public boolean deleteBook(int bid,int uid ,int cid) {
		
		boolean f=false;
		
		try {
			String sql="delete from cart1 where bid=? and uid=? and cid=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, bid);
			ps.setInt(2, uid);
			ps.setInt(3, cid);
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return f;
		
		
	}
	
	
	
	
	
	

	
	
}
