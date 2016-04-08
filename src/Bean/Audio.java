package Bean;

/**
 * Audio entity. @author MyEclipse Persistence Tools
 */

public class Audio implements java.io.Serializable {

	// Fields

	private Integer audioId;
	private User user;
	private String audioAddr;
	private String audioPic;
	private String audioName;

	// Constructors

	/** default constructor */
	public Audio() {
	}

	/** minimal constructor */
	public Audio(Integer audioId) {
		this.audioId = audioId;
	}

	/** full constructor */
	public Audio(Integer audioId, User user, String audioAddr, String audioPic,
			String audioName) {
		this.audioId = audioId;
		this.user = user;
		this.audioAddr = audioAddr;
		this.audioPic = audioPic;
		this.audioName = audioName;
	}

	// Property accessors

	public Integer getAudioId() {
		return this.audioId;
	}

	public void setAudioId(Integer audioId) {
		this.audioId = audioId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getAudioAddr() {
		return this.audioAddr;
	}

	public void setAudioAddr(String audioAddr) {
		this.audioAddr = audioAddr;
	}

	public String getAudioPic() {
		return this.audioPic;
	}

	public void setAudioPic(String audioPic) {
		this.audioPic = audioPic;
	}

	public String getAudioName() {
		return this.audioName;
	}

	public void setAudioName(String audioName) {
		this.audioName = audioName;
	}

}