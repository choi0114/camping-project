package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import com.sample.camping.vo.Cart;
import com.sample.camping.vo.Product;
import com.sample.camping.vo.ProductOrder;
import com.sample.camping.vo.ProductPurchase;

public interface ProductService {
	List<ProductPurchase> selectPurchase();
	void deleteCart(Integer no);
	void modifyCart(Map<String, Object> map);
	void addOrder(Map<String, Object> map);
	void addPurchase(Map<String, Object> map);
	void addProduct(Product product);
	void delPurchase();
	List<Product> selectProduct(Map<String, Object> map);
	void updateProduct(Map<String, Object> map);
	Integer selectCartCount(Map<String, Object> map);
	Integer selectProductCount(Map<String, Object> map);
	Product selectProductByNo(Integer no);
	void deleteProduct(Integer no);
	void modifyGoods(Product product);
	List<Product> selectProductByCatType(Map<String, Object> map);
	List<Product> selectProductNewBy3();
	List<Product> selectProductRecommendBy3();
	List<Product> selectProductForsale(Map<String, Object> map);
	void addCart(Map<String, Object> map);
	List<Cart> selectCartByUser(Map<String, Object> map);
	List<ProductOrder> selectOrder(Map<String, Object> map);
}
