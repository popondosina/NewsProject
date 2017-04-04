package com.websystique.max.service;

import com.websystique.max.model.News;

import java.util.List;

public interface NewService {

    News findById(int id);

    void saveNews(News news);

    void updateNews(News news);

    void deleteNewsById(int id);

    List<News> findAllNews();

    List<News> findAllByCategory(String category);

    List<News> findAllByContent(String content);

    List<News> findAllByName(String name);
}

