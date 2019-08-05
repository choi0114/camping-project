package com.sample.camping.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.sample.camping.form.ProductForm;
import com.sample.camping.service.ProductService;
import com.sample.camping.vo.Product;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	ProductService productService;
	
	@RequestMapping("/adminProduct.camp")
	public String adminProduct(Model model) {
		Map<String, Object> map = new HashMap<String, Object>();
		int end = 5;
		int begin = 1;
		map.put("begin", begin);
		map.put("end", end);
		
		model.addAttribute("products", productService.selectProduct(map));
		return "admin/product/products";
	} 
	
	@RequestMapping("/cart.camp")
	public String cart() {
		return "product/cart";
	}
	
	@RequestMapping("/category.camp")
	public String category() {
		return "product/category";
	}
	
	@PostMapping("/addProduct.camp")
	public String addproduct(ProductForm form) throws Exception {
		Product product = new Product();
		BeanUtils.copyProperties(form, product);
		MultipartFile mf = form.getPhoto();
		System.out.println(mf);
		
		String  profileImageSaveDirectory = "C:/Users/RealBird/git/camping-project/src/main/webapp/resources/images/product";
		if(!mf.isEmpty()) {
			String filename = mf.getOriginalFilename();
			FileCopyUtils.copy(mf.getBytes(), new File(profileImageSaveDirectory, filename));
			product.setPhoto(filename);
			product.setGoodsCategory(form.getCategory());
			product.setName(form.getName());
			product.setSummary(form.getSummary());
			product.setPrice(form.getPrice());
			product.setStock(form.getStock());
			product.setGoodsSort(form.getSort());
			product.setLongSummary(form.getLongSummary());
			productService.addProduct(product);
		}
		
		System.out.println(product.getName());
		return "redirect:adminProduct.camp";
	}
	
	@GetMapping("/start.camp")
	public String updateStart(@RequestParam String start ,@RequestParam int no) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("no", no);
		map.put("start", "Y");
		productService.updateProduct(map);
		return "redirect:adminProduct.camp";
	}
	
	@GetMapping("/end.camp")
	public String updateEnd(@RequestParam String end ,@RequestParam int no) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("no", no);
		map.put("end", "N");
		productService.updateProduct(map);
		return "redirect:adminProduct.camp";
	}
	
}
