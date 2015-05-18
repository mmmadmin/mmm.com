package com.mmm.biz.shopping;

import java.io.Serializable;

import com.mmm.model.BizProduct;

public class CartItem implements Serializable {
	private static final long serialVersionUID = 8388627124326126637L;
	private BizProduct product;
	private int quantity;

	public CartItem(BizProduct product, int quantity) {
		this.product = product;
		this.quantity = quantity;
	}

	public int getTotalPrice() {
		return this.quantity * this.product.getPrice();
	}

	public void increaseQuantity() {
		this.quantity++;
	}

	public BizProduct getProduct() {
		return product;
	}

	public void setProduct(BizProduct product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
}
