package org.software.product;

public class Product {
	
	private long id;
	private int published;
	private double rating_cache;
	private int rating_count;
	private int category_id;
	private String name;
	private double pricing;
	private String short_description;
	private String long_description;
	private String icon;

	public Product() {
		super();
	}

	public Product(long id, int published, double rating_cache, int rating_count, int category_id, String name, double pricing, 
			String short_description, String long_description, String icon) {
		super();
		this.id = id;
		this.published = published;
		this.rating_cache = rating_cache;
		this.rating_count = rating_count;
		this.category_id = category_id;
		this.name = name;
		this.pricing = pricing;
		this.short_description = short_description;
		this.long_description = long_description;
		this.icon = icon;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
	
	public int getPublished() {
		return published;
	}

	public void setPublished(int published) {
		this.published = published;
	}

	public double getRating_cache() {
		return rating_cache;
	}

	public void setRating_cache(double rating_cache) {
		this.rating_cache = rating_cache;
	}
	
	public int getRating_count() {
		return rating_count;
	}

	public void setRating_count(int rating_count) {
		this.rating_count = rating_count;
	}
	
	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;

	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPricing() {
		return pricing;
	}

	public void setPricing(double pricing) {
		this.pricing = pricing;
	}

	public String getShort_description() {
		return short_description;
	}

	public void setShort_description(String short_description) {
		this.short_description = short_description;
	}

	public String getLong_description() {
		return long_description;
	}

	public void setLong_description(String long_description) {
		this.long_description = long_description;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

}
