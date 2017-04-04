package com.websystique.max.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.sql.Timestamp;

@Entity
@Table(name = "News")
public class News {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Size(min = 1, max = 9999)
    @Column(name = "content", nullable = false)
    private String content;

    @NotNull
    @Column(name = "JOINING_DATE", nullable = false)
    private Timestamp joiningDate;

    @Size(min = 1, max = 30)
    @NotEmpty
    @Column(name = "category", unique = true, nullable = false)
    private String category;

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    @Size(min = 3, max = 100)
    @NotEmpty
    @Column(name = "HEAD", unique = true, nullable = false)
    private String head;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Timestamp getJoiningDate() {

        return joiningDate;
    }

    public void setJoiningDate(Timestamp joiningDate) {


        this.joiningDate = joiningDate;
    }

    public String getHead() {
        return head;
    }

    public void setHead(String head) {
        this.head = head;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + id;
        result = prime * result + ((head == null) ? 0 : head.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (!(obj instanceof News))
            return false;
        News other = (News) obj;
        if (id != other.id)
            return false;
        if (head == null) {
            if (other.head != null)
                return false;
        } else if (!head.equals(other.head))
            return false;
        return true;
    }

    @Override
    public String toString() {
        return "News [id=" + id + ", name=" + content + ", joiningDate="
                + joiningDate + ", category=" + category + ", ssn=" + head + "]";
    }


}
