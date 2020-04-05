package base.model.daoimpl;

import base.model.dao.Dao;
import base.model.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class DaoImpl implements Dao {
    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Override
    public List<Object> read(Class entity) {
        return hibernateTemplate.loadAll(entity);
    }

    @Override
    public int create(User user) {
        int result = (int) hibernateTemplate.save(user);
        return result;
    }

    @Override
    public User findId(Integer id) {
        return hibernateTemplate.get(User.class, id);
    }
}
