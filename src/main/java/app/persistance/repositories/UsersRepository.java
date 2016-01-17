package app.persistance.repositories;

import app.persistance.dao.UsersDao;
import app.persistance.models.users.UserType;
import app.persistance.models.users.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class UsersRepository implements UsersDao {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    @Transactional
    public void add(User user) {
        Session session = sessionFactory.getCurrentSession();

        session.save(user);
    }

    @SuppressWarnings("unchecked")
    @Override
    @Transactional
    public List<User> getAll() {

        Session session = sessionFactory.getCurrentSession();

        return session.createQuery("from User").list();
    }

    @SuppressWarnings("unchecked")
    @Override
    @Transactional
    public List<User> getAllDyplomanci() {
        Session session = sessionFactory.getCurrentSession();

        return session.createQuery("from User where userType = :type").setParameter("type", UserType.DYPLOMANTA).list();
    }
}
