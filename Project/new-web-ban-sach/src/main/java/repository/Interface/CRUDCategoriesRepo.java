package repository.Interface;

import model.Categories;

public interface CRUDCategoriesRepo extends CRUDRepository<Categories>{
	Categories findCategories(int id);
}
