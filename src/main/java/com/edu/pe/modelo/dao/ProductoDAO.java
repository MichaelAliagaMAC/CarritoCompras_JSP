
package com.edu.pe.modelo.dao;

import com.edu.pe.modelo.Producto;
import java.util.ArrayList;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import com.edu.pe.config.Conexion; //se agrego la conexion



public class ProductoDAO {
    
    private Connection cn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null; 
    
    public ArrayList<Producto> ListarTodos() {
        ArrayList<Producto> lista = new ArrayList<Producto>();
        
        try{
            cn = Conexion.getConnection();
            String sql = "select * from Producto";
            ps = cn.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
                
                Producto obj = new Producto ();
                obj.setIdProd(rs.getInt("id_prod"));
                obj.setNombre(rs.getString("nombre"));
                obj.setPrecio(rs.getDouble("precio"));
                obj.setImagen(rs.getString("imagen"));
                lista.add(obj);
           
            }
        
        }catch (Exception ex){
            ex.printStackTrace();
        }finally{
            try{
                if(cn!=null){
                    cn.close();
                }
                if(ps!=null){
                    ps.close();
                }
                if(rs!=null){
                    rs.close();
                }
            }catch (Exception ex){
                ex.printStackTrace();
            }
        }
        return lista;
    
    }
    
    public Producto BuscarPorId(int id) {
        Producto obj = null;
        
        try{
            cn = Conexion.getConnection();
            String sql = "select * from Producto where id_prod = ?";
            ps = cn.prepareStatement(sql);
            ps.setInt(1, id);
            rs=ps.executeQuery();
            
            if(rs.next()){
                
                obj = new Producto ();
                obj.setIdProd(rs.getInt("id_prod"));
                obj.setNombre(rs.getString("nombre"));
                obj.setPrecio(rs.getDouble("precio"));
                obj.setImagen(rs.getString("imagen"));
           
            }
        
        }catch (Exception ex){
            ex.printStackTrace();
        }finally{
            try{
                if(cn!=null){
                    cn.close();
                }
                if(ps!=null){
                    ps.close();
                }
                if(rs!=null){
                    rs.close();
                }
            }catch (Exception ex){
                ex.printStackTrace();
            }
        }
        return obj;
    
    }
    
}
