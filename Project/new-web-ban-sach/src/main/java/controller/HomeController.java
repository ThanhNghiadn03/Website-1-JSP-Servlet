package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Categories;
import model.Product;
import service.Implement.CategoriesServiceImpl;
import service.Implement.ProductServiceImpl;
import service.Interfaces.CRUDCategories;
import service.Interfaces.CRUDProduct;

@WebServlet (urlPatterns = {"/trang-chu"})
public class HomeController extends HttpServlet{
	
	CRUDProduct productService = new ProductServiceImpl();
	CRUDCategories cateService = new CategoriesServiceImpl();

	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException {
		showProduct(request,response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
	}
	
	private void showProduct(HttpServletRequest request, HttpServletResponse response) {
		showCategories(request, response);
		List<Product> listProduct = new ArrayList<Product>();
		listProduct = productService.findAll();
		request.setAttribute("listProduct", listProduct);
		try {
			request.getRequestDispatcher("views/home/home.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			System.out.println("Servlet Exception");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println("IOException");
		}
		
	}
	
	private void showCategories(HttpServletRequest request, HttpServletResponse response) {
		List<Categories> listCate = new ArrayList<Categories>();
		listCate = cateService.findAll();
		request.setAttribute("listCate", listCate);
	}
	
}
