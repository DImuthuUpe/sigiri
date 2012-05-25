/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.servlet.ServletContext;
import javax.transaction.UserTransaction;
import models.CustomerOrder;
import models.SupOrderItem;
import models.Suppliment;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author pancha
 */
public class AddSuppliment extends ActionSupport{
    private String orderId;
    private String fabric;
    private String fabricType;
    private String dates;
    private String deliveryDate;
    private String[] color;
    private String[] collar;
    private String[] rib;
    private String[] cuff;
    private String[] qty;

    @Override
    public String execute() throws Exception {
        CustomerOrder co;
        ServletContext scx = ServletActionContext.getServletContext();
        UserTransaction utx = (UserTransaction) scx.getAttribute("utx");
        EntityManagerFactory emf = (EntityManagerFactory) scx.getAttribute("emf");
        EntityManager em = emf.createEntityManager();

        utx.begin();
        Query query = em.createQuery("Select c from CustomerOrder c where c.id=" + orderId);
        List<CustomerOrder> list = query.getResultList();

        Collection<SupOrderItem> supOrderItems = new ArrayList<SupOrderItem>();
        if (list.size() > 0) {
            co = list.get(0);
            Suppliment sup = new Suppliment();
            if (color != null) {
                for (int i = 0; i < color.length; i++) {
                    SupOrderItem supOrderItem = new SupOrderItem();
                    supOrderItem.setSuppliment(sup);
                    supOrderItem.setCollarSize(collar[i]);
                    supOrderItem.setColor(color[i]);
                    supOrderItem.setCuffSize(cuff[i]);
                    supOrderItem.setQty(qty[i]);
                    supOrderItem.setRib(rib[i]);
                    supOrderItems.add(supOrderItem);
                }
                sup.setSupOrderItems(supOrderItems);
                sup.setDates(dates);
                sup.setDeliveryDate(deliveryDate);
                sup.setFabric(fabric);
                sup.setFabricType(fabricType);
                sup.setCustomerOrder(co);
                em.merge(sup);
            }
        }
        utx.commit();
        return SUCCESS;
    }

    public String[] getCollar() {
        return collar;
    }

    public void setCollar(String[] collar) {
        this.collar = collar;
    }

    public String[] getColor() {
        return color;
    }

    public void setColor(String[] color) {
        this.color = color;
    }

    public String[] getCuff() {
        return cuff;
    }

    public void setCuff(String[] cuff) {
        this.cuff = cuff;
    }

    public String getDates() {
        return dates;
    }

    public void setDates(String dates) {
        this.dates = dates;
    }

    public String getDeliveryDate() {
        return deliveryDate;
    }

    public void setDeliveryDate(String deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public String getFabric() {
        return fabric;
    }

    public void setFabric(String fabric) {
        this.fabric = fabric;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String[] getQty() {
        return qty;
    }

    public void setQty(String[] qty) {
        this.qty = qty;
    }

    public String[] getRib() {
        return rib;
    }

    public void setRib(String[] rib) {
        this.rib = rib;
    }

    public String getFabricType() {
        return fabricType;
    }

    public void setFabricType(String fabricType) {
        this.fabricType = fabricType;
    }

    
    
}
