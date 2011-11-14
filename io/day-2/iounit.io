shouldFail := method (exType,
        e :=    try(
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



