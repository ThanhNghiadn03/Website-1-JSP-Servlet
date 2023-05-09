package utils;

public interface ConstantProduct {
	String SELECT_ALL_PRODUCT = "select * from product;";
	String INSERT_PRODUCT = "insert into product(nameProduct,price,discount,thumbnail,descriptions,created_at,updated_at,categoryID,nxb,tacgia,loaibia,sotrang) values (?,?,?,?,?,?,?,?,?,?,?,?);";
	String DELETE_PRODUCT = "delete from product where id = ?;";
	
}
