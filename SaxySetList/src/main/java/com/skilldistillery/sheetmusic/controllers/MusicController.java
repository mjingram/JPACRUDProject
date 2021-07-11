package com.skilldistillery.sheetmusic.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.sheetmusic.data.MusicDAO;
import com.skilldistillery.sheetmusic.entities.Music;

@Controller
public class MusicController {
	
	private int currentPage = 1;
	private int maxPage = 16;
	private int minPage = 1;
	
	@Autowired
	private MusicDAO dao;
	
	@RequestMapping(path={"/", "home.do"})
	public String index(Model model) {
		model.addAttribute("music", dao.findById(currentPage)); //Debug
		return "index";
	}
	
	
	//Search Mappings
	
	@RequestMapping(path={"sendSongId.do"})
	public String getSongId(int songId, Model model) {
		
		model.addAttribute("music", dao.findById(songId)); //Debug
		return "index";
	}
	
	//Update Mappings
	
	@RequestMapping(path={"updatePage.do"})
	public String toUpdatePage(Model model) {
		model.addAttribute("songId", currentPage);
		model.addAttribute("music", dao.findById(currentPage));
		return "update";
	}
	
	@RequestMapping(path={"sendUpdate.do"})
	public String updateSong(int songId, Music updateSheet, Model model) {

		model.addAttribute("music", dao.update(songId, updateSheet)); //Debug
		return "index";
	}
	
	//Delete Mappings
	
	@RequestMapping(path={"deletePage.do"})
	public String toDeletePage(Model model) {
		model.addAttribute("songId", currentPage);
		model.addAttribute("music", dao.findById(currentPage));
		return "delete";
	}
	
	@RequestMapping(path={"sendDelete.do"})
	public String deleteSong(int songId, Music deleteSheet, Model model) {
		dao.destroy(songId);
		if(currentPage == minPage) {
			currentPage++;
			minPage++;
			model.addAttribute("music",dao.findById(currentPage) ); //Debug
			return "index";
		}
		currentPage--;
		maxPage--;
		model.addAttribute("music",dao.findById(currentPage) ); //Debug
		return "index";
	}
	
	//Create Mappings
	
	@RequestMapping(path={"createPage.do"})
	public String toCreatePage(Model model) {
//		model.addAttribute("songId", currentPage);
//		model.addAttribute("music", dao.findById(currentPage));
		return "create";
	}
	
	@RequestMapping(path={"sendCreate.do"})
	public String createSong(String title, int tempo, String songKey, String transposeKey, String imageURL, String style, Model model) {
		maxPage++;
		Music newSheet = new Music(title, tempo, songKey, transposeKey, imageURL, style);
		Music dbAddedSheet = dao.create(newSheet);
		System.out.println(dbAddedSheet);
		currentPage = maxPage;
		model.addAttribute("music", dao.findById(currentPage)); //Debug
		return "index";
	}
	
	
	
	//Next and Previous Page
	@RequestMapping(path={"nextPage.do"})
	public String nextPage(Model model) {
		if(currentPage == maxPage) {
			model.addAttribute("music", dao.findById(currentPage));
			return "index";
		}
		currentPage++;
		System.out.println(currentPage);
		model.addAttribute("music", dao.findById(currentPage)); //Debug
		return "index";
	}
	
	@RequestMapping(path={"previousPage.do"})
	public String previousPage(Model model) {
		if(currentPage == minPage) {
			model.addAttribute("music", dao.findById(currentPage));
			return "index";
		}
		currentPage--;
		System.out.println(currentPage);
		model.addAttribute("music", dao.findById(currentPage)); //Debug
		return "index";
	}
}
