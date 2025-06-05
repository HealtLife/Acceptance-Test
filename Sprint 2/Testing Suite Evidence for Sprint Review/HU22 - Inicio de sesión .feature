Feature: Inicio de sesión

  Scenario: Inicio de sesión exitoso
    Given el usuario tiene una cuenta registrada
    When ingresa su correo electrónico y contraseña correctos y hace clic en el botón de iniciar sesión
    Then debería ser redirigido a la pantalla principal de la aplicación web con acceso a todas las funcionalidades de la aplicación
