package com.websystique.max.dao;

import com.websystique.max.model.News;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("NewsDao")
public class NewDaoImpl extends AbstractDao<Integer, News> implements NewDao {

    public News findById(int id) {
        return getByKey(id);
    }

    public void saveNews(News news) {
        persist(news);
    }

    public void deleteNewsById(int id) {
        Query query = getSession().createSQLQuery("delete from NEWS where id = :id");
        query.setInteger("id", id);
        query.executeUpdate();
    }

    public void deleteNewsByHead(String head) {
        Query query = getSession().createSQLQuery("delete from NEWS where head = :head");
        query.setString("head", head);
        query.executeUpdate();
    }

    public List<News> findAllByName(String name) {
        System.out.println(name);
        List<News> resultList = getSession().createQuery("from News e where e.head LIKE :name").setString("name", '%' + name + '%').list();
        ; // where category like '%'||:category||'%'
        return resultList;
    }

    public List<News> findAllByContent(String content) {
        System.out.println(content);
        List<News> resultList = getSession().createQuery("from News e where e.content LIKE :content").setString("content", '%' + content + '%').list();
        ; // where category like '%'||:category||'%'
        //List<News> resultList= queryObject.list();
        return resultList;
    }

    @SuppressWarnings("unchecked")
    public List<News> findAllNews() {
        Criteria criteria = createEntityCriteria();
        return (List<News>) criteria.list();
    }

    public List<News> findAllByCategory(String category) {
        System.out.println(category);
        List<News> resultList = getSession().createQuery("from News e where e.category LIKE :category").setString("category", '%' + category + '%').list();
        ; // where category like '%'||:category||'%'
        return resultList;
    }

    public News findNewsByHead(String head) {
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("head", head));
        return (News) criteria.uniqueResult();
    }


}
