package binzip.adminmypage;

import java.sql.*;
import java.util.*;

public class AdminDAO {

   private Connection conn;
   private PreparedStatement ps;
   private ResultSet rs;
   
   public AdminDAO() {
      super();
   }
   // 호스트, 게스트 리스트 관련 메서드
   public ArrayList<AdminDTO> getList(int cp, int listSize, int grade){
      try {
         conn = binzip.db.BinzipDB.getConn();
         
         int start = (cp - 1) * listSize + 1;
         int end = cp * listSize;
         
         String sql = "select * from "
               + "(select rownum as rnum, a.* from "
               + "(select * from binzip_member where grade=? order by idx desc) a) b "
               + "where rnum >=? and rnum <= ?";
         ps = conn.prepareStatement(sql);
         ps.setInt(1, grade);
         ps.setInt(2, start);
         ps.setInt(3, end);
         
         rs = ps.executeQuery();
         ArrayList<AdminDTO> arr = new ArrayList<AdminDTO>();
         while(rs.next()) {
            String name = rs.getString("name");
            String id = rs.getString("id");
            
            AdminDTO dto = new AdminDTO(name, id);
            arr.add(dto);
         }
         return arr;
      }catch(Exception e) {
         e.printStackTrace();
         return null;
      }finally {
         try {
            if(rs!=null)rs.close();
            if(ps!=null)ps.close();
            if(conn!=null)conn.close();
         }catch(Exception e2) {}
      }
   }

   
   //호스트 탈퇴 관련 메서드
   public int Delete(String id) {
      try {
         conn = binzip.db.BinzipDB.getConn();
         String sql = "delete from binzip_member where id = ?";
         ps = conn.prepareStatement(sql);
         ps.setString(1, id);
         
         int count = ps.executeUpdate();
         
         return count;
      }catch(Exception e) {
         e.printStackTrace();
         return -1;
      }finally {
         try {
            if(ps!=null)ps.close();
            if(conn!=null)conn.close();
         }catch(Exception e2) {}
      }
   }
   
   // 총 리스트 수 반환 관련 메서드
   public int getHostTotalCnt(int grade) {
      try {
         conn = binzip.db.BinzipDB.getConn();
         String sql = "select count(*) from binzip_member where grade = ?";
         ps = conn.prepareStatement(sql);
         ps.setInt(1, grade);
         rs = ps.executeQuery();
         rs.next();
         
         int count = rs.getInt(1);
         return count == 0 ? 1 : count;
      }catch(Exception e) {
         e.printStackTrace();
         return 1;
      }finally {
         try {
            if(rs!=null)rs.close();
            if(ps!=null)ps.close();
            if(conn!=null)conn.close();
         }catch(Exception e2) {}
      }
   }
   
   
   
   
   
   
   
   
}
