Feature: Recuperación de cuenta de usuario

  Scenario: Recuperación de cuenta exitosa
    Given que el usuario ha olvidado su contraseña
    When hace clic en la opción "¿Olvidaste tu contraseña?"
    And ingresa una dirección de correo electrónico registrada
    Then el sistema envía un correo con un enlace para restablecer la contraseña
    And muestra una pantalla confirmando el envío del correo

  Scenario: Intento fallido de recuperación por correo no registrado
    Given que el usuario no tiene una cuenta asociada al correo ingresado
    When hace clic en "¿Olvidaste tu contraseña?" e ingresa una dirección de correo no registrada
    Then el sistema muestra un mensaje de error indicando que no existe una cuenta con ese correo
    And ofrece la opción para crear una nueva cuenta
