/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mfont.model;

/**
 *
 * @author accueil
 */
public class Product {
    String category,name,description,unit;
    float quantity;

    public Product() {
    }

    public Product(String category, String name, String description, float quantity,String unit) {
        this.category = category;
        this.name = name;
        this.description = description;
        this.quantity = quantity;
        this.unit = unit;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public Product(String name) {
        this.name = name;
    }
    
     public Product( String name, String description, float quantity) {
        this.name = name;
        this.description = description;
        this.quantity = quantity;
    }
     
      public Product(String name, float quantity) {
        this.name = name;
        this.quantity = quantity;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getQuantity() {
        return quantity;
    }

    public void setQuantity(float quantity) {
        this.quantity = quantity;
    }
    
    
    
}
