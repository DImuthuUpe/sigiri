/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.servlet.ServletContext;
import javax.transaction.UserTransaction;
import models.POItem;
import models.PurchaseOrder;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author pancha
 */
public class EditPurchaseOrderAction extends ActionSupport {

    private PurchaseOrder po;
    private long suppId;
    private String poItemQty[];
    private String poItemId[];

    @Override
    public String execute() throws Exception {
        ServletContext scx = ServletActionContext.getServletContext();
        UserTransaction utx = (UserTransaction) scx.getAttribute("utx");
        EntityManagerFactory emf = (EntityManagerFactory) scx.getAttribute("emf");
        EntityManager em = emf.createEntityManager();
        utx.begin();

        Query query = em.createQuery("select po from PurchaseOrder po where po.id=" + po.getId());

        List<PurchaseOrder> list = query.getResultList();
        if (list.size() > 0) {
            po.setOrderNo(list.get(0).getOrderNo());
            Collection<POItem> pOItems = list.get(0).getPOItems();
            POItem[] items= pOItems.toArray(new POItem[pOItems.size()]);

            for (int i = 0; i < poItemId.length; i++) {
                for(int j=0;j<items.length;j++){
                    if(items[j].getId()==Long.parseLong(poItemId[i])){
                        items[j].setQty(poItemQty[i]);
                    }
                }
            }
            pOItems = Arrays.asList(items);

            po.setPOItems(pOItems);
        }
        em.merge(po);
        utx.commit();
        return SUCCESS;
    }

    public PurchaseOrder getPo() {
        return po;
    }

    public void setPo(PurchaseOrder po) {
        this.po = po;
    }

    public String[] getPoItemId() {
        return poItemId;
    }

    public void setPoItemId(String[] poItemId) {
        this.poItemId = poItemId;
    }

    public String[] getPoItemQty() {
        return poItemQty;
    }

    public void setPoItemQty(String[] poItemQty) {
        this.poItemQty = poItemQty;
    }

    public long getSuppId() {
        return suppId;
    }

    public void setSuppId(long suppId) {
        this.suppId = suppId;
    }
}
