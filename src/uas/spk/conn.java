/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uas.spk;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author zulfa
 */
public class conn {
    

    
    private static Connection databasekoneksi;
    public static Connection KoneksiDB() {
        if (databasekoneksi == null) {
            try{
                String DB = "jdbc:mysql://localhost:3306/zulfahmi_wp";
                String user = "root";
                String pass = "";  
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                databasekoneksi = DriverManager.getConnection(DB,user,pass);
                System.out.println("Berhasil");
            }catch (SQLException e){
              System.out.println("Error");
            }
            
        }return databasekoneksi;
    } 
    public static void main(String args[]){
        KoneksiDB();
    }
}
