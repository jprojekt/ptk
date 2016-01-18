package app.persistance.dao;

import app.persistance.models.tematy.Temat;

import java.util.List;

public interface TematyDao {
    void add(Temat temat);
    List getAll();
}
