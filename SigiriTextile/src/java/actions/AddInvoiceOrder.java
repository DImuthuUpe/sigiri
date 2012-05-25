/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import com.opensymphony.xwork2.ActionSupport;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.servlet.ServletContext;
import javax.transaction.UserTransaction;
import models.IOItem;
import models.InvoiceOrder;
import models.POItem;
import models.PurchaseOrder;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author pancha
 */
public class AddInvoiceOrder extends ActionSupport{

    private InvoiceOrder io;
    private long poId;
    @Override
    public String execute() throws Exception {
        ServletContext scx = ServletActionContext.getServletContext();
        UserTransaction utx = (UserTransaction) scx.getAttribute("utx");
        EntityManagerFactory emf = (EntityManagerFactory) scx.getAttribute("emf");
        EntityManager em = emf.createEntityManager();
        utx.begin();
        Query query = em.createQuery("Select po from PurchaseOrder po where po.id="+poId);
        List<PurchaseOrder> list = query.getResultList();
        if(list.size()>0){
            PurchaseOrder purOrder = list.get(0);
            io.setPurchaseOrder(purOrder);
            POItem opItems[] = purOrder.getPOItems().toArray(new POItem[purOrder.getPOItems().size()]);
            IOItem ioItems[] = new IOItem[opItems.length];
            System.out.println("length " +opItems.length);
            for(int i=0;i<opItems.length;i++){
                IOItem ioitem = new IOItem();
                ioitem.setPOItem(opItems[i]);
                ioitem.setUnitPrice(opItems[i].getItem().getUnitPrice());
                ioitem.setInvoiceOrder(io);
                ioItems[i]=ioitem;
            }
            Collection<IOItem> items = Arrays.asList(ioItems);
            io.setIOItems(items);
            em.persist(io);
        }
        utx.commit();
        return SUCCESS;
    }

    public InvoiceOrder getIo() {
        return io;
    }

    public void setIo(InvoiceOrder io) {
        this.io = io;
    }

    public long getPoId() {
        return poId;
    }

    public void setPoId(long poId) {
        this.poId = poId;
    }


}
