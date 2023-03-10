package com.rosebloom.dtos;

import com.rosebloom.controllers.persistence.entities.ProductImage;

import java.io.Serializable;
import java.util.Objects;

/**
 * A DTO for the {@link ProductImage} entity
 */
public class ProductImageDto implements Serializable {
    private byte[] image;

    public ProductImageDto() {
    }

    public ProductImageDto(byte[] image) {
        this.image = image;
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ProductImageDto entity = (ProductImageDto) o;
        return Objects.equals(this.image, entity.image);
    }

    @Override
    public int hashCode() {
        return Objects.hash(image);
    }

    @Override
    public String toString() {
        return getClass().getSimpleName() + "(" +
                "image = " + image + ")";
    }
}