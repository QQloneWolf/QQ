

import java.io.IOException;
import java.io.PrintStream;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/answer/")
public class Answer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Answer() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charSet=utf-8");
		String I=request.getParameter("I");
		String 	II=java.net.URLDecoder.decode(I, "utf-8");
		PrintStream out =new PrintStream(response.getOutputStream());
		String[] qq = II.split(",");
		Integer[] aa =new Integer[qq.length]; 
		for(int a=0;a<qq.length;a++){
			 aa[a] = Integer.valueOf(qq[a]);  
		}
		Integer[] bb=new Integer[aa.length];
		for(int i=0;i<aa.length;i++)
		{	int k=1;
			for(int j=0;j<aa.length;j++)
			{
				if(j==i)
					continue;
				k=k*aa[j];	
			}
		
		bb[i]=k;
		}
		String str = Arrays.toString(bb);
		System.out.println(str);
	
		out.println("<html>");
		out.println("<head>");
		out.println("<title>计算</title>");
		out.println("</head>");
		out.println("<body>");
		out.println(str);
		out.println("</body>");
		out.println("</html>");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
