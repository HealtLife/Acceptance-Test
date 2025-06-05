Feature: Inicio de sesión del usuario

  Scenario: Inicio de sesión exitoso
    Given que el usuario tiene una cuenta registrada en el sistema
    When ingresa su correo electrónico y contraseña correctos
    And presiona el botón "Iniciar sesión"
    Then el sistema autentica sus credenciales
    And lo redirige a la pantalla principal con acceso completo a las funcionalidades de la aplicación

  Scenario: Fallo de inicio de sesión por contraseña incorrecta
    Given que el usuario tiene una cuenta registrada
    And ha ingresado una contraseña incorrecta
    When presiona el botón "Iniciar sesión"
    Then el sistema muestra un mensaje de error indicando que la contraseña es incorrecta
    And ofrece opciones para reintentar o recuperar la contraseña
