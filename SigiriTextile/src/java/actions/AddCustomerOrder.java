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
import models.COItem;
import models.Customer;
import models.CustomerOrder;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author pancha
 */
public class AddCustomerOrder extends ActionSupport {

    private CustomerOrder co;
    private String custId;
    private String[] color;
    private String[] collar;
    private String[] rib;
    private String[] cuff;
    private String[] qty;

    @Override
    public String execute() throws Exception {
        ServletContext scx = ServletActionContext.getServletContext();
        UserTransaction utx = (UserTransaction) scx.getAttribute("utx");
        EntityManagerFactory emf = (EntityManagerFactory) scx.getAttribute("emf");
        EntityManager em = emf.createEntityManager();

        utx.begin();
        Query query = em.createQuery("Select c from Customer c where c.id=" + custId);
        List<Customer> list = query.getResultList();
        Collection<COItem> cOItems = new ArrayList<COItem>();
        if (list.size() > 0) {
            if (color != null) {
                for (int i = 0; i < color.length; i++) {
                    COItem cOItem = new COItem();
                    cOItem.setCustOrder(co);
                    cOItem.setCollarSize(collar[i]);
                    cOItem.setColor(color[i]);
                    cOItem.setCuffSize(cuff[i]);
                    cOItem.setQty(qty[i]);
                    cOItem.setRib(rib[i]);
                    cOItems.add(cOItem);
                }
                co.setCOItems(cOItems);
                co.setCustomer(list.get(0));
                em.persist(co);
            }
        }
        utx.commit();
        return SUCCESS;
    }

    public CustomerOrder getCo() {
        return co;
    }

    public void setCo(CustomerOrder co) {
        this.co = co;
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

    public String getCustId() {
        return custId;
    }

    public void setCustId(String custId) {
        this.custId = custId;
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

    
}
