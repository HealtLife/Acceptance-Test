Feature: Gestión del Perfil de Privacidad del Usuario

  Scenario: Crear o actualizar el perfil de usuario
    Given que el usuario ha accedido a la sección de perfil
    When proporciona o modifica su información personal (nombre, correo, foto, etc.)
    Then la aplicación guarda los datos actualizados y muestra una confirmación exitosa

  Scenario: Configurar opciones de privacidad
    Given que el usuario se encuentra en la sección de ajustes de privacidad
    When modifica las opciones de visibilidad de su información (como correo o actividad)
    Then los cambios se aplican de forma inmediata y se reflejan en su perfil

  Scenario: Visualizar configuración actual de privacidad
    Given que el usuario quiere revisar sus preferencias de privacidad
    When accede a la vista de configuración de privacidad
    Then la aplicación muestra las opciones seleccionadas actualmente
