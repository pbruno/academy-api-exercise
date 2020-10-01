Feature: Cat API
  COMO usario de CAT API
  DESEO obtener la lista de categorias
  PARA mostrar las mismas

  @Example @SuccessCat @CatApi
  Scenario Outline: Obtengo la lista de categorias
    When realizo una peticion '<operation>' a '<entity>' al endpoint de categorias - '<request>'
    Then obtengo el status code '<statusCode>'
    And los datos son correctos

    Examples:
      | request                   | statusCode | operation | entity     |
      | request/rq_cat_categories | 200        | GET       | CATEGORIES |
