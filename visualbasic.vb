Module FizzBuzz

    Function FizzBuzz(num As Integer) As String
        Dim Fizz As Boolean = (num Mod 3 = 0)
        Dim Buzz As Boolean = (num Mod 5 = 0)

        If Fizz = True And Buzz = True Then
            Return "FizzBuzz"
        ElseIf Fizz = True Then
            Return "Fizz"
        ElseIf Buzz = True Then
            Return "Buzz"
        End If

        Return num.ToString
    End Function
    Sub Main()
        For i As Integer  = 1 To 100
            Console.WriteLine(FizzBuzz(i))
        Next
        Console.Read()
    End Sub

End Module
