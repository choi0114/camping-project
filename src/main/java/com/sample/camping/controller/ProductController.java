package com.sample.camping.controller;

import java.io.File;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.sample.camping.form.CartForm;
import com.sample.camping.form.OrderForm;
import com.sample.camping.form.ProductForm;
import com.sample.camping.form.PurchaseForm;
import com.sample.camping.service.ProductService;
import com.sample.camping.vo.Cart;
import com.sample.camping.vo.Pagination;
import com.sample.camping.vo.Product;
import com.sample.camping.vo.ProductOrder;
import com.sample.camping.vo.ProductPurchase;
import com.sample.camping.vo.User;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	ProductService productService;
	
	@RequestMapping("/purchase.camp")
	public String purchase(Model model) {
		
		List<ProductPurchase> purchases = productService.selectPurchase();
		List<PurchaseForm> purchaseForms = new ArrayList<PurchaseForm>();
		for(ProductPurchase purchase: purchases) {
			PurchaseForm form = new PurchaseForm();
			Product product = productService.selectProductByNo(purchase.getGoodsNo());
			
			form.setAmount(purchase.getAmount());
			form.setCartNo(purchase.getCartNo());
			form.setGoodsName(product.getName());
			form.setGoodsNo(purchase.getGoodsNo());
			form.setGoodsPhoto(product.getPhoto());
			form.setGoodsPrice(product.getPrice()*purchase.getAmount());
			form.setPurchaseNo(purchase.getPurchaseNo());
			
			purchaseForms.add(form);
		}
		
		
		
		model.addAttribute("purchases",purchaseForms);
		
		return "product/purchase";
	} 
	@RequestMapping("/addPurchase.camp")
	public String addPurchase(String cartNo, String goodsNo,String cartCount) {
		productService.delPurchase();	
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cartNo", cartNo);
		map.put("goodsNo", goodsNo);
		map.put("amount", cartCount);
		productService.addPurchase(map);
		productService.deleteCart(Integer.parseInt(cartNo));
	
		
		return "redirect:purchase.camp";
	} 
	@RequestMapping("/order.camp")
	public String order(HttpSession session,String no, Model model) {
		Map<String, Object> map = new HashMap<String, Object>();
		User user = (User) session.getAttribute("LOGIN_USER");
		map.put("userId",user.getId());
		map.put("purchaseNo",Integer.parseInt(no));
		List<ProductOrder> orders= productService.selectOrder(map);
		List<ProductPurchase> purchases= productService.selectPurchase();
		
		List<OrderForm> form1 = new ArrayList<OrderForm>();
		
		ProductOrder order1= new ProductOrder();
			for(ProductOrder order : orders) {
				for(ProductPurchase purchase :purchases) {
				
					OrderForm form = new OrderForm();
					Product product = productService.selectProductByNo(purchase.getGoodsNo());
					form.setAmount(purchase.getAmount());
					form.setProductName(product.getName());
					form.setPhoto(product.getPhoto());
					form.setPrice(product.getPrice());
					order1.setAddress(order.getAddress());
					order1.setPrice(order.getPrice());
					form1.add(form);
				
			}
		}
		
		
		model.addAttribute("form", form1);
		model.addAttribute("order", order1);
		
		
		return "product/order";
	} 

	@RequestMapping("/addOrder.camp")
	public String addOrder(HttpSession session, String no, String price, String addr) {
		Map<String, Object> map = new HashMap<String, Object>();
		User user = (User) session.getAttribute("LOGIN_USER");
		List<ProductPurchase> p = productService.selectPurchase();
		map.put("orderNum", no);
		for(ProductPurchase pro :p) {
			
			map.put("userId",user.getId());
			map.put("purchaseNo", pro.getPurchaseNo());
			map.put("price", Integer.parseInt(price));
			map.put("address", addr);
			productService.addOrder(map);
		}
		
		
		return "redirect:order.camp?no="+no;
	} 
	
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
	
	@RequestMapping("/detail.camp")
	public String detail(Model model, int no) {
		Product product = productService.selectProductByNo(no);
		model.addAttribute("product",product);
		return "product/detail";
	}
	@RequestMapping("/deleteCart.camp")
	public  @ResponseBody void deleteCart( @RequestParam int no) {
		 productService.deleteCart(no);
	}
	@RequestMapping("/modifyCart.camp")
	public  @ResponseBody void deleteCart(@RequestParam int no, @RequestParam int amount) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("no", no);
		map.put("amount", amount);
		
		productService.modifyCart(map);
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
		List<Cart> carts= productService.selectCartByUser(map);
		List<CartForm> cartForms = new ArrayList<CartForm>();
		
		
		for(Cart cart : carts) {
			int gno = cart.getGoodsNo();
			Product product = productService.selectProductByNo(gno);
			String name = product.getName();
			int price = product.getPrice();
			int productCount = productService.selectCartCount(map);
			String photo = product.getPhoto();
			map.put("goodsNo", gno);
			
			CartForm cartform = new CartForm();
			cartform.setCartNo(cart.getNo());
			cartform.setNo(gno);
			cartform.setPhoto(photo);
			cartform.setCount(cart.getAmount());
			cartform.setCreateDate(cart.getCreateDate());
			cartform.setName(name);
			cartform.setPrice(price);
			
			cartForms.add(cartform);
		}
		System.out.println("장바구니폼" + cartForms);
		model.addAttribute("carts", cartForms);
		return "product/cart";
	}
	
	@GetMapping("/addCart.camp")
	public String addCart( @RequestParam int no , HttpSession session, @RequestParam int amount) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		User user = (User) session.getAttribute("LOGIN_USER");
		map.put("userId", user.getId());
		map.put("goodsNo", no);
		map.put("amount", amount);
		int check = productService.selectCartCount(map);
		
		
		if(check == 0) {
			productService.addCart(map);
			return "redirect:cart.camp";
			
		} else {
			
			return "redirect:category.camp";
		}
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

	
	
	@RequestMapping("/detailLogin.camp")
	public  @ResponseBody String detailLogin(HttpSession session, @RequestParam int no , @RequestParam int amount) {
		User user = (User) session.getAttribute("LOGIN_USER");
		
		Map<String, Object> map = new HashMap<String, Object>();
		Product product =  productService.selectProductByNo(no);
		
		map.put("userId", user.getId());
		map.put("goodsNo", no);
		
		int check = productService.selectCartCount(map);
		System.out.println("check:"+check);
		
		if(check == 0 ) {
			product.setIsInCart("N");
		} else {
			product.setIsInCart("Y");
		}
		String cart = product.getIsInCart();
		System.out.println("cart:"+cart);
		System.out.println("user.getId():"+user.getId());
		return cart;
	}
	@RequestMapping("/categoryLogin.camp")
	public  @ResponseBody String categoryLogin(HttpSession session, @RequestParam int no ) {
		User user = (User) session.getAttribute("LOGIN_USER");
	
		Map<String, Object> map = new HashMap<String, Object>();
		Product product =  productService.selectProductByNo(no);

			map.put("userId", user.getId());
			map.put("goodsNo", no);
			
			int check = productService.selectCartCount(map);
			System.out.println("check:"+check);
			
			if(check == 0 ) {
				product.setIsInCart("N");
			} else {
				product.setIsInCart("Y");
			}
		String cart = product.getIsInCart();
		System.out.println("cart:"+cart);
		System.out.println("user.getId():"+user.getId());
		return cart;
	}
	@RequestMapping("/category.camp")
	public String category(Model model, String cart) {
		Map<String, Object> newMap = new HashMap<String, Object>();
		Map<String, Object> recommendMap = new HashMap<String, Object>();
		
		newMap.put("type", "NEW");
		recommendMap.put("type","RECOMMEND");
		List<Product> new1 = productService.selectProductNewBy3();
		
		List<Product> recommend = productService.selectProductRecommendBy3();
		
		model.addAttribute("cart", cart);
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
		
		String  profileImageSaveDirectory = "/Users/choeeunjeong/workspace/camping-project/src/main/webapp/resources/images/product";
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
