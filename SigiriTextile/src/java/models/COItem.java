/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package models;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 *
 * @author pancha
 */
@Entity
public class COItem implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @ManyToOne()
    @JoinColumn(name="custOrder")
    private CustomerOrder custOrder;
    private String color;
    private String qty;
    private String rib;
    private String collarSize;
    private String cuffSize;
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof COItem)) {
            return false;
        }
        COItem other = (COItem) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.COItem[id=" + id + "]";
    }

    public String getCollarSize() {
        return collarSize;
    }

    public void setCollarSize(String collarSize) {
        this.collarSize = collarSize;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getCuffSize() {
        return cuffSize;
    }

    public void setCuffSize(String cuffSize) {
        this.cuffSize = cuffSize;
    }

    public CustomerOrder getCustOrder() {
        return custOrder;
    }

    public void setCustOrder(CustomerOrder custOrder) {
        this.custOrder = custOrder;
    }

    public String getQty() {
        return qty;
    }

    public void setQty(String qty) {
        this.qty = qty;
    }

    public String getRib() {
        return rib;
    }

    public void setRib(String rib) {
        this.rib = rib;
    }


}
