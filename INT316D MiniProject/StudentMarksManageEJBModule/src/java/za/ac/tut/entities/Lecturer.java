/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.entities;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author ronal
 */
@Entity
public class Lecturer implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String initials;
    private Long st1;
    private Long st2;
    private Long classTests;
    private Long mimiProject;
    private Long industryProject;
    private Long quizzes;

    public Lecturer() {
    }

    public Lecturer(Long id, String initials, Long st1, Long st2, Long classTests, Long mimiProject, Long industryProject, Long quizzes) {
        this.id = id;
        this.initials = initials;
        this.st1 = st1;
        this.st2 = st2;
        this.classTests = classTests;
        this.mimiProject = mimiProject;
        this.industryProject = industryProject;
        this.quizzes = quizzes;
    }

    public String getInitials() {
        return initials;
    }

    public void setInitials(String initials) {
        this.initials = initials;
    }

    public Long getSt1() {
        return st1;
    }

    public void setSt1(Long st1) {
        this.st1 = st1;
    }

    public Long getSt2() {
        return st2;
    }

    public void setSt2(Long st2) {
        this.st2 = st2;
    }

    public Long getClassTests() {
        return classTests;
    }

    public void setClassTests(Long classTests) {
        this.classTests = classTests;
    }

    public Long getMimiProject() {
        return mimiProject;
    }

    public void setMimiProject(Long mimiProject) {
        this.mimiProject = mimiProject;
    }

    public Long getIndustryProject() {
        return industryProject;
    }

    public void setIndustryProject(Long industryProject) {
        this.industryProject = industryProject;
    }

    public Long getQuizzes() {
        return quizzes;
    }

    public void setQuizzes(Long quizzes) {
        this.quizzes = quizzes;
    }
    

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Lecturer)) {
            return false;
        }
        Lecturer other = (Lecturer) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "za.ac.tut.entities.Lecturer[ id=" + id + " ]";
    }
    
}
