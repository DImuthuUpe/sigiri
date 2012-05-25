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
import javax.persistence.Query;
import javax.servlet.ServletContext;
import javax.transaction.UserTransaction;
import models.InvoiceOrder;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author pancha
 */
public class ApproveInvoiceOrderAction extends ActionSupport{
private String selected[];
    private long ioId[];
    private int action;

    @Override
    public String execute() throws Exception {
        ServletContext scx = ServletActionContext.getServletContext();
        UserTransaction utx = (UserTransaction) scx.getAttribute("utx");
        EntityManagerFactory emf = (EntityManagerFactory) scx.getAttribute("emf");
        EntityManager em = emf.createEntityManager();
        System.out.println("Hooooo");
        if (selected != null) {
            utx.begin();
            System.out.println(selected.length);
            for (int i = 0; i < selected.length; i++) {
                if (selected[i].equals("1")) {
                    System.out.println("got");
                    Query query = em.createQuery("select io from InvoiceOrder io where io.id=" + ioId[i]);
                    List<InvoiceOrder> ioList = query.getResultList();
                    if (ioList.size() > 0) {
                        InvoiceOrder io = ioList.get(0);


                        //System.out.println("Action "+ action);
                        if (action == 1) {
                            //System.out.println(po.getId());
                            io.setApproved(true);

                            em.merge(io);

                        } else if (action == 0) {
                            em.remove(io);
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

    public long[] getIoId() {
        return ioId;
    }

    public void setIoId(long[] ioId) {
        this.ioId = ioId;
    }

    public String[] getSelected() {
        return selected;
    }

    public void setSelected(String[] selected) {
        this.selected = selected;
    }
    
}
