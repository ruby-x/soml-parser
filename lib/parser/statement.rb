module Parser
  module Expression
    include Parslet

    rule(:expression) { (simple_return | while_do | small_conditional | conditional |
                          operator_expression | call_site | class_field | field |
                          hash_constant | array_constant)  }

    def delimited_expressions( delimit )
      ( (delimit.absent? >> expression).repeat(1)).as(:expressions) >> delimit
    end

    rule(:expressions_do)     { delimited_expressions(keyword_do) }
    rule(:expressions_else)   { delimited_expressions(keyword_else) }
    rule(:expressions_end)    { delimited_expressions(keyword_end) }

  end
end