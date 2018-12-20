package Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import domain.Emoex;
import domain.SelfInfo;
import utils.JDBCUtils;

public class EmoexDao {
	// 添加用户的操作
		public boolean insert(Emoex ex) {
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			try {
				conn = JDBCUtils.getConnection();
				stmt = conn.createStatement();
				String sql = "insert into emoex(account,marry,jl)"+
				"values('"+ex.getAccount()
				+"','"
				+ex.getMarry()
				+"','"
				+ex.getJl()
				+"')";
				int num = stmt.executeUpdate(sql);
				if(num > 0) {
					return true;
				}
				return false;
			} catch (Exception e) {
				e.printStackTrace();
			} finally{
				JDBCUtils.release(rs,stmt, conn);
			}
			return false;
		}
		// 根据account查找指定user
		public Emoex find(String account) {
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			try {
				conn = JDBCUtils.getConnection();
				stmt = conn.createStatement();
				String sql = "select * from emoex where account = '"+ account+"'";
				rs = stmt.executeQuery(sql);
				if(rs.next()) {
					Emoex ex = new Emoex();
					ex.setMarry(rs.getString("marry"));
					ex.setJl(rs.getString("jl"));
					return ex;
				}
				return null;
			} catch (Exception e) {
				e.printStackTrace();
			} finally{
				JDBCUtils.release(rs,stmt, conn);
			}
			return null;
		}
		// 修改用户
			public boolean update(Emoex ex) {
				Connection conn = null;
				Statement stmt = null;
				ResultSet rs = null;
				// 获取数据连接
				try {
					conn = JDBCUtils.getConnection();
				// 获得Statement对象
					stmt = conn.createStatement();
					// 发送SQL语句
					String sql = "update emoex set marry='"+ex.getMarry()
					+ "',jl='"+ex.getJl()+
					"'where account= '"+ex.getAccount()
					+"'";
					int num = stmt.executeUpdate(sql);
					if(num > 0) {
						return true;
					}
					return false;
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					JDBCUtils.release(rs, stmt, conn);
				}
				return false;
			}

}
