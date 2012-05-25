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
public class IOItem implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @ManyToOne()
    @JoinColumn(name="pOItem_id")
    private POItem pOItem;
    private String unitPrice;
    @ManyToOne()
    @JoinColumn(name="IO_id")
    private InvoiceOrder invoiceOrder;
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
        if (!(object instanceof IOItem)) {
            return false;
        }
        IOItem other = (IOItem) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.SOItem[id=" + id + "]";
    }    

    public InvoiceOrder getInvoiceOrder() {
        return invoiceOrder;
    }

    public void setInvoiceOrder(InvoiceOrder invoiceOrder) {
        this.invoiceOrder = invoiceOrder;
    }

    public POItem getPOItem() {
        return pOItem;
    }

    public void setPOItem(POItem pOItem) {
        this.pOItem = pOItem;
    }

    public String getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(String unitPrice) {
        this.unitPrice = unitPrice;
    }



}
