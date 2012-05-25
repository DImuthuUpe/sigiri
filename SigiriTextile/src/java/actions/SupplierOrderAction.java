/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.servlet.ServletContext;
import javax.transaction.UserTransaction;
import models.Category;
import models.InvoiceOrder;
import models.PurchaseOrder;
import models.SubCategory;
import models.Supplier;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author pancha
 */
public class SupplierOrderAction extends ActionSupport{

    private List<Supplier> suppList;
    private List<Category> catList;
    private List<SubCategory> subCatList;
    private List<SubCategory> itemList;
    private List<PurchaseOrder> poList;
    private List<InvoiceOrder> ioList;

    @Override
    public String execute() throws Exception {
        ServletContext scx = ServletActionContext.getServletContext();
        UserTransaction utx = (UserTransaction) scx.getAttribute("utx");
        EntityManagerFactory emf = (EntityManagerFactory) scx.getAttribute("emf");
        EntityManager em = emf.createEntityManager();
        utx.begin();
        Query query = em.createQuery("SELECT s FROM Supplier s");
        suppList = query.getResultList();
        query = em.createQuery("SELECT c FROM Category c");
        catList = query.getResultList();
        query = em.createQuery("SELECT c FROM SubCategory c");
        subCatList = query.getResultList();
        query = em.createQuery("SELECT c FROM Item c");
        itemList = query.getResultList();
        query = em.createQuery("SELECT p FROM PurchaseOrder p");
        poList = query.getResultList();
        query = em.createQuery("SELECT p FROM InvoiceOrder p");
        ioList = query.getResultList();
        utx.commit();

        return SUCCESS;
    }

    public List<SubCategory> getItemList() {
        return itemList;
    }

    public void setItemList(List<SubCategory> itemList) {
        this.itemList = itemList;
    }

    public List<InvoiceOrder> getIoList() {
        return ioList;
    }

    public void setIoList(List<InvoiceOrder> ioList) {
        this.ioList = ioList;
    }

    

    public List<SubCategory> getSubCatList() {
        return subCatList;
    }

    public void setSubCatList(List<SubCategory> subCatList) {
        this.subCatList = subCatList;
    }


    public List<Supplier> getSuppList() {
        return suppList;
    }

    public void setSuppList(List<Supplier> suppList) {
        this.suppList = suppList;
    }

    public List<Category> getCatList() {
        return catList;
    }

    public void setCatList(List<Category> catList) {
        this.catList = catList;
    }

    public List<PurchaseOrder> getPoList() {
        return poList;
    }

    public void setPoList(List<PurchaseOrder> poList) {
        this.poList = poList;
    }


    



}
