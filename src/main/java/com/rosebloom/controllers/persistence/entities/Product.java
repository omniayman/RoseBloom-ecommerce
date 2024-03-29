// default package
// Generated 14 Mar 2023, 16:06:02 by Hibernate Tools 6.1.7.Final
package com.rosebloom.controllers.persistence.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import static jakarta.persistence.GenerationType.IDENTITY;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Product generated by hbm2java
 */
@Entity
@Table(name="product"
    ,catalog="rosebloom"
)
public class Product  implements java.io.Serializable {


    private Integer id;
    private int price;
    private String name;
    private int quantity;
    private String type;
    private String category;
    private String description;
    private String color;
    private Integer size;
    private Integer isDeleted;
    private Integer oldPrice;
    private Timestamp createdAt;
    private Plantdescription plantdescription;
    private Set<Cart> carts = new HashSet(0);
    private Set<OrderDetails> orderDetailses = new HashSet(0);
    private Set<ProductImage> productImages = new HashSet(0);
    private Set<Category> categories = new HashSet(0);

    public Product(Integer id, int price, String name, int quantity, String type, String category, String description,
            String color, Integer size, Integer oldPrice, Timestamp createdAt, int isDeleted, Plantdescription plantdescription,
            Set<ProductImage> productImages) {
        this.id = id;
        this.price = price;
        this.name = name;
        this.quantity = quantity;
        this.type = type;
        this.category = category;
        this.description = description;
        this.color = color;
        this.size = size;
        this.oldPrice = oldPrice;
        this.createdAt = createdAt;
        this.isDeleted = isDeleted;
        this.plantdescription = plantdescription;
        this.productImages = productImages;
    }


    public Product() {
    }

	
    public Product(int price, String name, int quantity, String type, String category, String description, Timestamp createdAt) {
        this.price = price;
        this.name = name;
        this.quantity = quantity;
        this.type = type;
        this.category = category;
        this.description = description;
        this.createdAt = createdAt;
    }
    public Product(int price, String name, int quantity, String type, String category, String description, String color, Integer size, Integer isDeleted, Integer oldPrice, Timestamp createdAt, Plantdescription plantdescription, Set<Cart> carts, Set<OrderDetails> orderDetailses, Set<ProductImage> productImages, Set<Category> categories) {
       this.price = price;
       this.name = name;
       this.quantity = quantity;
       this.type = type;
       this.category = category;
       this.description = description;
       this.color = color;
       this.size = size;
       this.isDeleted = isDeleted;
       this.oldPrice = oldPrice;
       this.createdAt = createdAt;
       this.plantdescription = plantdescription;
       this.carts = carts;
       this.orderDetailses = orderDetailses;
       this.productImages = productImages;
       this.categories = categories;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="id", unique=true, nullable=false)
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    
    @Column(name="price", nullable=false)
    public int getPrice() {
        return this.price;
    }
    
    public void setPrice(int price) {
        this.price = price;
    }

    
    @Column(name="name", nullable=false, length=45)
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    
    @Column(name="quantity", nullable=false)
    public int getQuantity() {
        return this.quantity;
    }
    
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    
    @Column(name="type", nullable=false, length=45)
    public String getType() {
        return this.type;
    }
    
    public void setType(String type) {
        this.type = type;
    }

    
    @Column(name="category", nullable=false, length=45)
    public String getCategory() {
        return this.category;
    }
    
    public void setCategory(String category) {
        this.category = category;
    }

    
    @Column(name="description", nullable=false, length=300)
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }

    
    @Column(name="color", length=45)
    public String getColor() {
        return this.color;
    }
    
    public void setColor(String color) {
        this.color = color;
    }

    
    @Column(name="size")
    public Integer getSize() {
        return this.size;
    }
    
    public void setSize(Integer size) {
        this.size = size;
    }

    
    @Column(name="isDeleted")
    public Integer getIsDeleted() {
        return this.isDeleted;
    }
    
    public void setIsDeleted(Integer isDeleted) {
        this.isDeleted = isDeleted;
    }

    
    @Column(name="old_price")
    public Integer getOldPrice() {
        return this.oldPrice;
    }
    
    public void setOldPrice(Integer oldPrice) {
        this.oldPrice = oldPrice;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="created_at", nullable=false, length=19)
    public Timestamp getCreatedAt() {
        return this.createdAt;
    }
    
    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    @OneToOne(fetch=FetchType.EAGER, mappedBy="product")
    public Plantdescription getPlantdescription() {
        return this.plantdescription;
    }
    
    public void setPlantdescription(Plantdescription plantdescription) {
        this.plantdescription = plantdescription;
    }

    @OneToMany(fetch=FetchType.LAZY, mappedBy="product")
    public Set<Cart> getCarts() {
        return this.carts;
    }
    
    public void setCarts(Set<Cart> carts) {
        this.carts = carts;
    }

    @OneToMany(fetch=FetchType.LAZY, mappedBy="product")
    public Set<OrderDetails> getOrderDetailses() {
        return this.orderDetailses;
    }
    
    public void setOrderDetailses(Set<OrderDetails> orderDetailses) {
        this.orderDetailses = orderDetailses;
    }

    @OneToMany(fetch=FetchType.LAZY, mappedBy="product")
    public Set<ProductImage> getProductImages() {
        return this.productImages;
    }
    
    public void setProductImages(Set<ProductImage> productImages) {
        this.productImages = productImages;
    }

    @ManyToMany(fetch=FetchType.LAZY)
    @JoinTable(name="product_category", catalog="rosebloom", joinColumns = { 
    @JoinColumn(name="product_id", nullable=false, updatable=false) }, inverseJoinColumns = { 
    @JoinColumn(name="category_id", nullable=false, updatable=false) })
    public Set<Category> getCategories() {
        return this.categories;
    }
    
    public void setCategories(Set<Category> categories) {
        this.categories = categories;
    }




}


