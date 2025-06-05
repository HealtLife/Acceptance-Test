Feature: API para actualizar información del perfil de usuario

  Scenario: Actualización exitosa del perfil
    Given que el usuario está autenticado y desea modificar su perfil
    When envía una solicitud PUT a la API con datos válidos (nombre, foto, biografía, etc.)
    Then la API actualiza los datos del perfil en la base de datos
    And devuelve una respuesta con código 200 y los nuevos datos actualizados

  Scenario: Fallo en la actualización por datos inválidos
    Given que el usuario envía información incompleta o con formato incorrecto
    When la API recibe la solicitud PUT para actualizar el perfil
    Then devuelve una respuesta con código 400
    And proporciona un mensaje de error detallado indicando qué campos son inválidos o faltantes
