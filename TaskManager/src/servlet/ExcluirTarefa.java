package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Tarefas;
import service.TarefasService;

/**
 * Servlet implementation class ExcluirTarefa
 */
@WebServlet(name = "ExcluirTarefa.do", urlPatterns = { "/ExcluirTarefa.do" })
public class ExcluirTarefa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExcluirTarefa() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Captura de parametros: (a id a ser excluida do banco de dados.		
		
		int id = Integer.parseInt(request.getParameter("id_tarefa"));
		
		//Instanciar objeto tipo noticia:
		
		Tarefas tarefas = new Tarefas();
		tarefas.setId(id);
		
		
		// enviar o objeto id para a service remover:
		
		TarefasService tarefasService = new TarefasService();
		tarefasService.excluir(tarefas);
		
		PrintWriter saida = response.getWriter();
		response.setContentType ("text/html");
		saida.println("Exclusão realizada com sucesso!");
		saida.println(" <a href='home.jsp'> Clique aqui para visualizar as tarefas </a>");
	}


}
