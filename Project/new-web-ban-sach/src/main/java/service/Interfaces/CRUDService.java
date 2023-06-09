package service.Interfaces;

import java.util.List;

public interface CRUDService <T> {
	List<T> findAll();
	void insert(T t);
	void deleteById(int id);
	void edit(T t);
	T findByID(int id);
}
