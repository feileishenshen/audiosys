package action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import com.opensymphony.xwork2.ActionSupport;

import Bean.Audio;
import DAO.AudioDAO;

public class UploadAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	private Integer audioid;
	private String userid;
	private String audioaddr;
	private String audioname;
	private Audio audio;

	private File myFile;//上传的文件，对应表单的file的name属性
	private String myFileContentType;//文件类型，xxxContentType，xxx对应表单file的name属性
	private String myFileFileName;

	@Override
	public String execute() throws Exception {
		this.setAudioid(getAudioid());
		
		if (myFile == null) {
			this.addFieldError("file", "文件不能为空，请选择");
			return INPUT;
		} else {
			InputStream is = new FileInputStream(this.getMyFile());
			OutputStream os = new FileOutputStream("E:/upload/"+this.getMyFileFileName());
			byte[] buf = new byte[1024];
			int length = 0;
			while ((length = is.read(buf)) > 0) {
				os.write(buf, 0, length);
			}
			is.close();
			os.close();
		}
		
		audioaddr = this.getMyFileFileName();
		audio = new Audio(audioid,null, audioaddr, null,audioname);
		AudioDAO.insertAudio(audio);
		
		return SUCCESS;
	}
	
/*-----------------------------------get&set----------------------------------------------------------*/

	public File getMyFile() {
		return myFile;
	}

	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}

	public String getMyFileContentType() {
		return myFileContentType;
	}

	public void setMyFileContentType(String myFileContentType) {
		this.myFileContentType = myFileContentType;
	}

	public String getMyFileFileName() {
		return myFileFileName;
	}

	public void setMyFileFileName(String myFileFileName) {
		this.myFileFileName = myFileFileName;
	}

	public Integer getAudioid() {
		return audioid;
	}

	public void setAudioid(Integer audioid) {
		this.audioid = audioid;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getAudioaddr() {
		return audioaddr;
	}

	public void setAudioaddr(String audioaddr) {
		this.audioaddr = audioaddr;
	}
	
	public String getAudioname() {
		return audioname;
	}

	public void setAudioname(String audioname) {
		this.audioname = audioname;
	}

	public Audio getAudio() {
		return audio;
	}

	public void setAudio(Audio audio) {
		this.audio = audio;
	}

}

