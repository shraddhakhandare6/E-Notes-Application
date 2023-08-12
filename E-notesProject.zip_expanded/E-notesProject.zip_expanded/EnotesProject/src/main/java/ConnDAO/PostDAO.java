package ConnDAO;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import ConnUser.Post;
import ConnUser.UserDetails;
public class PostDAO {
	private Connection conn;

	public PostDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	public boolean AddNotes(String ti,String co, int ui) {
		boolean f=false;
		try {
		String qu="insert into post(title,content,uid) values(?,?,?)";
		PreparedStatement ps=conn.prepareStatement(qu);
		ps.setString(1,ti );
		ps.setString(2,co);
		ps.setInt(3,ui);
		int i=ps.executeUpdate();
		if(i==1)
		{
			f=true;
		}
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return f;
	}
	public List<Post> getData(int id){
		List<Post> list=new ArrayList<Post>();
		Post po=null;
		try {
			String qu="select * from post where uid=? order by id desc";
			PreparedStatement ps=conn.prepareStatement(qu);
			ps.setInt(1, id);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				po=new Post();
				po.setId(rs.getInt(1));
				po.setTitle(rs.getString(2));
				po.setContent(rs.getString(3));
				po.setPdate(rs.getTimestamp(4));
				list.add(po);
			}
			
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		
		return list;
	}

	public Post getDataById(int noteid)
	{
		Post p=null;
		try {
			String qu="select * from post where id=?";
			PreparedStatement ps=conn.prepareStatement(qu);
			ps.setInt(1, noteid);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) 
			{
				p=new Post();
				p.setId(rs.getInt(1));
				p.setTitle(rs.getString(2));
				p.setContent(rs.getString(3));
			}
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return p;
	}
	public boolean PostUpdate(int nid,String ti,String co) {
		boolean f=false;
		 try {
			 String qu="update post set title=?,content=? where id=?";
			 PreparedStatement ps=conn.prepareStatement(qu);
			 ps.setString(1, ti);
			 ps.setString(2, co);
			 ps.setInt(3, nid);
			int i= ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		 }
		 catch(Exception e){
			 System.out.println(e);
		 }
		return f;
	}
	
	public boolean deleteNote(int pid) {
		boolean f=false;
		try{
			String qu="delete from post where id=?";
			PreparedStatement ps=conn.prepareStatement(qu);
			ps.setInt(1, pid);
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		
			
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return f;
	}
}
