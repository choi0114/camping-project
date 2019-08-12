package com.sample.camping.dao;

import java.util.List;
import java.util.Map;

import com.sample.camping.vo.Cart;
import com.sample.camping.vo.Product;

public interface ProductDao {
	void addProduct(Product product);
	List<Product> selectProduct(Map<String, Object> map);
	void updateProduct(Map<String, Object> map);
	Integer selectProductCount(Map<String, Object> map);
	Integer selectCartCount(Map<String, Object> map);
	Product selectProductByNo(Integer no);
	void deleteProduct(Integer no);
	void modifyGoods(Product product);
	List<Product> selectProductForsale(Map<String, Object> map);
	List<Product> selectProductByCatType(Map<String, Object> map);
	List<Product> selectProductNewBy3();
	List<Product> selectProductRecommendBy3();
	List<Cart> selectCartByUser(Map<String, Object> map);
	void addCart(Map<String, Object> map);
}
