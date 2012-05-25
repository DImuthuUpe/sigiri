/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author pancha
 */
public class LogInAction extends ActionSupport {

    private String userName;
    private String password;
    @Override
    public String execute() throws Exception {
        if(userName.equals("admin")&&password.equals("admin123"))
            return SUCCESS;
        if(userName.equals("lal")&&password.equals("lal123"))
            return SUCCESS;
        if(userName.equals("indika")&&password.equals("indika123"))
            return SUCCESS;
        if(userName.equals("gayan")&&password.equals("gayan123"))
            return SUCCESS;
        if(userName.equals("duminda")&&password.equals("duminda123"))
            return SUCCESS;
 
        return "fail";
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }




}
