package com.skilldistillery.sheetmusic.data;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.sheetmusic.entities.Music;

@Service
@Transactional
public class MusicDAOJpaImpl implements MusicDAO{
	
	@PersistenceContext
	private EntityManager em;
	
	

	
	@Override
	public Music findById(int id) {
		
		return em.find(Music.class, id);
	}
	
	@Override
	public Music update(int id, Music music) {
		
		Music dbMusic = em.find(Music.class, id);
		System.out.println("Before update: " + dbMusic);
	
		dbMusic.setTempo(music.getTempo());
		dbMusic.setStyle(music.getStyle());
		dbMusic.setSongKey(music.getSongKey());
		
		em.flush();
		System.out.println("After update: " + dbMusic);
		return dbMusic;
	}
	
	@Override
	public boolean destroy(int id) {
		
		Music destroySheet = em.find(Music.class, id);
		em.remove(destroySheet);
		
		boolean successfulKickOut;
		successfulKickOut =!em.contains(destroySheet);
		
		return successfulKickOut;
	}
	
	@Override
	public Music create(Music sheet) {
	
		System.out.println("Music before persist:  " + sheet);
		em.persist(sheet);
		System.out.println("Actor after persit: " + sheet);
		
		em.flush();
		return sheet;
	}

}
