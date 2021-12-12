package datos;

import dominio.Usuario;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendEmail {

    public boolean sendEmail(Usuario usuario) {

        boolean test = false;

        String toEmail = usuario.getEmail();

        String fromEmail = "juliobetancur2@gmail.com";
        String password = "Testing1234*";

        try {
            //Configurar el servidor email
            Properties pr = new Properties();
            pr.setProperty("mail.smtp.host", "smtp.gmail.com"); //El servidor SMTP de Google
            pr.setProperty("mail.smtp.port", "587"); // //El puerto SMTP seguro de Google
            pr.setProperty("mail.smtp.auth", "true"); //Usar autenticación mediante usuario y clave
            pr.setProperty("mail.smtp.starttls.enable", "true"); //Para conectar de manera segura al servidor SMTP
            pr.put("mail.smtp.ssl.trust", "smtp.gmail.com");
            
            //Obtener la autenticacion de la sesion con el email y contraseña
            Session sesion = Session.getInstance(pr, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(fromEmail, password);
                }
            });

            //Cuerpo del correo
            Message mensaje = new MimeMessage(sesion);

            mensaje.setFrom(new InternetAddress(fromEmail)); //Correo origen
            mensaje.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail)); //Correo destino
            
            mensaje.setSubject("Instructivo para inicio de sesion");
            mensaje.setText("Hola " + usuario.getNombre() + ", bienvenid@ a la bateria de pruebas de Cartagena Consulting Group. \n\n"
                    + "A continuacion encontrará el usuario y contraseña para ingresar a la bateria. \n"
                    + "Usuario: " + usuario.getCedula() + "\n"
                    + "Contraseña: " + usuario.getPassword() + "\n\n"
                    + "Clic para iniciar sesion -> http://localhost:8080/cartagenaconsulting/  \n\n" 
                    + "Usted ingresará a una pantalla en donde deberá aceptar los términos y condiciones para poder iniciar la prueba. \n\n"
                    + "Para una mejor experiencia, por favor use este aplicativo con las versiones mas recientes de los siguientes navegadores: \n\n"
                    + "    Google Chrome \n"
                    + "    Mozilla Firefox \n"
                    + "    Safari \n\n"
                    + "Cualquier inquietud, comuníquese con la empresa que le está enviando la prueba.");

            Transport.send(mensaje);
            
            test = true;
                    
        } catch (Exception ex) {
            System.out.println("Error al enviar correo");
            System.out.println(ex);
        }
        return test;
    }

}
