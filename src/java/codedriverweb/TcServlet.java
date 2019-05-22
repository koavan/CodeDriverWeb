/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package codedriverweb;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.mysql.jdbc.*;
import java.sql.*;
import org.json.*;

/**
 *
 * @author staff
 */
public class TcServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        StringBuilder sb = new StringBuilder();
        String probName = request.getParameter("tcName").toString();
        
        JSONObject jobj = new JSONObject();
        
        try
        {  
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/codedriver","root","codingteam");  
  
            Statement stmt=con.createStatement();  
            ResultSet rs=stmt.executeQuery("select * from problempool where pblmName='" + probName + "'");  
            
            while(rs.next())
            {
                jobj.put("id", rs.getString(1));
                jobj.put("name", rs.getString(2));
                
                Statement tcStmnt = con.createStatement();
                ResultSet tcResultSet = tcStmnt.executeQuery("SELECT * FROM testcasepool WHERE pblmIDs LIKE '%" + rs.getString(1) + "%'");
                
                tcResultSet.next();
                
                int tcCount = tcResultSet.getInt("tcCount");
                jobj.put("count", tcCount);
                
                JSONArray jarr = new JSONArray();
                
                for(int i=1;i<=tcCount;i++)
                {
                    String name = "tc" + i;
                    
                    boolean sample = tcResultSet.getBoolean("sample"+i);
                    System.out.println("isSample : " + sample);
                    
                    String isSample = sample?"true":"false";
                    String inputs = tcResultSet.getString("input"+i);
                    String outputs = tcResultSet.getString("output"+i);;
                    
                    JSONObject tobj = new JSONObject();
                    tobj.put("name", name);
                    tobj.put("isSample",isSample);
                    tobj.put("inputs",new JSONArray(inputs));
                    tobj.put("outputs",new JSONArray(outputs));
                    
                    jarr.put(tobj);
                }
                //System.out.println(jarr.toString());
                jobj.put("testcases", jarr);
            }
            con.close();  
        }
        catch(Exception e)
        { 
            e.printStackTrace();
        }  
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println(jobj.toString());
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
