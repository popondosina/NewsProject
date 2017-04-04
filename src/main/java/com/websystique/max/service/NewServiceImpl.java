package com.websystique.max.service;

import com.websystique.max.dao.NewDao;
import com.websystique.max.model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("NewsService")
@Transactional
public class NewServiceImpl implements NewService {
    @Autowired
    private NewDao dao;

    public void deleteNewsById(int id) {
        dao.deleteNewsById(id);
    }

    public News findNewsById(int id) {
        return null;
    }

    public List<News> findAllByName(String name) {
        return dao.findAllByName(name);
    }

    public List<News> findAllByContent(String content) {
        return dao.findAllByContent(content);
    }

    public List<News> findAllByCategory(String category) {
        return dao.findAllByCategory(category);
    }


    public News findById(int id) {
        return dao.findById(id);
    }

    public void saveNews(News news) {
        dao.saveNews(news);
    }

    /*
     * Since the method is running with Transaction, No need to call hibernate update explicitly.
     * Just fetch the entity from db and update it with proper values within transaction.
     * It will be updated in db once transaction ends.
     */
    public void updateNews(News news) {
        News entity = dao.findById(news.getId());
        if (entity != null) {
            entity.setContent(news.getContent());
            entity.setJoiningDate(news.getJoiningDate());
            entity.setCategory(news.getCategory());
            entity.setHead(news.getHead());
        }
    }



    public List<News> findAllNews() {
        return dao.findAllNews();
    }




}
