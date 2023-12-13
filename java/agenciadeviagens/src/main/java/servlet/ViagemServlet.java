@WebServlet("/ViagemServlet")
public class ViagemServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        String nome = request.getParameter("nome");
        String sobrenome = request.getParameter("sobrenome");
        String email = request.getParameter("email");
     
        Viagem viagem = new Viagem();
        viagem.setNome(nome);
        viagem.setSobrenome(sobrenome);
        viagem.setEmail(email);
      
        response.sendRedirect("sucesso.jsp");
    }

    
}
