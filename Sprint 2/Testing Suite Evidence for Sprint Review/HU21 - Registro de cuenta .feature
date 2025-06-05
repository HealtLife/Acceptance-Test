Feature: Registro de cuenta de usuario

  Scenario: Registro exitoso de un nuevo usuario
    Given que el usuario no tiene una cuenta registrada en el sistema
    When ingresa un correo electrónico válido y establece una contraseña segura
    And hace clic en el botón "Registrarse"
    Then el sistema crea la cuenta del usuario
    And envía un correo de confirmación a la dirección proporcionada
    And redirige al usuario a la pantalla de inicio de sesión
    And muestra un mensaje indicando que el registro fue exitoso
