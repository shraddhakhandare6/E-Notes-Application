package ConnUser;

import java.sql.Date;
import java.sql.Timestamp;

public class Post {
 private int id;
 private String title;
 private String content;
 private Timestamp pdate;
 private UserDetails user;

public Post(int id, String title, String content, Timestamp pdate, UserDetails user) {
	super();
	this.id = id;
	this.title = title;
	this.content = content;
	this.pdate = pdate;
	this.user = user;
}

public Post() {
	// TODO Auto-generated constructor stub
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
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}

public UserDetails getUser() {
	return user;
}
public void setUser(UserDetails user) {
	this.user = user;
}
public Timestamp getPdate() {
	return pdate;
}
public void setPdate(Timestamp pdate) {
	this.pdate = pdate;
}

 
}
