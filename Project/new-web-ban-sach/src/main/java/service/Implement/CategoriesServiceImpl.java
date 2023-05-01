package service.Implement;

import java.util.List;

import model.Categories;
import repository.Implement.CategoriesRepoImpl;
import repository.Interface.CRUDCategoriesRepo;
import service.Interfaces.CRUDCategories;

public class CategoriesServiceImpl implements CRUDCategories {
	
	CRUDCategoriesRepo cateRepo = new CategoriesRepoImpl();

	public List<Categories> findAll() {
		// TODO Auto-generated method stub
		return cateRepo.findAll();
	}

	public void insert(Categories t) {
		// TODO Auto-generated method stub
	}

	public void deleteById(int id) {
		// TODO Auto-generated method stub
		
	}

	public void edit(Categories t) {
		// TODO Auto-generated method stub
		
	}

	public Categories findCategories(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
