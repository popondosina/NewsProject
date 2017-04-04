package com.websystique.max.dao;

import com.websystique.max.model.News;

import java.util.List;

public interface NewDao {

    News findById(int id);

    void saveNews(News news);

    List<News> findAllByCategory(String category);

    List<News> findAllByContent(String content);

    void deleteNewsByHead(String head);

    void deleteNewsById(int id);

    List<News> findAllNews();

    News findNewsByHead(String head);

    List<News> findAllByName(String name);
}
