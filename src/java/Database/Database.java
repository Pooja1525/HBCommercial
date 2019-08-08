package Database;

import java.sql.*;

public class Database {
    private static Connection con;
    private static  PreparedStatement allProducts;
    private static PreparedStatement productDetail;
    private static PreparedStatement insertCustomer;
    
    public static boolean checkDB(){
        try {
            if(databaseExists()!=null){
                System.out.println("Database connection successfull");
                return true;
            }
            else{
                System.out.println("Database not connected");
                return false;
            }
        } catch (ClassNotFoundException | SQLException ex) {
            return false;
        }
    }
    
    private static Connection databaseExists() throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/hb_db";
        con = DriverManager.getConnection(url,"root","");
        allProducts = con.prepareStatement("SELECT Product_id, Product_name, Product_price, Product_photo FROM Product");
        productDetail = con.prepareStatement("SELECT Product_name, Product_price, Product_desc, Product_photo FROM Product WHERE Product_id = ?");
        insertCustomer = con.prepareStatement("INSERT INTO customer(cust_fname,cust_lname,cust_address,cust_email,cust_contact,cust_pass,cust_gender) VALUES(?,?,?,?,?,?,?)");
        return con;
    }
    
    public static Object[][] allProducts(){
        try {
            if(con==null)
                con=databaseExists();
            ResultSet res = allProducts.executeQuery();
            res.last();
            int n = res.getRow();
            Object[][] data = new Object[n][4];
            res.beforeFirst();
            int i = 0;
            while(res.next()){
                data[i][0] = res.getInt(1);
                data[i][1] = res.getString(2);
                data[i][2] = res.getDouble(3);
                data[i][3] = res.getString(4);
                i++;
            }
            System.out.println("Returned allProducts Successfully");
//            con.close();
            return data;
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("allProducts weren't returned\n"+ex);
            return null;
        }
    }
    
    public static Object[] productDetail(int id){
        try {
            if(con==null)
                con=databaseExists();
            productDetail.setInt(1, id);
            ResultSet res = productDetail.executeQuery();
            Object[] data = new Object[4];
            while(res.next()){
                data[0] = res.getString(1);
                data[1] = res.getDouble(2);
                data[2] = res.getString(3);
                data[3] = res.getString(4);
            }
            System.out.println("Returned allProducts Successfully");
//            con.close();
            return data;
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("allProducts weren't returned\n"+ex);
            return null;
        }
    }
    
    public static boolean addCustomer(String cust_fname,String cust_lname,String cust_address,String cust_email,String cust_contact,String cust_pass,String cust_gender){
        try{
            if(con==null)
                con=databaseExists();
            insertCustomer.setString(1, cust_fname);
            insertCustomer.setString(2, cust_lname);
            insertCustomer.setString(3, cust_address);
            insertCustomer.setString(4, cust_email);
            insertCustomer.setString(5, cust_contact);
            insertCustomer.setString(6, cust_pass);
            insertCustomer.setString(7, cust_gender);
            
            int res = insertCustomer.executeUpdate();
            if(res>0)
                return true;
            else{
                System.out.println("Hawa");
                return false;
            }
        }catch (ClassNotFoundException | SQLException ex) {
            System.out.println("Customers weren't added.+\n"+ex);
            return false;
        }
    }
    
} 
