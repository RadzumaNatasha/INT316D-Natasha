/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.entities.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import za.ac.tut.entities.Lecturer;

/**
 *
 * @author ronal
 */
@Stateless
public class LecturerFacade extends AbstractFacade<Lecturer> implements LecturerFacadeLocal {

    @PersistenceContext(unitName = "StudentMarksManageEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public LecturerFacade() {
        super(Lecturer.class);
    }
    
}
