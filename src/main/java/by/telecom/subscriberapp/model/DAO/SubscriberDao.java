/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package by.telecom.subscriberapp.model.DAO;

import java.util.Collection;
import by.telecom.subscriberapp.model.Subscriber;

/**
 *
 * @author ASUP8
 */
public interface SubscriberDao  extends GenericDao<Subscriber, Long>{
    Collection<Subscriber> findByName(String name);
}
