NumberOfAguments.l = CountProgramParameters()
Select NumberOfAguments
  Case 0
    MessageRequester ("Error" , "Missing arguments. This is probably a direct EXE run. This program works differently.", #PB_MessageRequester_Error)
    End
  Case 1
    MessageRequester ("Error" , "Missing path", #PB_MessageRequester_Error)
    End
  Default
    Success.l = RunProgram(ProgramParameter(1))
    If Not Success
          MessageRequester ("Error" , "Failed to open Browser Preview", #PB_MessageRequester_Error)
    EndIf
EndSelect
End