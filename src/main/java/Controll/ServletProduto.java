package Controll;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ArmazenamentoDAO;
import dao.CategoriaDAO;
import dao.FornecedorDAO;
import dao.MarcaDAO;
import dao.ProdutoDAO;
import dao.ReceitaDAO;
import dao.StatusProdutoDAO;
import entidades.Produto;

@WebServlet("/ServletProduto")
public class ServletProduto extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProdutoDAO dao;
	private MarcaDAO marcaDao;
	private CategoriaDAO categoriaDao;
	private StatusProdutoDAO statusDao; 
	private ArmazenamentoDAO armazenaDao; 
	private FornecedorDAO forneceDao; 
	private ReceitaDAO receitaDao;

	public ServletProduto() {
		super();
		dao = new ProdutoDAO();
		marcaDao = new MarcaDAO();
		categoriaDao = new CategoriaDAO();
		statusDao = new StatusProdutoDAO(); 
		armazenaDao = new ArmazenamentoDAO();
		forneceDao = new FornecedorDAO();
		receitaDao = new ReceitaDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String option = request.getParameter("option");

		if (option.equals("insertForm")) {
			InsertForm(request, response);

		} else if (option.equals("updateForm")) {
			UpdateForm(request, response);
		} else if (option.equals("update")) {
			Update(request, response);

		} else if (option.equals("delete")) {
			Delete(request, response);

		} else if (option.equals("insert")) {
			Insert(request, response);

		}

		// pesquisa pessaol
		if (option.equals("btnsearch")) {
			String search = request.getParameter("search");
			request.setAttribute("lista", dao.ListProdutoLike(search));

		} else {
			request.setAttribute("lista", dao.ListProduto());

		}

		request.getRequestDispatcher("produto.jsp").forward(request, response);
	}

	protected void InsertForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("listaStatus", 		statusDao.getListStatus());
		request.setAttribute("listaMarca", 			marcaDao.getListMarca());
		request.setAttribute("listaCategoria", 		categoriaDao.getListCategoria());
		request.setAttribute("listaArmazenamento",	armazenaDao.getlist()); 
		request.setAttribute("listaFornecedor", 	forneceDao.getListFornecedor());  
		request.setAttribute("listaReceita", 		receitaDao.getListReceita());   
		
		request.getRequestDispatcher("cadastroProduto.jsp").forward(request, response);
	}

	protected void UpdateForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		Integer id1 = Integer.parseInt(id);
		Produto Buscar = dao.buscarProduto(id1);

		request.setAttribute("produto", Buscar);
		request.setAttribute("listaStatus",    statusDao.getListStatus());
		request.setAttribute("listaMarca", 	   marcaDao.getListMarca());
		request.setAttribute("listaCategoria", categoriaDao.getListCategoria());
		request.getRequestDispatcher("cadastroProduto.jsp").forward(request, response);
	}

	protected void Update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { 
		String id = 			request.getParameter("id");
		String nome = 			request.getParameter("nome");
		String preco = 			request.getParameter("preco");
		String imagem = 		request.getParameter("imagem");
		String categoria = 		request.getParameter("categoria");
		String marca = 			request.getParameter("marca");
		String descricao =		request.getParameter("descricao");
		String status =			request.getParameter("status");
		String peso = 			request.getParameter("peso"); 
		String fornecedor = 	request.getParameter("fornecedor"); 
		String armazenamento = 	request.getParameter("armazenamento"); 
		String receita = 		request.getParameter("receita");  
		String quantidade =		request.getParameter("quantidade");

		if ((nome != null) && (preco != null) && (imagem != null) && (categoria != null) && (marca != null)
				&& (descricao != null) && (status != null) && (peso != null)) {
			if (!nome.equals("")) {
				dao = new ProdutoDAO();
				Integer id1 = Integer.parseInt(id);
				Produto produto = new Produto(nome, new BigDecimal(preco), imagem, descricao, Double.parseDouble(peso),
						  Integer.parseInt(quantidade),  Integer.parseInt(categoria), Integer.parseInt(marca), Integer.parseInt(status),
						  Integer.parseInt(armazenamento), Integer.parseInt(fornecedor), Integer.parseInt(receita));    
				produto.setId(id1);
				dao.updateProduto(produto);
			}
		}
	}

	protected void Delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		if (id != null) {
			Integer id1 = Integer.parseInt(id);
			dao = new ProdutoDAO();
			dao.removeProduto(id1);

		}
	}

	protected void Insert(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String preco = request.getParameter("preco");
		String imagem = request.getParameter("imagem");
		String categoria = request.getParameter("categoria");
		String marca = request.getParameter("marca");
		String descricao = request.getParameter("descricao");
		String status = request.getParameter("status");
		String peso = request.getParameter("peso"); 
		String fornecedor = request.getParameter("fornecedor"); 
		String armazenamento = request.getParameter("armazenamento"); 
		String receita = request.getParameter("receita");  
		String quantidade = request.getParameter("quantidade");
		

		if ((nome != null) && (preco != null) && (imagem != null) && (categoria != null) && (marca != null)
				&& (descricao != null) && (status != null) && (peso != null)) {
			if (!nome.equals("")) {
				dao = new ProdutoDAO();
				Double peso1 =  Double.parseDouble(peso);
				Integer quant = Integer.parseInt(quantidade); 
				Integer categoria1 =  Integer.parseInt(categoria); 
				Integer marca1 =  Integer.parseInt(marca); 
				Integer status1 = Integer.parseInt(status);
				Integer armazenamento1 = Integer.parseInt(armazenamento); 
				Integer fornecedor1 = Integer.parseInt(fornecedor); 
				Integer receita1 =  Integer.parseInt(receita); 
				BigDecimal preco1 =  new BigDecimal(preco);
				Produto produto = new Produto(nome,preco1, imagem, descricao,peso1, quant, categoria1,marca1, status1,armazenamento1 , fornecedor1,receita1);    
				dao.addProduto(produto);
			}
		}
	}

}