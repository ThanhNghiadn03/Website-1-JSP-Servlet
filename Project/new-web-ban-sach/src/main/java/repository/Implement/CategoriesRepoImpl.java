package repository.Implement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Categories;
import repository.Interface.CRUDCategoriesRepo;
import utils.ConnectionUtils;
import utils.ConstantCategries;

public class CategoriesRepoImpl implements CRUDCategoriesRepo{

	public List<Categories> findAll() {
		// TODO Auto-generated method stub
		List<Categories> listCate = new ArrayList<Categories>();
		Connection connection = ConnectionUtils.getConnection();
		try {
			PreparedStatement preState = connection.prepareStatement(ConstantCategries.SELECT_ALL_CATEGORIES);
			ResultSet rs = preState.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("nameCategory");
				Categories cate = new Categories(id,name);
				listCate.add(cate);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("SQLException");
		}	
		return listCate;
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

	@Override
	public Categories findByID(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
