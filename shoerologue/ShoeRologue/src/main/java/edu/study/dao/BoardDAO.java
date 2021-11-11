package edu.study.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.vo.BoardVO;

@Repository //외부 자원과 연결한다
public class BoardDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	BoardVO vo = new BoardVO();
	
	@Autowired
	DataSource ds;
	
	public ArrayList<BoardVO> list() throws Exception{
		
		ArrayList<BoardVO> blist = new ArrayList<BoardVO>();	
		
		
		try {
			conn = ds.getConnection();
			
			String sql = "select * from openb_board";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			
			while(rs.next()) {
				BoardVO vo = new BoardVO();
				vo.setSubject(rs.getString("subject"));
				vo.setBidx(rs.getInt("bidx"));
				blist.add(vo);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(conn != null) {
				conn.close();
			}
			if(psmt != null) {
				psmt.close();
			}
			if(rs != null) {
				rs.close();
			}
		}
		return blist;
		
	}
	
	public BoardVO boardlist(int bidx) throws Exception{
			
			try {
				conn = ds.getConnection();
				
				String sql ="select * from openb_board where bidx =?";
				
				psmt = conn.prepareStatement(sql); 
				psmt.setInt(1, bidx);
				rs = psmt.executeQuery();
			
				if(rs.next()) { 
					vo = new BoardVO();
					vo.setBidx(rs.getInt("bidx"));
					vo.setSubject(rs.getString("subject"));
					vo.setContents(rs.getString("contents"));
					vo.setWriter(rs.getString("writer"));
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return vo;
			}
	
	public void update(BoardVO vo) throws Exception {
		
		try {
			conn = ds.getConnection();
			
			String sql ="update openb_board set subject=?,contents=?,writer=? where bidx=?";
			
			psmt = conn.prepareStatement(sql); 
			psmt.setString(1, vo.getSubject());
			psmt.setString(2, vo.getContents());
			psmt.setString(3, vo.getWriter());
			psmt.setInt(4, vo.getBidx());
			psmt.executeUpdate();
		
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(conn != null) {
				conn.close();
			}
			if(psmt != null) {
				psmt.close();
			}
		
		}
		
	}
	
	public void del(BoardVO vo) throws Exception{
		
		try {
			conn = ds.getConnection();
			
			String sql = "delete from openb_board where bidx=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getBidx());
			psmt.executeUpdate();
			
			
			}catch(Exception e){
				e.printStackTrace();
			}finally {
				if(conn != null) {
					conn.close();
				}if(psmt != null) {
					psmt.close();
				}
			}
	}
}



