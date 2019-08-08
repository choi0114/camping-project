package com.sample.camping.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.camping.dao.ProductDao;
import com.sample.camping.vo.Product;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	ProductDao productDao;
	
	@Override
	public void addProduct(Product product) {
		productDao.addProduct(product);
	}
	@Override
	public List<Product> selectProduct(Map<String, Object> map) {
		return productDao.selectProduct(map);
	}
	@Override
	public void updateProduct(Map<String, Object> map) {
		productDao.updateProduct(map);
	}
	@Override
	public Integer selectProductCount(Map<String, Object> map) {
		return productDao.selectProductCount(map);
	}
	@Override
	public Product selectProductByNo(Integer no) {
		return productDao.selectProductByNo(no);
	}
	@Override
	public void deleteProduct(Integer no) {
		
		productDao.deleteProduct(no);
		
	}
	@Override
	public void modifyGoods(Product product) {
		productDao.modifyGoods(product);
	}
	@Override
	public List<Product> selectProductByCatType(Map<String, Object> map) {
		return productDao.selectProductByCatType(map);
	}

}
