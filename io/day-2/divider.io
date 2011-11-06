Number $ ::= Number getSlot("/") # saving the original operator as it's a CFunction
OperatorTable addOperator("$",2) # adding it to the OperatorTable, so we can use it in the new definition of / 
Number / := method( b, if (b == 0, 0, self$b)) # redefining the Number / slot
