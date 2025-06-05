Feature: Registro de cuenta de usuario

  Scenario: Registro exitoso de un nuevo usuario
    Given que el usuario no tiene una cuenta registrada en el sistema
    When ingresa un correo electrónico válido, establece una contraseña segura y presiona el botón "Registrarse"
    Then el sistema envía un correo de confirmación al usuario
    And redirige a la pantalla de inicio de sesión
    And muestra un mensaje indicando que el registro fue exitoso

  Scenario: Registro fallido por correo electrónico ya registrado
    Given que existe una cuenta registrada con el correo electrónico ingresado
    When el usuario intenta completar el registro con ese correo y presiona el botón "Registrarse"
    Then el sistema muestra un mensaje de error indicando que el correo ya está en uso
    And ofrece las opciones para iniciar sesión o recuperar la contraseña
