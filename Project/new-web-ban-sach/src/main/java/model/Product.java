package model;

public class Product {	
	private int idProduct;
	private String nameProduct;
	private int price;
	private int discount;
	private String thumbnail;
	private String description;
	private String createdAt;
	private String updatedAt;
	private String nxb;
	private String tacgia;
	private String loaibia;
	private int sotrang;
	private int catID;
	
	//Getter + Setter
	
	public int getIdProduct() {
		return idProduct;
	}
	public void setIdProduct(int idProduct) {
		this.idProduct = idProduct;
	}
	public String getNameProduct() {
		return nameProduct;
	}
	public void setNameProduct(String nameProduct) {
		this.nameProduct = nameProduct;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}
	public String getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(String updatedAt) {
		this.updatedAt = updatedAt;
	}
	public int getCatID() {
		return catID;
	}
	public void setCatID(int catID) {
		this.catID = catID;
	}
	public String getNxb() {
		return nxb;
	}
	public void setNxb(String nxb) {
		this.nxb = nxb;
	}
	public String getTacgia() {
		return tacgia;
	}
	public void setTacgia(String tacgia) {
		this.tacgia = tacgia;
	}
	public String getLoaibia() {
		return loaibia;
	}
	public void setLoaibia(String loaibia) {
		this.loaibia = loaibia;
	}
	public int getSotrang() {
		return sotrang;
	}
	public void setSotrang(int sotrang) {
		this.sotrang = sotrang;
	}
	
	// Constructor
	
	public Product() {
		// TODO Auto-generated constructor stub
	}
	public Product(int idProduct, String nameProduct, int price, int discount, String thumbnail, String description,
			String createdAt, String updatedAt, String nxb, String tacgia, String loaibia, int sotrang, int catID) {
		this.idProduct = idProduct;
		this.nameProduct = nameProduct;
		this.price = price;
		this.discount = discount;
		this.thumbnail = thumbnail;
		this.description = description;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		this.nxb = nxb;
		this.tacgia = tacgia;
		this.loaibia = loaibia;
		this.sotrang = sotrang;
		this.catID = catID;
	}
	public Product(String nameProduct, int price, int discount, String thumbnail, String description, String createdAt,
			String updatedAt, String nxb, String tacgia, String loaibia, int sotrang, int catID) {
		this.nameProduct = nameProduct;
		this.price = price;
		this.discount = discount;
		this.thumbnail = thumbnail;
		this.description = description;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		this.nxb = nxb;
		this.tacgia = tacgia;
		this.loaibia = loaibia;
		this.sotrang = sotrang;
		this.catID = catID;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.nameProduct+";"+this.price+";"+this.discount+";"+this.thumbnail+";"+this.description+";"+this.createdAt+";"+this.updatedAt+";"+this.nxb+";"+this.tacgia+";"+this.loaibia+";"+this.sotrang+";"+this.catID;
	}
	
}
