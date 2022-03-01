package org.software.category;

import java.util.List;


import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "categories")
public class CategoryList {
	
	private List<Category> data;

	public CategoryList() {
	}

	public CategoryList(List<Category> data) {
		this.data = data;
	}

	@XmlElement(name = "data")
	public List<Category> getData() {
		return data;
	}
}
