package Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import domain.Appo;
import utils.JDBCUtils;

public class AppoDao {
	// 添加用户的操作
	public boolean insert(Appo appo) {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = JDBCUtils.getConnection();
			stmt = conn.createStatement();
			String sql = "insert into appo(account,theme,free,time,descr,site)"+
			"values('"+appo.getAccount()
			+"','"
			+appo.getTheme()
			+"','"
			+appo.getFree()
			+"','"
			+appo.getTime()
			+"','"
			+appo.getDescr()
			+"','"
			+appo.getSite()
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
			public Appo find(String account) {
				Connection conn = null;
				Statement stmt = null;
				ResultSet rs = null;
				try {
					conn = JDBCUtils.getConnection();
					stmt = conn.createStatement();
					String sql = "select * from appo where account = '"+ account+"'";
					rs = stmt.executeQuery(sql);
					if(rs.next()) {
						Appo appo = new Appo();
						appo.setTheme(rs.getString("theme"));
						appo.setFree(rs.getString("time"));
						appo.setTime(rs.getString("time"));
						appo.setDescr(rs.getString("descr"));
						appo.setSite(rs.getString("site"));
						return appo;
					}
					return null;
				} catch (Exception e) {
					e.printStackTrace();
				} 
				return null;
			}
			// 查找所有的用户对象
			public ArrayList<Appo> findAll(int page,int count){
				Connection conn = null;
				Statement stmt = null;
				ResultSet rs = null;
				ArrayList<Appo> list = new ArrayList<>();
				try {
					conn = JDBCUtils.getConnection();
					stmt = conn.createStatement();
					String sql = "select * from appo limit "+page  + "," +count;
					rs = stmt.executeQuery(sql);
					while(rs.next()) {
						Appo appo = new Appo();
						appo.setAccount(rs.getString("account"));
						appo.setTheme(rs.getString("theme"));
						appo.setFree(rs.getString("free"));
						appo.setTime(rs.getString("time"));
						appo.setDescr(rs.getString("descr"));
						appo.setSite(rs.getString("site"));
						list.add(appo);
					}
					return list;
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					JDBCUtils.release(rs, stmt, conn);
				}
				return null;
			}
			public static void main (String[] args) {
				AppoDao dao = new AppoDao();
				List<Appo> list = dao.findAll(0, 3); 
				System.out.println(list.get(0).getAccount());
			}
			// 修改用户
						public boolean update(Appo appo) {
							Connection conn = null;
							Statement stmt = null;
							ResultSet rs = null;
							// 获取数据连接
							try {
								conn = JDBCUtils.getConnection();
							// 获得Statement对象
								stmt = conn.createStatement();
								// 发送SQL语句
								String sql = "update appo set sign ='"+appo.getSign()+
								"'where account= '"+appo.getAccount()
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
						// 查找所有的用户对象
						public ArrayList<Appo> found(String sign){
							Connection conn = null;
							Statement stmt = null;
							ResultSet rs = null;
							ArrayList<Appo> list = new ArrayList<Appo>();
							try {
								conn = JDBCUtils.getConnection();
								stmt = conn.createStatement();
								String sql = "select * from appo where sign = '"+sign + "'";
								rs = stmt.executeQuery(sql);
								while(rs.next()) {
									Appo appo = new Appo();
									appo.setAccount(rs.getString("account"));
									appo.setTheme(rs.getString("theme"));
									appo.setFree(rs.getString("free"));
									appo.setTime(rs.getString("time"));
									appo.setDescr(rs.getString("descr"));
									appo.setSite(rs.getString("site"));
									list.add(appo);
								}
								return list;
							} catch (Exception e) {
								e.printStackTrace();
							} finally {
								JDBCUtils.release(rs, stmt, conn);
							}
							return null;
						}
						// 查找所有的用户对象
						public ArrayList<Appo> foundAll(String account){
							Connection conn = null;
							Statement stmt = null;
							ResultSet rs = null;
							ArrayList<Appo> list = new ArrayList<Appo>();
							try {
								conn = JDBCUtils.getConnection();
								stmt = conn.createStatement();
								String sql = "select * from appo where account = '"+account + "'";
								rs = stmt.executeQuery(sql);
								while(rs.next()) {
									Appo appo = new Appo();
									appo.setTheme(rs.getString("theme"));
									appo.setFree(rs.getString("free"));
									appo.setTime(rs.getString("time"));
									appo.setDescr(rs.getString("descr"));
									appo.setSite(rs.getString("site"));
									list.add(appo);
								}
								return list;
							} catch (Exception e) {
								e.printStackTrace();
							} finally {
								JDBCUtils.release(rs, stmt, conn);
							}
							return null;
						}

}
