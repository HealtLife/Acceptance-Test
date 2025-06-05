Feature: Gestión de Notificaciones y Recordatorios

  Scenario: Envío programado de notificaciones automáticas
    Given que el usuario tiene activadas las notificaciones
    And ha configurado una hora específica para recibir recordatorios
    When se alcanza la hora programada
    Then la aplicación envía una notificación recordando registrar las actividades diarias

  Scenario: Envío de recordatorio adicional por inactividad
    Given que el usuario recibió una notificación de recordatorio
    And no ha registrado su actividad dentro del tiempo límite
    When se detecta inactividad posterior al recordatorio inicial
    Then la aplicación envía una notificación adicional para insistir en el registro
