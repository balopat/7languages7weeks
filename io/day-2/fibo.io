
fibRecursive := method(num,
	if(num<=2, 1, fibRecursive(num-1) + fibRecursive(num-2),0)
)

Range 1 to(10) foreach(v, fibRecursive(v) println)

