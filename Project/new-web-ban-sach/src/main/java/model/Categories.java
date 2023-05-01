package model;

public class Categories {
	private int idCategory;
	private String nameCategory;
	public int getIdCategory() {
		return idCategory;
	}
	
	//Setter + Getter.
	
	public void setIdCategory(int idCategory) {
		this.idCategory = idCategory;
	}
	public String getNameCategory() {
		return nameCategory;
	}
	public void setNameCategory(String nameCategory) {
		this.nameCategory = nameCategory;
	}
	
	//Constructor
	
	public Categories(int idCategory, String nameCategory) {
		this.idCategory = idCategory;
		this.nameCategory = nameCategory;
	}
	public Categories() {
	}
	
	//toString
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "ID: "+this.idCategory+" ; The loai: "+this.nameCategory;
	}
}
