package com.mmm.biz.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.mmm.model.BizProduct;

@Service("bizProductService")
public class BizProductService {

	/* BizProducts 用于存放多个商品 */
	private Map<Integer, BizProduct> BizProducts = new HashMap<Integer, BizProduct>();

	public BizProductService() {
		BizProducts.put(1, new BizProduct(1, "Bulldog", 1000));
		BizProducts.put(2, new BizProduct(2, "Chihuahua", 1500));
		BizProducts.put(3, new BizProduct(3, "Labrador", 2000));
	}

	public List<BizProduct> getBizProducts() {
		return new ArrayList<BizProduct>(BizProducts.values());
	}

	public BizProduct getBizProduct(int BizProductId) {
		return BizProducts.get(BizProductId);
	}
}
