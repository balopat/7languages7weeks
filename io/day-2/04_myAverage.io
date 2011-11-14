shouldFail := method (exType, 
	e :=	try(
		call sender doMessage(call message argAt(1))
		Error raise ("should have fail!")
	) 

	e catch (Error, 
		"FAILED" println 	
	) 
	
	e catch (Exception,
		"SUCCESS" println
		"received: " print 
		writeln(e)
	)	
)




List myAverage := method(
	reduce(+)/ self size
)


if ( list(1,2,3,4) myAverage == 2.5, "SUCCESS " println, Exception raise ("should have been 2.5"))

shouldFail ( "NonNumberException",
	list("a") myAverage
)

shouldFail( "EmptyListException",
	list() myAverage
)

shouldFail ("bla", list(1,2,3) myAverage)
