package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Home
 */
@WebServlet(name = "Home.do", urlPatterns = { "/Home.do" })
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Home() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter saida = response.getWriter();

		HttpSession sessao = request.getSession();
		
		String emailUsuario = (String) sessao.getAttribute("email_usuario");
		
		if (emailUsuario != null) {
			saida.println("Seja bem vindo, " + emailUsuario + "<br/>");			
			//saida.println("<a href="index.html\"> Clique aqui para Desconectar </a>");
			saida.println(" <a href='Logoff.do'> Clique aqui para Desconectar </a>");
		}
		else {
			saida.println("Voc� n�o est� conectado!");
		}
	}
}

