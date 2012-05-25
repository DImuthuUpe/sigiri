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
import models.Customer;
import models.CustomerOrder;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author pancha
 */
public class CustomerOrderAction extends ActionSupport{
    private List<CustomerOrder> coList;
    private List<Customer> custList;
    @Override
    public String execute() throws Exception {
        ServletContext scx = ServletActionContext.getServletContext();
        UserTransaction utx = (UserTransaction) scx.getAttribute("utx");
        EntityManagerFactory emf = (EntityManagerFactory) scx.getAttribute("emf");
        EntityManager em = emf.createEntityManager();

        utx.begin();
        Query query = em.createQuery("select co from CustomerOrder co");
        coList= query.getResultList();
        query = em.createQuery("select c from Customer c");
        custList= query.getResultList();
        utx.commit();
        System.out.println("Hooooo "+custList.size());
        return SUCCESS;
    }

    public List<CustomerOrder> getCoList() {
        return coList;
    }

    public void setCoList(List<CustomerOrder> coList) {
        this.coList = coList;
    }

    public List<Customer> getCustList() {
        return custList;
    }

    public void setCustList(List<Customer> custList) {
        this.custList = custList;
    }




}
