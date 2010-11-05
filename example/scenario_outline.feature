@scenario_outline
Feature: Scenario Outline
  As a reader of the documentation I expect that step outlines are documented correctly

  Scenario Outline: Three Examples
    Given that <Customer> is a valid customer
    And that the product, named '<Product>', is a valid product
    When the customer has purchased the product
    Then I expect the customer to be a member of the '<Product>' group

    Examples:
     | Customer   | Product   |
     | Customer A | Product A |
     | Customer A | Product B |
     | Customer A | Product C |

  Scenario Outline: Step contains a text block
    Given the following text:
    """
    The <noun> jumped over the <place>
    """

    Examples:
     | noun  | place |
     | cow   | moon  |
     | horse | spoon |

  Scenario Outline: Step contains a table
    Given the following table:
      | name   | price   | quantity |
      | <name> | <price> | 100000   |

    Examples:
     | name | price |
     | toy  | $99   |
     | game | $49   |

  Scenario Outline: Step contains a table; table header uses an example
    Given the following table:
      | name   | <denomination> | quantity |
      | <name> | <price>        | 100000   |

    Examples:
     | name | price | denomination    |
     | toy  | 99    | cost in euros   |
     | game | 49    | cost in dollars |