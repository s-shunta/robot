@ECHO OFF


@REM �ϐ��ݒ�
SET SCINARIOPATH=CS���ƕ�\CS_002\Main.xaml
SET INPUT_ARG1=arg1
SET INPUT_VALUE1=%~1
SET INPUT_ARG2=arg2
SET INPUT_VALUE2=%~2

@REM �G�X�P�[�v�V�[�P���X�΍�@
SET INPUT_VALUE1=%INPUT_VALUE1:\=@@%
SET INPUT_VALUE2=%INPUT_VALUE2:\=@@%
SET INPUT_VALUE1=%INPUT_VALUE1:/=@@%
SET INPUT_VALUE2=%INPUT_VALUE2:/=@@%

@REM INPUT�t�H���_�����[�J���ɃR�s�[����
XCOPY %INPUT_ARG1% C:\RPA�����������s��\WORK

@REM "UiPath�N��"�o�b�`�N��&�����n��
cmd /C C:\RPA�V�i���I\RUN\BAT\����\UiPath�N��.bat "%SCINARIOPATH%" "%INPUT_ARG1%" "%INPUT_VALUE1%" "%INPUT_ARG2%" "%INPUT_VALUE2%"

@REM OUTPUT�t�H���_���w��̃t�H���_�ɃR�s�[����
echo D | XCOPY C:\RPA�����������s��\OUTPUT %INPUT_ARG2%



if 1 equ %ERRORLEVEL% (
exit /B -1
) else (
exit /B 0
)

EXIT

