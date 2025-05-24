/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import modelo.Usuario;
import jakarta.persistence.*;

public class UsuarioDAO {

    private EntityManagerFactory emf = Persistence.createEntityManagerFactory("UnidadPersistencia");

    public Usuario validarUsuario(String usuario, String clave) {
        EntityManager em = emf.createEntityManager();
        Usuario usuarioValido = null;

        try {
            TypedQuery<Usuario> query = em.createQuery(
                "SELECT u FROM Usuario u WHERE u.usuario = :usuario AND u.clave = :clave", Usuario.class);
            query.setParameter("usuario", usuario);
            query.setParameter("clave", clave);
            usuarioValido = query.getSingleResult();
        } catch (NoResultException e) {
            // No se encontró el usuario en la base de datos
        } catch (Exception e) {
            System.out.println("Error al validar usuario: " + e.getMessage());
        } finally {
            em.close();
        }

        // Fallback: usuario de respaldo en caso de error o no encontrado
        if (usuarioValido == null && "admin".equals(usuario) && "1234".equals(clave)) {
            usuarioValido = new Usuario();
            usuarioValido.setUsuario("admin");
            usuarioValido.setClave("1234");
            usuarioValido.setNombre("Administrador (offline)");
        }

        return usuarioValido;
    }
}
