package service.Implement;

import java.util.List;

import model.Product;
import repository.Implement.ProductRepoImpl;
import repository.Interface.CRUDProductRepo;
import service.Interfaces.CRUDProduct;

public class ProductServiceImpl implements CRUDProduct{
	
	CRUDProductRepo productRepo = new ProductRepoImpl();
	
	public List<Product> findAll() {
		// TODO Auto-generated method stub
		return productRepo.findAll();
	}

	public void insert(Product t) {
		// TODO Auto-generated method stub
		productRepo.insert(t);
	}

	public void deleteById(int id) {
		// TODO Auto-generated method stub
		productRepo.deleteById(id);
	}

	public void edit(Product t) {
		// TODO Auto-generated method stub
		
	}
	
}
