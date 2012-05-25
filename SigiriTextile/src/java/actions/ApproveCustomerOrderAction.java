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
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.servlet.ServletContext;
import javax.transaction.UserTransaction;
import models.COItem;
import models.CustomerOrder;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author pancha
 */
public class ApproveCustomerOrderAction extends ActionSupport {

    private String selected[];
    private long coId[];
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
                    Query query = em.createQuery("select co from CustomerOrder co where co.id=" + coId[i]);
                    List<CustomerOrder> coList = query.getResultList();
                    if (coList.size() > 0) {
                        CustomerOrder co = coList.get(0);
                        //System.out.println(action);
                        if (action == 1) {
                            //System.out.println(po.getId());
                            co.setApproved(true);
                            //Collection<COItem> coItems = co.getCOItems();
                            //COItem[] items = coItems.toArray(new COItem[coItems.size()]);

                            em.merge(co);

                        } else if (action == 0) {
                            em.remove(co);
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

    public long[] getCoId() {
        return coId;
    }

    public void setCoId(long[] coId) {
        this.coId = coId;
    }

    public String[] getSelected() {
        return selected;
    }

    public void setSelected(String[] selected) {
        this.selected = selected;
    }
    
}
