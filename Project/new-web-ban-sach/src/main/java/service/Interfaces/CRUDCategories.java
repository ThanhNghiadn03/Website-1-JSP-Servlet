package service.Interfaces;

import model.Categories;

public interface CRUDCategories extends CRUDService<Categories> {
	Categories findCategories(int id);
}
