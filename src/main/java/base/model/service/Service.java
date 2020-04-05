package base.model.service;

import base.model.pojo.User;

import java.util.List;

public interface Service {
    int create(User user);
    List<Object> read(Class entity);
    User findId(Integer id);
}
