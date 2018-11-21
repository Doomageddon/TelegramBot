package entity;

import javax.persistence.*;

@Entity
@Table(name = "discountsAtb")
public class Item {

	public Item() {

	}

	public Item(String title, int discount, int priceGrn, int priceKop, double oldPrice, String url) {
		this.title = title;
		this.discount = discount;
		this.priceGrn = priceGrn;
		this.priceKop = priceKop;
		this.oldPrice = oldPrice;
		this.url = url;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String title;
	private int discount;
	private int priceGrn;
	private int priceKop;
	private double oldPrice;
	private String url;

	public int getId() {
		return id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public int getPriceGrn() {
		return priceGrn;
	}

	public void setPriceGrn(int priceGrn) {
		this.priceGrn = priceGrn;
	}

	public int getPriceKop() {
		return priceKop;
	}

	public void setPriceKop(int priceKop) {
		this.priceKop = priceKop;
	}

	public double getOldPrice() {
		return oldPrice;
	}

	public void setOldPrice(double oldPrice) {
		this.oldPrice = oldPrice;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}
