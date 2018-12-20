package Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import domain.Workex;
import utils.JDBCUtils;

public class WorkexDao {
	// 添加用户的操作
		public boolean insert(Workex work) {
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			try {
				conn = JDBCUtils.getConnection();
				stmt = conn.createStatement();
				String sql = "insert into workex(account,company,position,time,fitime,city,tech,descr)"+
				"values('"+work.getAccount()
				+"','"
				+work.getCompany()
				+"','"
				+work.getPosition()
				+"','"
				+work.getTime()
				+"','"
				+work.getFitime()
				+"','"
				+work.getCity()
				+"','"
				+work.getTech()
				+"','"
				+work.getDescr()
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
		public Workex find(String account) {
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			try {
				conn = JDBCUtils.getConnection();
				stmt = conn.createStatement();
				String sql = "select * from workex where account = '"+ account+"'";
				rs = stmt.executeQuery(sql);
				if(rs.next()) {
					Workex ex = new Workex();
					ex.setCompany(rs.getString("company"));
					ex.setPosition(rs.getString("position"));
					ex.setTime(rs.getString("time"));
					ex.setFitime(rs.getString("fitime"));
					ex.setCity(rs.getString("city"));
					ex.setTech(rs.getString("tech"));
					ex.setDescr(rs.getString("descr"));
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
			public boolean update(Workex ex) {
				Connection conn = null;
				Statement stmt = null;
				ResultSet rs = null;
				// 获取数据连接
				try {
					conn = JDBCUtils.getConnection();
				// 获得Statement对象
					stmt = conn.createStatement();
					// 发送SQL语句
					String sql = "update workex set company='"+ex.getCompany()
					+ "',position='"+ex.getPosition()+"',time='"+ex.getTime()+"',fitime='"+ex.getFitime()
					+"',city='"+ex.getCity()+"',tech='"+ex.getTech()+
					"',descr='"+ex.getDescr()+
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
