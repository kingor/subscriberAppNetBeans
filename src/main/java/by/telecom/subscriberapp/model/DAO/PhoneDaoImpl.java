/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package by.telecom.subscriberapp.model.DAO;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import by.telecom.subscriberapp.model.HibernateUtil;
import by.telecom.subscriberapp.model.Subscriber;
import by.telecom.subscriberapp.model.Phone;

/**
 *
 * @author ASUP8
 */
public class PhoneDaoImpl implements PhoneDao {

    @Override
    public Long create(Phone newInstance) {
        Session session = null;
        Long id = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.persist(newInstance);
            id = newInstance.getId();
            session.getTransaction().commit();
            return id;
        } catch (HibernateException e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return 0L;
    }

    @Override
    public Phone read(Long id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void update(Phone transientObject) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(Phone persistentObject) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Phone> getAll() {
        Session session = null;
        List<Phone> all = new ArrayList<Phone>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            all = session.createCriteria(Phone.class).list();
        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return all;
    }

    @Override
    public List<Phone> getByCustomer(Subscriber subscriber) {
        Session session = null;
        List<Phone> phones = new ArrayList<Phone>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            phones = session.createCriteria(Phone.class)
                    .add(Restrictions.eq("subscriber", subscriber)).list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return phones;
    }

}
