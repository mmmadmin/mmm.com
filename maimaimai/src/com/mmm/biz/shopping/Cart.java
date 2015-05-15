package com.mmm.biz.shopping;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.mmm.model.BizProduct;

public class Cart implements Serializable {
    private static final long serialVersionUID = 7901330827203016310L; 
    private Map<Integer, CartItem> map = new HashMap<Integer, CartItem>(); 

    public List<CartItem> getItems() { 
        return new ArrayList<CartItem>(map.values()); 
    } 

    public void addItem(BizProduct product) { 
        int id = product.getId(); 
        CartItem item = map.get(id); 
        if (item != null) 
            item.increaseQuantity(); 
        else 
            map.put(id, new CartItem(product, 1)); 
     } 

    public int getTotalPrice() { 
        int total = 0; 
        for (CartItem item : map.values()) 
            total += item.getProduct().getPrice() * item.getQuantity(); 
        return total; 
    }

}
