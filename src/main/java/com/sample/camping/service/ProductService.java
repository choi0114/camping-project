package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import com.sample.camping.vo.Product;

public interface ProductService {
	void addProduct(Product product);
	List<Product> selectProduct(Map<String, Object> map);
	void updateProduct(Map<String, Object> map);
}
