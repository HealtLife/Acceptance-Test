Feature: Registro de actividades diarias

  Scenario: Guardar actividad registrada
    Given el usuario está en la página de registro de actividades
    When introduce los detalles de su actividad de alimentación y ejercicio
    Then los datos se guardan en su perfil

  Scenario: Ver historial de actividades
    Given el usuario ha registrado una actividad
    When revisa su historial de actividades
    Then podrá ver la lista de todas las actividades registradas con fecha y detalles
