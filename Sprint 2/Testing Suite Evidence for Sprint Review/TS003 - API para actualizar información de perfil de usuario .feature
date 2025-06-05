Feature: API para actualizar información de perfil de usuario

  Scenario: Actualización exitosa del perfil de usuario
    Given que el usuario quiere actualizar su perfil
    When envía una solicitud con la información modificada
    Then la API guarda los cambios correctamente

  Scenario: Error en la actualización del perfil por información inválida
    Given que el usuario intenta enviar información incompleta o inválida
    When la API recibe la solicitud
    Then devuelve un mensaje de error indicando qué información necesita ser corregida