package net.prev.www.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Post {

	private int pid;
	private String title;
	private String content;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd", timezone="Asia/Seoul")
	private Date regdate;
	private String id;
	private int cid;
	private String cname;
	private int pcid;
	private String pcname;
	private String profileImg;
	private String nickname;
	
	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	private int viewcount;
	
	
	
	public String getProfileImg() {
		return profileImg;
	}

	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}

	private String thumbnail;
	private MultipartFile fileUpload;

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public MultipartFile getFileUpload() {
		return fileUpload;
	}

	public void setFileUpload(MultipartFile fileUpload) {
		this.fileUpload = fileUpload;
	}

	public int getViewcount() {
		return viewcount;
	}

	public void setViewcount(int viewcount) {
		this.viewcount = viewcount;
	}

	public String getPcname() {
		return pcname;
	}

	public void setPcname(String pcname) {
		this.pcname = pcname;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getPcid() {
		return pcid;
	}

	public void setPcid(int pcid) {
		this.pcid = pcid;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}
	
	
	@Override
	public String toString() {
		return "Post [pid=" + pid + ", title=" + title + ", content=" + content + ", regdate=" + regdate + ", id=" + id
				+ ", cid=" + cid + ", cname=" + cname + ", pcid=" + pcid + ", pcname=" + pcname + ", profileImg="
				+ profileImg + ", nickname=" + nickname + ", viewcount=" + viewcount + ", thumbnail=" + thumbnail
				+ ", fileUpload=" + fileUpload + "]";
	}
}
