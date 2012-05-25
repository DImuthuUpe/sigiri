/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import com.opensymphony.xwork2.ActionSupport;
import java.util.Collection;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.servlet.ServletContext;
import javax.transaction.UserTransaction;
import models.Item;
import models.POItem;
import models.PurchaseOrder;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author pancha
 */
public class ApprovePurchaseOrderAction extends ActionSupport {

    private String selected[];
    private long poId[];
    private int action;

    @Override
    public String execute() throws Exception {
        ServletContext scx = ServletActionContext.getServletContext();
        UserTransaction utx = (UserTransaction) scx.getAttribute("utx");
        EntityManagerFactory emf = (EntityManagerFactory) scx.getAttribute("emf");
        EntityManager em = emf.createEntityManager();
        if (selected != null) {
            utx.begin();
            for (int i = 0; i < selected.length; i++) {
                if (selected[i].equals("1")) {

                    Query query = em.createQuery("select po from PurchaseOrder po where po.id=" + poId[i]);
                    List<PurchaseOrder> poList = query.getResultList();
                    if (poList.size() > 0) {
                        PurchaseOrder po = poList.get(0);

                        
                        //System.out.println("Action "+ action);
                        if (action == 1) {
                            //System.out.println(po.getId());
                            po.setApproved(true);
                            Collection<POItem> poItems = po.getPOItems();
                            POItem[] items = poItems.toArray(new POItem[poItems.size()]);
                            for(int k=0;k<items.length;k++){
                                Item currItem = items[k].getItem();
                                Double val = Double.parseDouble(currItem.getCurrentQty());
                                Double qty = Double.parseDouble(items[k].getQty());
                                val +=qty;
                                currItem.setCurrentQty(val+"");
                                em.merge(currItem);
                            }
                            em.merge(po);
                            
                        } else if (action == 0) {
                            em.remove(po);
                        }
                        
                    }

                }
            }
            utx.commit();
        }
        return SUCCESS;
    }

    public int getAction() {
        return action;
    }

    public void setAction(int action) {
        this.action = action;
    }

    public long[] getPoId() {
        return poId;
    }

    public void setPoId(long[] poId) {
        this.poId = poId;
    }

    public String[] getSelected() {
        return selected;
    }

    public void setSelected(String[] selected) {
        this.selected = selected;
    }
}
