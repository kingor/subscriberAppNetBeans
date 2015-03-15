/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package by.telecom.subscriberapp.DAO;

import java.util.Collection;
import by.telecom.subscriberapp.User;
import java.util.List;

/**
 *
 * @author ASUP8
 */
public interface UserDao  extends GenericDao<User, Long>{
    Collection<User> findByName(String name);
    public List<User> getByLogin(String login);
}