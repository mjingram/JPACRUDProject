package com.skilldistillery.sheetmusic.data;

import com.skilldistillery.sheetmusic.entities.Music;

public interface MusicDAO {
	public Music findById(int id);
	public Music update(int id, Music music);
	public boolean destroy(int id);
	public Music create(Music sheet);
}
