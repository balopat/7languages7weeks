TwoDArray := Object clone do (
	lists := list()
	x := 0
	y := 0
	dim := method(inX, inY, 
		x = inX
		y = inY
		lists = list()
		tList := list()
		for(i, 1, y, tList = list()
			for (j, 1, x, tList push(nil) )
			lists push(tList)
		)
	)
	set := method (inX, inY, value, 
		lists at(inX) atPut(inY,value)
	)
	get := method (inX, inY,
		lists at(inX) at(inY)
	)
)

myArray := TwoDArray clone

myArray dim(10,12)

writeln("myArray x: ", myArray x)
writeln("myArray y: ", myArray y)

myArray set(3,4, "a")

writeln( myArray get(3,4) )


