package repository.Implement;

import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Product;
import repository.Interface.CRUDProductRepo;
import utils.ConnectionUtils;
import utils.ConstantProduct;

public class ProductRepoImpl implements CRUDProductRepo {

	public List<Product> findAll() {
		// TODO Auto-generated method stub
		List<Product> listProduct = new ArrayList<Product>();
		Connection connection = ConnectionUtils.getConnection();
		try {
			PreparedStatement preState = connection.prepareStatement(ConstantProduct.SELECT_ALL_PRODUCT);
			ResultSet rs = preState.executeQuery();
			while (rs.next()) {
				int idProduct = rs.getInt("id");
				String name = rs.getString("nameProduct");
				int price = rs.getInt("price");
				int discount = rs.getInt("discount");
				String thumbnail = rs.getString("thumbnail");
				String description = rs.getString("descriptions");
				String creDate = rs.getString("created_at");
				String upDate = rs.getString("updated_at");
				String nxb = rs.getString("nxb");
				String tacgia = rs.getString("tacgia");
				String loaibia = rs.getString("loaibia");
				int sotrang = rs.getInt("sotrang");
				int cateId = rs.getInt("categoryID");
				Product product = new Product(idProduct, name, price, discount, thumbnail, description, creDate, upDate,
						nxb, tacgia, loaibia, sotrang, cateId);
				listProduct.add(product);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("SQLException");
		}

		return listProduct;
	}

	public void insert(Product t) {
		// TODO Auto-generated method stub
		Connection connection = ConnectionUtils.getConnection();
		try {
			PreparedStatement statement = connection.prepareStatement(ConstantProduct.INSERT_PRODUCT);
			statement.setString(1, t.getNameProduct());
			statement.setInt(2, t.getPrice());
			statement.setInt(3, t.getDiscount());
			statement.setString(4, t.getThumbnail());
			statement.setString(5, t.getDescription());
			statement.setString(6, t.getCreatedAt());
			statement.setString(7, t.getUpdatedAt());
			statement.setInt(8, t.getCatID());
			statement.setString(9, t.getNxb());
			statement.setString(10, t.getTacgia());
			statement.setString(11, t.getLoaibia());
			statement.setInt(12, t.getSotrang());
			statement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	public void deleteById(int id) {
		// TODO Auto-generated method stub

	}

	public void edit(Product t) {
		// TODO Auto-generated method stub

	}

}