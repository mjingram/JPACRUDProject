package com.skilldistillery.sheetmusic.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name ="sheet_music")
public class Music {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	
	@Column(name = "title")
	private String title;
	
	@Column(name = "tempo")
	private int tempo;
	
	@Column(name = "song_key")
	private String songKey;
	
	@Column(name = "transpose_key")
	private String transposeKey;
	
	@Column(name = "image_url")
	private String imageURL;
	
	@Column(name = "style")
	private String style;
	
	public Music() {
		super();
	}
	

	public Music(String title, int tempo, String songKey, String transposeKey, String imageURL, String style) {
		super();
		this.title = title;
		this.tempo = tempo;
		this.songKey = songKey;
		this.transposeKey = transposeKey;
		this.imageURL = imageURL;
		this.style = style;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getTempo() {
		return tempo;
	}

	public void setTempo(int tempo) {
		this.tempo = tempo;
	}

	public String getSongKey() {
		return songKey;
	}

	public void setSongKey(String songKey) {
		this.songKey = songKey;
	}

	public String getTransposeKey() {
		return transposeKey;
	}

	public void setTransposeKey(String transposeKey) {
		this.transposeKey = transposeKey;
	}

	public String getImageURL() {
		return imageURL;
	}

	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	@Override
	public String toString() {
		return "Music [id=" + id + ", title=" + title + ", tempo=" + tempo + ", songKey=" + songKey + ", transposeKey="
				+ transposeKey + ", imageURL=" + imageURL + ", style=" + style + "]";
	}

	
	
	
}
