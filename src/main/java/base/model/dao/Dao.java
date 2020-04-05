package base.model.dao;

import base.model.pojo.User;

import java.util.List;

public interface Dao {
    List<Object> read(Class entity);
    int create(User user);
    User findId(Integer id);
}
