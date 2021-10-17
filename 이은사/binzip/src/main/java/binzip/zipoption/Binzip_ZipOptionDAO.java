package binzip.zipoption;

import java.sql.*;
import java.util.*;

import binzip.findzip.FindzipDTO;

public class Binzip_ZipOptionDAO {

   private Connection conn;
   private PreparedStatement ps;
   private ResultSet rs;
   
   private String binzip_host_bbs_idx;
   
   public Binzip_ZipOptionDAO() {
      System.out.println("옵션 DAO 생성");
   }
   
   //집옵션 체크박스 세팅 관련 메서드
   public ArrayList<Binzip_ZipOptionDTO> zipOptionList(){
      try {
         conn=binzip.db.BinzipDB.getConn();
         String sql="select * from binzip_option where category=1 and binzip_host_bbs_idx=0 order by idx asc";
         ps=conn.prepareStatement(sql);
         rs=ps.executeQuery();
         ArrayList<Binzip_ZipOptionDTO> arr=new ArrayList<Binzip_ZipOptionDTO>();
         while(rs.next()) {
            int idx=rs.getInt("idx");
            int category=rs.getInt("category");
            String op=rs.getString("op");
            int status=rs.getInt("status");
            int binzip_host_bbs_idx=rs.getInt("binzip_host_bbs_idx");
            Binzip_ZipOptionDTO dto=new Binzip_ZipOptionDTO(idx, category, op, status, binzip_host_bbs_idx);
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
   //주방 옵션 체크박스 세팅 관련 메서드
   public ArrayList<Binzip_ZipOptionDTO> kitchenOptionList(){
      try {
         conn=binzip.db.BinzipDB.getConn();
         String sql="select * from binzip_option where category=2 and binzip_host_bbs_idx=0 order by idx asc";
         ps=conn.prepareStatement(sql);
         rs=ps.executeQuery();
         ArrayList<Binzip_ZipOptionDTO> arr=new ArrayList<Binzip_ZipOptionDTO>();
         while(rs.next()) {
            int idx=rs.getInt("idx");
            int category=rs.getInt("category");
            String op=rs.getString("op");
            int status=rs.getInt("status");
            int binzip_host_bbs_idx=rs.getInt("binzip_host_bbs_idx");
            Binzip_ZipOptionDTO dto=new Binzip_ZipOptionDTO(idx, category, op, status, binzip_host_bbs_idx);
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
   //욕실 옵션 체크박스 세팅 관련 메서드
   public ArrayList<Binzip_ZipOptionDTO> bathOptionList(){
      try {
         conn=binzip.db.BinzipDB.getConn();
         String sql="select * from binzip_option where category=3 and binzip_host_bbs_idx=0 order by idx asc";
         ps=conn.prepareStatement(sql);
         rs=ps.executeQuery();
         ArrayList<Binzip_ZipOptionDTO> arr=new ArrayList<Binzip_ZipOptionDTO>();
         while(rs.next()) {
            int idx=rs.getInt("idx");
            int category=rs.getInt("category");
            String op=rs.getString("op");
            int status=rs.getInt("status");
            int binzip_host_bbs_idx=rs.getInt("binzip_host_bbs_idx");
            Binzip_ZipOptionDTO dto=new Binzip_ZipOptionDTO(idx, category, op, status, binzip_host_bbs_idx);
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
   //집옵션 인서트 관련 메서드 
   public int setZipOption(Binzip_ZipOptionDTO dto) {

      String op[] = new String[dto.getZop().length];      
      int binzip_host_bbs_idx = dto.getBinzip_host_bbs_idx();
      try{         
         conn = binzip.db.BinzipDB.getConn();         
         int count = 0;
         for(int i = 0; i < op.length; i++) {
                        
            String sql = "insert into binzip_option values(binzip_option_idx.nextval,1,?,0,"+binzip_host_bbs_idx+")";
            ps = conn.prepareStatement(sql);
            ps.setString(1,dto.getZop()[i]);
            count = ps.executeUpdate();
         }
         return count;
      }catch(Exception e) {
         e.printStackTrace();
         return -1;
      }finally {
         try {
            
         }catch(Exception e2) {}
      }
   }
   
   //주방옵션 인서트 관련 메서드 
      public int setKitchenOption(Binzip_ZipOptionDTO dto) {

         String op[] = new String[dto.getKop().length];      
         int binzip_host_bbs_idx = dto.getBinzip_host_bbs_idx();
         try{         
            conn = binzip.db.BinzipDB.getConn();         
            int count = 0;
            for(int i = 0; i < op.length; i++) {
                           
               String sql = "insert into binzip_option values(binzip_option_idx.nextval,2,?,0,"+binzip_host_bbs_idx+")";
               ps = conn.prepareStatement(sql);
               ps.setString(1,dto.getKop()[i].toString());
               count = ps.executeUpdate();
            }
            return count;
         }catch(Exception e) {
            e.printStackTrace();
            return -1;
         }finally {
            try {
               
            }catch(Exception e2) {}
         }
      }
   
      //욕실옵션 인서트 관련 메서드 
      public int setBathOption(Binzip_ZipOptionDTO dto) {

         String op[] = new String[dto.getBop().length];      
         int binzip_host_bbs_idx = dto.getBinzip_host_bbs_idx();
         try{         
            conn = binzip.db.BinzipDB.getConn();         
            int count = 0;
            for(int i = 0; i < op.length; i++) {
                           
               String sql = "insert into binzip_option values(binzip_option_idx.nextval,3,?,0,"+binzip_host_bbs_idx+")";
               ps = conn.prepareStatement(sql);
               ps.setString(1,dto.getBop()[i].toString());
               count = ps.executeUpdate();
            }
            return count;
         }catch(Exception e) {
            e.printStackTrace();
            return -1;
         }finally {
            try {
               
            }catch(Exception e2) {}
         }
      }
      
//      public String getZipOption(int idx) {                  
//         try{
//            String zop [] = null;
//            conn = binzip.db.BinzipDB.getConn();
//            String sql = "select op,category from binzip_option where binzip_host_bbs_idx = ? and category = 1 order by idx asc";
//            ps = conn.prepareStatement(sql);
//            ps.setInt(1, idx);
//            rs = ps.executeQuery();
//            while(rs.next()) {
//               
//               zop[] = rs.getString("op").split("\\n");
//            }
//            return String zop[];
//         }catch(Exception e) {
//            e.printStackTrace();
//            return null;
//         }finally {
//            try {
//               
//            }catch(Exception e2) {}
//         }
//      }
//      }
      // 집 옵션 출력 관련 메서드
      public ArrayList<Binzip_ZipOptionDTO> getZipOption(int idx, int category) {
         try {
               conn = binzip.db.BinzipDB.getConn();
               String sql = "select category, op from binzip_option where binzip_host_bbs_idx = ? and category = ? order by idx asc";
               ps = conn.prepareStatement(sql);
               ps.setInt(1, idx);
               ps.setInt(2, category);
               rs = ps.executeQuery();
               ArrayList<Binzip_ZipOptionDTO> ziparr = new ArrayList<Binzip_ZipOptionDTO>();
               while(rs.next()) {                 
                 String op = rs.getString("op");                  
                 Binzip_ZipOptionDTO dto = new Binzip_ZipOptionDTO(op);
                 ziparr.add(dto);
               }
               System.out.println(idx);
               System.out.println(category);
               return ziparr;
            }catch(Exception e) {
               e.printStackTrace();
               return null;
            }finally{
               try {                  
                  if(rs!=null)rs.close();
                  if(ps!=null)ps.close();
                  if(conn!=null)conn.close();
               }catch(Exception e2) {}
            }
         }

      
      
      
      
      
      
      
      
   
   
   
   
}
   
