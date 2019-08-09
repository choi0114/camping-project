package com.sample.camping.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sample.camping.form.ProductForm;
import com.sample.camping.service.ProductService;
import com.sample.camping.vo.Pagination;
import com.sample.camping.vo.Product;
import com.sample.camping.vo.User;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	ProductService productService;
	
	@RequestMapping("/adminProduct.camp")
	public String adminProduct(Model model) {
		Map<String, Object> map = new HashMap<String, Object>();
		int begin =  1;
		int end = 6;
		map.put("begin", begin);
		map.put("end", end);
		
		model.addAttribute("products", productService.selectProduct(map));
		return "admin/product/products";
	} 
	@GetMapping("/selectAdminProduct.camp")
	public @ResponseBody  Map<String, Object> selectAdminProduct(@RequestParam int pno
												, @RequestParam String keyword
												, @RequestParam String sort) {
		Map<String, Object> selectmap = new HashMap<String, Object>();
		Map<String, Object> map = new HashMap<String, Object>();
		
		int begin = (pno - 1)*10 + 1;
		int end = pno*10;
		
		selectmap.put("begin", begin);
		selectmap.put("end", end);
		if (!keyword.isEmpty()) {
			selectmap.put("keyword", keyword);
			selectmap.put("sort", sort);
		}
		
		int records = productService.selectProductCount(selectmap);
		List<Product> products = productService.selectProduct(selectmap);
		Pagination pagination = new Pagination(1, 10, records);
		
		map.put("products", products);
		map.put("pagination", pagination);
		return map;
	} 
	
	@GetMapping("/modal.camp")
	public @ResponseBody Product modal(@RequestParam int no, Model model) {
		Product product = productService.selectProductByNo(no);
		return product;
	}
	
	@RequestMapping("/products.camp")
	public String products() {
		return "product/products";
	}
	
	@RequestMapping("/cart.camp")
	public String cart(Model model , HttpSession session) {
		User user = (User)session.getAttribute("LOGIN_USER");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", user.getId());
		productService.selectCartByUser(map);
		return "product/cart";
	}
	
	@GetMapping("/addCart.camp")
	public String addCart( @RequestParam int no , HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();
		User user = (User) session.getAttribute("LOGIN_USER");
		map.put("userId", user.getId());
		map.put("goodsNo", no);
		productService.addCart(map);
		
		return "product/cart";
	} 
	
	@GetMapping("/getCategoryCat.camp")
	public @ResponseBody Map<String, Object> getCategory( @RequestParam String cat) {
		Map<String, Object> map1 = new HashMap<String, Object>();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cat", cat);
		List<Product> products = productService.selectProductForsale(map);
		map1.put("products", products);
		map1.put("list", cat);
		
		return map1;
	} 
	
	@GetMapping("/getCategoryType.camp")
	public @ResponseBody Map<String, Object> getCategoryType(  @RequestParam String type) {
		Map<String, Object> map1 = new HashMap<String, Object>();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("type", type);
		List<Product> products = productService.selectProductForsale(map);
		map1.put("products", products);
		map1.put("list", type);
		
		return map1;
	} 
	
	@RequestMapping("/category.camp")
	public String category(Model model) {
		Map<String, Object> newMap = new HashMap<String, Object>();
		Map<String, Object> recommendMap = new HashMap<String, Object>();
		
		newMap.put("type", "NEW");
		recommendMap.put("type","RECOMMEND");
		List<Product> new1 = productService.selectProductNewBy3();
		List<Product> recommend = productService.selectProductRecommendBy3();
		model.addAttribute("new1", new1);
		model.addAttribute("recommend", recommend);
		return "product/category";
	} 

	@GetMapping("/delete.camp")
	public @ResponseBody String delete( @RequestParam int no){
		productService.deleteProduct(no);
		System.out.println("번호"+no);
		return "redirect:adminProduct.camp";
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
	@PostMapping("/modify.camp")
	public String modify(ProductForm form) throws Exception {
		Product product = new Product();
		BeanUtils.copyProperties(form, product);
		MultipartFile mf = form.getPhoto();
		System.out.println(mf);
		
		String  profileImageSaveDirectory = "C:/Users/RealBird/git/camping-project/src/main/webapp/resources/images/product";
		if(!mf.isEmpty()) {
			String filename = mf.getOriginalFilename();
			FileCopyUtils.copy(mf.getBytes(), new File(profileImageSaveDirectory, filename));
			product.setPhoto(filename);
		} 
		
		product.setGoodsNo(form.getNo());
		product.setGoodsCategory(form.getCategory());
		product.setName(form.getName());
		product.setSummary(form.getSummary());
		product.setPrice(form.getPrice());
		product.setStock(form.getStock());
		product.setGoodsSort(form.getSort());
		product.setLongSummary(form.getLongSummary());
		System.out.println(product);
		System.out.println(form.getLongSummary());
		
		productService.modifyGoods(product);
		
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
