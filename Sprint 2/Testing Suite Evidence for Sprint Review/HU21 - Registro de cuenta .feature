Feature: Registro de cuenta

  Scenario: Registro exitoso
    Given el usuario no tiene una cuenta registrada
    When ingresa su correo electrónico, establece una contraseña y hace clic en el botón de registro
    Then debería recibir un correo de confirmación y ser redirigido a la pantalla de inicio de sesión con un mensaje de éxito
