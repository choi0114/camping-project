package com.sample.camping.dao;

import java.util.List;
import java.util.Map;

import com.sample.camping.vo.Product;

public interface ProductDao {
	void addProduct(Product product);
	List<Product> selectProduct(Map<String, Object> map);
	void updateProduct(Map<String, Object> map);
}
