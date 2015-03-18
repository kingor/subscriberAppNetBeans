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
import by.telecom.subscriberapp.Log;
import by.telecom.subscriberapp.User;
import by.telecom.subscriberapp.Phone;

/**
 *
 * @author ASUP8
 */
public class LogDaoImpl implements LogDao {

    @Override
    public Long create(Log newInstance) {
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
    public Log read(Long id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void update(Log transientObject) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(Log persistentObject) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Log> getAll() {
        Session session = null;
        List<Log> all = new ArrayList<Log>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            all = session.createCriteria(Log.class).list();
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
    public List<Log> getByUser(User user) {
        Session session = null;
        List<Log> logs = new ArrayList<Log>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            logs = session.createCriteria(Phone.class)
                    .add(Restrictions.eq("user", user)).list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace(System.out);
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return logs;
    }


}
