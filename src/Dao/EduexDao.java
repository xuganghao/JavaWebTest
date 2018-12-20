package Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import domain.Eduex;
import domain.SelfInfo;
import utils.JDBCUtils;

public class EduexDao {
	// 添加用户的操作
		public boolean insert(Eduex ex) {
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			try {
				conn = JDBCUtils.getConnection();
				stmt = conn.createStatement();
				String sql = "insert into eduex(account,name,study,time,fitime,xl,tech,cj)"+
				"values('"+ex.getAccount()
				+"','"
				+ex.getName()
				+"','"
				+ex.getStudy()
				+"','"
				+ex.getTime()
				+"','"
				+ex.getFitime()
				+"','"
				+ex.getXl()
				+"','"
				+ex.getTech()
				+"','"
				+ex.getCj()
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
		public Eduex find(String account) {
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			try {
				conn = JDBCUtils.getConnection();
				stmt = conn.createStatement();
				String sql = "select * from eduex where account = '"+ account+"'";
				rs = stmt.executeQuery(sql);
				if(rs.next()) {
					Eduex ex = new Eduex();
					ex.setName(rs.getString("name"));
					ex.setStudy(rs.getString("study"));
					ex.setTime(rs.getString("time"));
					ex.setFitime(rs.getString("fitime"));
					ex.setXl(rs.getString("xl"));
					ex.setTech(rs.getString("tech"));
					ex.setCj(rs.getString("cj"));
					return ex;
				}
				return null;
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				JDBCUtils.release(rs,stmt, conn);
			} 
			return null;
		}
		// 修改用户
			public boolean update(Eduex ex) {
				Connection conn = null;
				Statement stmt = null;
				ResultSet rs = null;
				// 获取数据连接
				try {
					conn = JDBCUtils.getConnection();
				// 获得Statement对象
					stmt = conn.createStatement();
					// 发送SQL语句
					String sql = "update eduex set name ='"+ex.getName()
					+ "',study='"+ ex.getStudy() +"',time='"+ex.getTime() +"',fitime='"+ex.getFitime()
					+"',xl='"+ex.getXl()+"',tech='"+ex.getTech()+
					"',cj='"+ex.getCj()+
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
