package org.software.product;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "products")
public class ProductList {
	
	private List<Product> data;

	public ProductList() {
	}

	public ProductList(List<Product> data) {
		this.data = data;
	}

	@XmlElement(name = "data")
	public List<Product> getData() {
		return data;
	}
}
