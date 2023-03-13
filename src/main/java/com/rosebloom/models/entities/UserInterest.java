// default package
// Generated 13 Mar 2023, 17:56:20 by Hibernate Tools 6.1.7.Final
package com.rosebloom.models.entities;

import jakarta.persistence.AttributeOverride;
import jakarta.persistence.AttributeOverrides;
import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

/**
 * UserInterest generated by hbm2java
 */
@Entity
@Table(name="user_interest"
    ,catalog="rosebloom"
)
public class UserInterest  implements java.io.Serializable {


     private UserInterestId id;
     private User user;

    public UserInterest() {
    }

    public UserInterest(UserInterestId id, User user) {
       this.id = id;
       this.user = user;
    }
   
     @EmbeddedId

    
    @AttributeOverrides( {
        @AttributeOverride(name="interest", column=@Column(name="interest", nullable=false, length=45) ), 
        @AttributeOverride(name="userId", column=@Column(name="user_id", nullable=false) ) } )
    public UserInterestId getId() {
        return this.id;
    }
    
    public void setId(UserInterestId id) {
        this.id = id;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="user_id", nullable=false, insertable=false, updatable=false)
    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }




}


