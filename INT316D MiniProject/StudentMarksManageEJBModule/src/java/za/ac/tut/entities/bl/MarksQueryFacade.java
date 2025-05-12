/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.entities.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import za.ac.tut.entities.MarksQuery;

/**
 *
 * @author ronal
 */
@Stateless
public class MarksQueryFacade extends AbstractFacade<MarksQuery> implements MarksQueryFacadeLocal {

    @PersistenceContext(unitName = "StudentMarksManageEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public MarksQueryFacade() {
        super(MarksQuery.class);
    }
    
}
