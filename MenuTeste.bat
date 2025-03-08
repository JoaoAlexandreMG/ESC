@echo off
:menu
cls
echo =========================
echo LAB02 - 12411ECP020
echo =========================
echo 1. Testar HalfAdder
echo 2. Testar FullAdder
echo 3. Testar Add16
echo 4. Testar Inc16
echo 5. Testar Alu
echo 6. Sair
echo =========================
set /p opt=Escolha uma opcao (1-6): 

if "%opt%"=="1" set comp=halfadder
if "%opt%"=="2" set comp=fulladder
if "%opt%"=="3" set comp=add16
if "%opt%"=="4" set comp=inc16
if "%opt%"=="5" set comp=alu
if "%opt%"=="6" cls & exit

iverilog -o tb_%comp%.vvp tests/tb_%comp%.v
vvp tb_%comp%.vvp
gtkwave tb_%comp%.vcd
del tb_%comp%.vvp
del tb_%comp%.vcd
goto menu
