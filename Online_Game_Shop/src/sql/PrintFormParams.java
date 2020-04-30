package sql;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;

import javax.servlet.http.*;

public class PrintFormParams  extends HttpServlet   
{
  public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException  
  {
	
    res.setContentType("Text/html");
    PrintWriter pw = res.getWriter();
 
    java.util.Enumeration e = req.getParameterNames();
    pw.println("<table border=1>");
    
    while(e.hasMoreElements())
    {
      String fieldname = (String) e.nextElement();
      String value = req.getParameter(fieldname);
 
      if(value.length() != 0)
      {
        pw.println("<tr><th>" + fieldname + "</th><td>" + value + "</td></tr>");
      }
      else
      {
        pw.println("<tr><th>" + fieldname + "</th> <td>Null</td> </tr>");
      }
    }
   
    pw.println("<table>");
    pw.close();
    
   
  }
}
  
