package action;

import java.util.ArrayList;
import java.util.List;

import Bean.Audio;
import DAO.AudioDAO;

import com.opensymphony.xwork2.ActionSupport;

public class AudioAction extends ActionSupport{
	
	private Audio audio; 
	List<Audio> listAudio;
	
	public String showAudios() throws Exception{
		listAudio = new ArrayList<>();
		listAudio = AudioDAO.getAudios();
		audio = listAudio.get(0);
		for(int i=0;i<listAudio.size();i++){
			System.out.print(listAudio.get(i).getAudioId());
			System.out.print(listAudio.get(i).getAudioAddr());
		}
		
		return SUCCESS;
	}

	public Audio getAudio() {
		return audio;
	}

	public void setAudio(Audio audio) {
		this.audio = audio;
	}

}
