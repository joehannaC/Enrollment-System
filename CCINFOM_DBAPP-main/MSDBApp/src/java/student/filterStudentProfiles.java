/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student;

/**
 *
 * @author ccslearner
 */

import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class filterStudentProfiles {
    
  
    public String studentType; // type of the student (Regular, Irregular)
 
    /*
        Enumeration representing the type of the student (Regular, Irregular)
    */
    enum StudentType {
        Regular, Irregular
    }
    
    /*
        Default constructor for the studentProfiles class
        Initializes attributes with default values
    */
    public filterStudentProfiles(){
       
        studentType = "";
       
    }
    
    public void setStudentType(String studentType){
        this.studentType = studentType;
    }
    
    public List<String> filterStudProf() throws FileNotFoundException, ClassNotFoundException{
        List<String> studentProfiles = new ArrayList<>();
        try{
            
            // establishing a database connection
            Connection cn;
            PreparedStatement ps;
            ResultSet rs;
            
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/MSManSys_db_app?useTimezone=true"
                    + "&serverTimezone=UTC&user=root&password=12345678&useSSL=false");
            
           
            ps = cn.prepareStatement("SELECT studentID, studentType, firstname, middleInitial, lastName, birthDate,"
                    + "gender, schoolEmail, phoneNum FROM MSManSys_db_app.studentProfiles WHERE studentType=?");

            // setting parameters for the prepared statement
            ps.setString(1, studentType);
            
            rs  = ps.executeQuery();
            
           
            
            while(rs.next()){
                int studID= rs.getInt("studentID");
                String studType = rs.getString("studentType");
                String fname = rs.getString("firstname");
                String mi = rs.getString("middleInitial");
                String lname = rs.getString("lastName");
                String bdate = rs.getString("birthDate");
                String sex = rs.getString("gender");
                String email = rs.getString("schoolEmail");
                String num = rs.getString("phoneNum");

                
               String profile = "studentID: " + studID + "\n" + " studentType: " + studType + "\n" + " firstname: " + fname + "\n"
                + " middleInitial: " + mi + "\n" + " lastName: " + lname + "\n" + " birthDate: " + bdate + "\n" + " gender: " + sex + "\n" +" schoolEmail: " + email + "\n" 
                + " phoneNum: " + num;
               
                studentProfiles.add(profile);
               
            }
            rs.close();
            ps.close(); // closing the prepared statement
            cn.close(); // closing the database connection
            
            
            }catch(SQLException e){
                System.out.println(e.getMessage()); // printing the error message in case of an exception
                
                
            }
        return studentProfiles;
    }
    
    /*
    public static void main(String[] args){
        
        filterStudentProfiles Filterstudentprofiles = new filterStudentProfiles();
       
        Filterstudentprofiles.studentType = "Irregular";
   
        try {
            Filterstudentprofiles.filterStudProf();
        } catch (FileNotFoundException | ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }
        
        
    }*/
}
