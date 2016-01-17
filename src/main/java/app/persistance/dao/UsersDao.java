package app.persistance.dao;

import app.persistance.models.users.User;

import java.util.List;

public interface UsersDao {
    void add(User user);
    List getAll();
    List getAllDyplomanci();
}
