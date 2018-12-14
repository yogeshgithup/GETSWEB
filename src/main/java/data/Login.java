/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

/**
 *
 * @author Asadali
 */
public class Login {
 String LoginId;
 String Password;

    public Login(String LoginId, String Password) {
        this.LoginId = LoginId;
        this.Password = Password;
    }

    public String getLoginId() {
        return LoginId;
    }

    public String getPassword() {
        return Password;
    }

    public void setLoginId(String LoginId) {
        this.LoginId = LoginId;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }
 
}
