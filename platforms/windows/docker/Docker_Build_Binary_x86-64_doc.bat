REM go to the folder of the current script
pushd %~p0
cd ..
docker run -v %cd%\..\..:c:\bb\cv_x86\build -w c:\bb\cv_x86\build\platforms\windows emgu/vs2019_buildtools:latest .\Build_Binary_x86.bat 64 nogpu vc no-openni doc package build
