package base.model.serviceImpl;

import base.model.dao.Dao;
import base.model.pojo.User;
import base.model.service.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@org.springframework.stereotype.Service
public class ServiceImpl implements Service {
    @Autowired
    private Dao dao;

    @Override
    public List<Object> read(Class entity) {
        return dao.read(entity);
    }

    @Override
    @Transactional
    public int create(User user) {
        return dao.create(user);
    }



    @Override
    public User findId(Integer id) {
        return dao.findId(id);
    }
}
