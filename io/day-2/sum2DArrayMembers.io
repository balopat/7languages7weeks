
sumItUp := method(
		reduce(row1, row2, 
			rr1 := row1 reduce(+)
			rr2 := row2 sumItUp
			rr1 + rr2 
		)
	)

testList := list(list(1,2,34,5,3),list(1,23,412,32), list(1,234,4), list(3,4,5))

writeln(testList sumItUp)
