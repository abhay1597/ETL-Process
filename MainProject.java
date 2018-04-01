package mainproject;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MainProject {
    public static void main(String[] args) {
        JFrame jFrame = new JFrame("ADBMS PROJECT");
        jFrame.setVisible(true);
        jFrame.setDefaultCloseOperation(jFrame.EXIT_ON_CLOSE);
        jFrame.setSize(600, 600);
        JPanel jPanel = new JPanel();
        jFrame.add(jPanel);
        JButton extract = new JButton("EXTRACT");
        JButton transform = new JButton("TRANSFORM");
        JButton load = new JButton("LOAD");
        jPanel.add(extract);
        jPanel.add(transform);
        jPanel.add(load);
        extract.addActionListener(new Action1());
        transform.addActionListener(new Action2());
        load.addActionListener(new Action3());
    }
    static class Action1 implements ActionListener {
        @Override
        public void actionPerformed(ActionEvent e) {
            try {
                DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
                Connection conn1 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "etl", "123456789");
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ak?zeroDateTimeBehavior=convertToNull", "root", "123456789");
                Class.forName("org.postgresql.Driver");
                Connection conn3 = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AK", "postgres", "123456789");
                JOptionPane.showMessageDialog(null, "Successfully Extracted");
            } catch (Exception ex) {
                JOptionPane.showMessageDialog(null, "Error Occurred " + ex);
            }
        }
    }
    static class Action2 implements ActionListener {
        @Override
        public void actionPerformed(ActionEvent e) {
            String jGender[] = new String[150];
            String jSrNo[] = new String[150];
            int jAge[] = new int[150];
            String jEmail[] = new String[150];
            String jName[] = new String[150];
            int i = 0;
            int jId[] = new int[300];
            try {
                DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
                Connection conn1 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "etl", "123456789");
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ak?zeroDateTimeBehavior=convertToNull", "root", "123456789");
                Class.forName("org.postgresql.Driver");
                Connection conn3 = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AK", "postgres", "123456789");
                Statement stmt1 = conn1.createStatement();
                Statement stmt2 = conn2.createStatement();
                Statement stmt3 = conn3.createStatement();
                ResultSet rs1 = stmt1.executeQuery("select * from customer where age>50");
                ResultSet rs2 = stmt2.executeQuery("select * from customer where age>50");
                ResultSet rs3 = stmt3.executeQuery("Select * from customer where age>50");
                i = 0;
                while (rs1.next() || rs2.next() || rs3.next()) {
                    if (rs1.next() == true) {
                        jName[i] = rs1.getString("Name");
                        jSrNo[i] = rs1.getString("SrNo");
                        jGender[i] = rs1.getString("Gender");
                        jAge[i] = Integer.parseInt(rs1.getString("Age"));
                        jEmail[i] = rs1.getString("Email");
                        jId[i] = Integer.parseInt(rs1.getString("CustId"));
                        i++;
                    }
                    if (rs2.next() == true) {
                        jName[i] = rs2.getString("Cname");
                        jSrNo[i] = rs2.getString("SRno");
                        jGender[i] = rs2.getString("Gender");
                        jAge[i] = Integer.parseInt(rs2.getString("Age"));
                        jEmail[i] = rs2.getString("Email");
                        jId[i] = Integer.parseInt(rs2.getString("CustId"));
                        i++;
                    }
                    if (rs3.next() == true) {
                        jName[i] = rs3.getString("Cname");
                        jSrNo[i] = rs3.getString("Srno");
                        jGender[i] = rs3.getString("Gender");
                        jAge[i] = Integer.parseInt(rs3.getString("Age"));
                        jEmail[i] = rs3.getString("Email");
                        jId[i] = Integer.parseInt(rs3.getString("Custid"));
                        i++;
                    }
                }
                JOptionPane.showMessageDialog(null, "Data stored in array");                
               i = 0;
                while (jGender[i]!=null) {
                    if (jGender[i].equals("M") || jGender[i].equals("1")) {
                        jGender[i]="Male";
                        i++;
                    } else if (jGender[i].equals("F")|| jGender[i].equals("0")) {
                        jGender[i]="Female";
                        i++;
                    }
                    else {
                        i++;
                    }
                }
                //String sql="create table customerIntermediate(Srno varchar(10), CustId int primary key,Name varchar(50),Age int,Email varchar(100),Gender varchar(10))";
               //stmt1.executeUpdate(sql);                           
                while(jName[i]!=null){
                    if(jGender[i]!=null){
                    stmt1.executeUpdate("insert into customerIntermediate values('"+i+"',"+jId[i]+","+"'"+jName[i]+"',"+jAge[i]+",'"+jEmail[i]+"','"+jGender[i]+"')");
                    i++;
                    }
                   }
                JOptionPane.showMessageDialog(null,"Data Entered in Intermediate table");               
                           } 
catch (Exception ex) {
                JOptionPane.showMessageDialog(null, "Error in Transforming " + ex);
            }
        }
    }
    static class Action3 implements ActionListener{
        @Override
        public void actionPerformed(ActionEvent e) {
            try {
                DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
                Connection connMain = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "etl", "123456789");
                Statement stmtStatement=connMain.createStatement();
                Class.forName("org.postgresql.Driver");
                Connection connMain1 = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AK", "postgres", "123456789");
                Statement pgStatement=connMain1.createStatement();
                ResultSet rsMain=stmtStatement.executeQuery("Select * from customerIntermediate");
                //pgStatement.executeUpdate("create table customerMain(Srno varchar(10), CustId int primary key,Name varchar(50),Age int,Email varchar(100),Gender varchar(10))");
                while(rsMain.next()){
                    pgStatement.executeUpdate("insert into customerMain values('"+rsMain.getString("SrNO")+"',"+rsMain.getString("CustID")+",'"+rsMain.getString("Name")+"',"+rsMain.getString("age")+",'"+rsMain.getString("Email")+"','"+rsMain.getString("Gender")+"')");
                }                       
         JOptionPane.showMessageDialog(null,"Loading Done Successfully");                
            } catch (Exception ex) {
                System.out.println("Error Occurred : "+ex);
            	}           
      		  }   
}   
}
