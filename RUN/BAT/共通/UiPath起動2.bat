@ECHO On


@REM �ϐ��ݒ�
SET SCINARIOPATH=%~1
SET INPUT_ARG1=%~2
SET INPUT_VALUE1=%~3
SET INPUT_ARG2=%~4
SET INPUT_VALUE2=%~5

@REM ���{�b�g�N��

pause
IF "%INPUT_ARG1%" == "" (

    CALL "C:\Program Files (x86)\UiPath\Studio\UiRobot.exe" -file:"C:\RPA�V�i���I\SCENARIO\%SCINARIOPATH=%"

) ELSE (

  IF  "%INPUT_ARG2%" == "" (

      CALL "C:\Program Files (x86)\UiPath\Studio\UiRobot.exe" -file:"C:\RPA�V�i���I\SCENARIO\%SCINARIOPATH%" -input"{'%INPUT_ARG1%':'%INPUT_VALUE1%'}"

  ) ELSE (

      CALL "C:\Program Files (x86)\UiPath\Studio\UiRobot.exe" -file:"C:\RPA�V�i���I\SCENARIO\%SCINARIOPATH%" -input"{'%INPUT_ARG1%':'%INPUT_VALUE1%','%INPUT_ARG2%':'%INPUT_VALUE2%'}"

  )

)
pause
if 1 equ %ERRORLEVEL% (
exit /B -1
) else (
exit /B 0
)

