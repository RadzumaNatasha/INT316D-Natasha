/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.entities.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.MarksQuery;

/**
 *
 * @author ronal
 */
@Local
public interface MarksQueryFacadeLocal {

    void create(MarksQuery marksQuery);

    void edit(MarksQuery marksQuery);

    void remove(MarksQuery marksQuery);

    MarksQuery find(Object id);

    List<MarksQuery> findAll();

    List<MarksQuery> findRange(int[] range);

    int count();
    
}
