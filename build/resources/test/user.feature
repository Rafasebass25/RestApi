Feature: Project
  Scenario: como usuario quiero verificar el crud de user por api

    Given envio un POST url para user "/api/user.json" con body
    """
   {
    "Email":"Rafael@gmail.com",
    "FullName":"Rafael Sebastian",
     "Password": "rafael"
  }
    """
    Then mi codigo de respuesta es 200
    And mi atributo "Email" deberia ser "Rafael@gmail.com"

    When que uso el token en todo.ly para user
    When envio un PUT url user "/api/user/0.json" con body
    """
   {
    "Email":"Rafael6@gmail.com"
   }
    """
    Then mi codigo de respuesta es 200
    And mi atributo "Email" deberia ser "Rafael6@gmail.com"
    When que uso el token en todo.ly para el usuario actualizado
    When envio un DELETE url user "/api/user/0.json" con body
    """
    """
    Then mi codigo de respuesta es 200
    And mi atributo "Email" deberia ser "Rafael6@gmail.com"


