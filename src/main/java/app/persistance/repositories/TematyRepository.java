package app.persistance.repositories;

import app.persistance.dao.TematyDao;
import app.persistance.models.tematy.Temat;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class TematyRepository implements TematyDao {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public void add(Temat temat) {
        sessionFactory.getCurrentSession().save(temat);
    }

    @Override
    public List getAll() {
        return sessionFactory.getCurrentSession().createQuery("from Temat").list();
    }
}
