// default package
// Generated 14 Mar 2023, 16:06:02 by Hibernate Tools 6.1.7.Final
package com.rosebloom.controllers.persistence.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

/**
 * OrderDetailsId generated by hbm2java
 */
@Embeddable
public class OrderDetailsId  implements java.io.Serializable {


    private int orderId;
    private int productId;

    public OrderDetailsId() {
    }

    public OrderDetailsId(int orderId, int productId) {
       this.orderId = orderId;
       this.productId = productId;
    }
   


    @Column(name="order_id", nullable=false)
    public int getOrderId() {
        return this.orderId;
    }
    
    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }


    @Column(name="product_id", nullable=false)
    public int getProductId() {
        return this.productId;
    }
    
    public void setProductId(int productId) {
        this.productId = productId;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof OrderDetailsId) ) return false;
		 OrderDetailsId castOther = ( OrderDetailsId ) other; 
         
		 return (this.getOrderId()==castOther.getOrderId())
 && (this.getProductId()==castOther.getProductId());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getOrderId();
         result = 37 * result + this.getProductId();
         return result;
   }   


}


