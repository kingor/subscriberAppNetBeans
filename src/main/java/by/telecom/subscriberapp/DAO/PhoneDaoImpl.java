/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package by.telecom.subscriberapp.DAO;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import by.telecom.subscriberapp.HibernateUtil;
import by.telecom.subscriberapp.Subscriber;
import by.telecom.subscriberapp.Phone;

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
    public List<Phone> getBySubscriber(Subscriber subscriber) {
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

    @Override
    public List<Phone> getByParameter(String number, String band, String security, String adsl, String name) {
        Session session = null;
        List<Phone> phones = new ArrayList<Phone>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            phones = session.createCriteria(Phone.class)
                    .add(Restrictions.like("number", number + "%"))
                    .add(Restrictions.like("band", band + "%"))
                    .add(Restrictions.like("security", security + "%"))
                    .add(Restrictions.like("adsl", adsl + "%"))
                    .createCriteria("subscriber")
                    .add(Restrictions.like("name", "%" + name+ "%"))
                    .list();
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
