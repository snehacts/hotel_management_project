package repository;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Utility.DbConnect;
import customerEntities.customer;
public class customerDAO {
	
	static Connection dbConnection = null;

	public customerDAO() throws ClassNotFoundException, SQLException, IOException {

	}

	public static int save(customer e) throws ClassNotFoundException, SQLException, IOException {
		dbConnection = DbConnect.connect();

		int status = 0;
		try {
			
			PreparedStatement ps = dbConnection.prepareStatement("insert into Login(full_name,address,contact_number,gender,date_of_birth,user_name,password,repeat_password,email_address) values (?,?,?,?,?,?,?,?,?)");
			ps.setString(1, e.getFull_name());
			ps.setString(2, e.getAddress());
			ps.setString(3, e.getContact_number());
			ps.setString(4, e.getGender());
			ps.setString(5, e.getDate_of_birth());
			ps.setString(6, e.getUser_name());
			ps.setString(7, e.getPassword());
			ps.setString(8, e.getRepeat_password());
			ps.setString(9, e.getEmail_address());
			

			status = ps.executeUpdate();
         System.out.println("rows inserted");
			dbConnection.close();
			
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}
	
	public static boolean validate(String name,String pass) throws ClassNotFoundException, SQLException, IOException{  
		dbConnection = DbConnect.connect();
		boolean status=false;  
		try{  
		  
		      System.out.println(name+" "+pass);
		PreparedStatement ps=dbConnection.prepareStatement("select * from Login where user_name=? and password=?");  
		
		ps.setString(1,name);  
		ps.setString(2,pass);  
		      
		ResultSet rs=ps.executeQuery();  
		status=rs.next();  
		       /* while(rs.next())
		        {
		        	System.out.println(rs.getString(3)+"\t"+rs.getString(4));
		        }*/
		}catch(Exception e){System.out.println(e);}  
		return status;  
		}  
	
	
	
	/*
	 public static int update(customer e) throws ClassNotFoundException, SQLException, IOException{  
			dbConnection = DbConnect.connect();

	        int status=0;  
	        try{  
	            
	            PreparedStatement ps=dbConnection.prepareStatement(  
	                         "update user set name=?,password=?,email=?,country=? where id=?");  
	            ps.setString(1,e.getName());  
	            ps.setString(2,e.getPassword());  
	            ps.setString(3,e.getEmail());  
	            ps.setString(4,e.getCountry());  
	            ps.setInt(5,e.getId());  
	              
	            status=ps.executeUpdate();  
	              
	            dbConnection.close();  
	        }catch(Exception ex){ex.printStackTrace();}  
	          
	        return status;  
	    } 
	 public static int delete(int id) throws ClassNotFoundException, SQLException, IOException{  
			dbConnection = DbConnect.connect();

	        int status=0;  
	        try{  
	          
	            PreparedStatement ps=dbConnection.prepareStatement("delete from user905 where id=?");  
	            ps.setInt(1,id);  
	            status=ps.executeUpdate();  
	              
	            dbConnection.close();  
	        }catch(Exception e){e.printStackTrace();}  
	          
	        return status;  
	    }  
	 public static List<Emp> getAllEmployees() throws ClassNotFoundException, SQLException, IOException{  
			dbConnection = DbConnect.connect();

	        List<Emp> list=new ArrayList<Emp>();  
	          
	        try{  
	            PreparedStatement ps=dbConnection.prepareStatement("select * from user905");  
	            ResultSet rs=ps.executeQuery();  
	            while(rs.next()){  
	                Emp e=new Emp();  
	                e.setId(rs.getInt(1));  
	                e.setName(rs.getString(2));  
	                e.setPassword(rs.getString(3));  
	                e.setEmail(rs.getString(4));  
	                e.setCountry(rs.getString(5));  
	                list.add(e);  
	            }  
	            dbConnection.close();  
	        }catch(Exception e){e.printStackTrace();}  
	          
	        return list;  
	    }

	public static Emp getEmployeeById(int id) throws ClassNotFoundException, SQLException, IOException {
		dbConnection = DbConnect.connect();

		 Emp e=new Emp();  
         
	        try{  
	           
	            PreparedStatement ps=dbConnection.prepareStatement("select * from user905 where id=?");  
	            ps.setInt(1,id);  
	            ResultSet rs=ps.executeQuery();  
	            if(rs.next()){  
	                e.setId(rs.getInt(1));  
	                e.setName(rs.getString(2));  
	                e.setPassword(rs.getString(3));  
	                e.setEmail(rs.getString(4));  
	                e.setCountry(rs.getString(5));  
	            }  
	            dbConnection.close();  
	        }catch(Exception ex){ex.printStackTrace();}  
	          
	        return e;  */
	}  
	





