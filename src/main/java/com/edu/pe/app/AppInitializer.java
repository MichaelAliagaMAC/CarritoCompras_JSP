
package com.edu.pe.app;

import com.edu.pe.modelo.dao.ProductoDAO;
//import javax.servlet.ServletContextEvent;
//import javax.servlet.ServletContextListener;
//import javax.servlet.annotation.WebListener;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

@WebListener
public class AppInitializer implements ServletContextListener {
    private ProductoDAO prodDAO = new ProductoDAO(); 

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        sce.getServletContext().setAttribute("productos", prodDAO.ListarTodos());
    }
    
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
     
}
