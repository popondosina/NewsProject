package com.websystique.max.controller;

import com.websystique.max.model.News;
import com.websystique.max.service.NewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.sql.Timestamp;
import java.util.List;

@Controller
@RequestMapping("/")
public class AppController {

    @Autowired
    NewService service;

    @Autowired
    MessageSource messageSource;

    /*
     * This method will list first 12 existing news for corrent this couun of news, specify count in .subList(0,12);.
     */
    @RequestMapping(value = {"/", "/list"}, method = RequestMethod.GET)
    public String listEmployees(ModelMap model) {
        List<News> newss = service.findAllNews().subList(0, 12);
        model.addAttribute("listOfAdverts", newss);
        return "blog";
    }


    @RequestMapping(value = {"/signup"}, method = RequestMethod.GET)
    public String SingUP(ModelMap model) {

        return "registration";
    }
    @RequestMapping(value = {"/test"}, method = RequestMethod.GET)
    public String Test(ModelMap model) {

        return "test";
    }
    /*
	 * This method will list all  news with indicated category.
	 */

    @RequestMapping(value = {"/category/"}, method = RequestMethod.GET)
    public String SearchByCategory(@RequestParam(value = "category") String category, ModelMap model) {
        List<News> news = service.findAllByCategory(category);
        model.addAttribute("listOfAdverts", news);
        return "blog";
    }

    /*
     * This method will list all  news with indicated category.
     * need for maintaing links to categoryes
     */
    @RequestMapping(value = {"/category/{category}"}, method = RequestMethod.GET)
    public String PickCategory(@PathVariable String category, ModelMap model) {
        List<News> news = service.findAllByCategory(category);
        model.addAttribute("listOfAdverts", news);
        return "blog";
    }

	/*
	 * This method will list all  news with indicated content.
	 */

    @RequestMapping(value = {"/content/"}, method = RequestMethod.GET)
    public String SearchByContent(@RequestParam(value = "content") String content, ModelMap model) {
        System.out.println(content);
        List<News> news = service.findAllByContent(content);
        model.addAttribute("listOfAdverts", news);
        return "blog";
    }

    /*
     * This method will list all  news with indicated content.
     */
    @RequestMapping(value = {"/name/"}, method = RequestMethod.GET)
    public String SearchByName(@RequestParam(value = "name") String name, ModelMap model) {
        System.out.println(name);
        List<News> news = service.findAllByName(name);
        model.addAttribute("listOfAdverts", news);
        return "blog";
    }

    /*
     * This method will one news  by id.
     */
    @RequestMapping(value = {"/advert/{id}",}, method = RequestMethod.GET)
    public String advert(@PathVariable int id, ModelMap model) {
        News news = service.findById(id);
        model.addAttribute("advert", news);
        return "advert";
    }

    @RequestMapping(value = {"/advert",}, method = RequestMethod.GET)
    public String updateNews(@PathVariable int id, ModelMap model) {
        News news = service.findById(id);
        model.addAttribute("advert", news);
        return "advert";
    }


    /*
     * This method will provide the medium to add a news.
     */
    @RequestMapping(value = {"/add"}, method = RequestMethod.GET)
    public String Add(ModelMap model) {
        News news = new News();
        //specify current time
        news.setJoiningDate(new Timestamp(System.currentTimeMillis()));
        model.addAttribute("news", news);
        model.addAttribute("edit", false);
        return "add";
    }
/*
	 * This method will provide the medium to add a news.
	 */

    @RequestMapping(value = {"/add"}, method = RequestMethod.POST)
    public String save(@Valid News news, BindingResult result,
                       ModelMap model) {

        if (result.hasErrors()) {
            return "add";
        }


        service.saveNews(news);
        model.addAttribute("id", news.getId());
        model.addAttribute("success", "News " + news.getContent() + " registered successfully");
        return "success";
    }

    /*
     * This method will be called on form submission, handling POST request for
     * updating news in database. It also validates the user input
     */
    @RequestMapping(value = {"/edit/{id}"}, method = RequestMethod.POST)
    public String update(@Valid News news,
                         ModelMap model, BindingResult result) {

        if (result.hasErrors()) {
            return "edit";
        }

        news.setJoiningDate(new Timestamp(System.currentTimeMillis()));
        service.updateNews(news);
        model.addAttribute("id", news.getId());
        model.addAttribute("success", "News " + news.getHead() + " updated successfully");
        return "success";
    }
	/*
	 * Delete news by id.
	 */


    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable int id) {
        System.out.println(id);
        service.deleteNewsById(id);
        return "redirect:/";
    }
    /*
	 * This method will be called Edit panel
	 */

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable int id, ModelMap model) {
        System.out.println(id);
        News news = service.findById(id);
        System.out.println(news.toString());
        model.addAttribute("news", news);
        model.addAttribute("edit", true);
        return "edit";
    }


}
