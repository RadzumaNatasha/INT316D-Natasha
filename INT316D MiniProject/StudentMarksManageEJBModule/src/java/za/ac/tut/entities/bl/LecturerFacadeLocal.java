/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.entities.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.Lecturer;

/**
 *
 * @author ronal
 */
@Local
public interface LecturerFacadeLocal {

    void create(Lecturer lecturer);

    void edit(Lecturer lecturer);

    void remove(Lecturer lecturer);

    Lecturer find(Object id);

    List<Lecturer> findAll();

    List<Lecturer> findRange(int[] range);

    int count();
    
}
