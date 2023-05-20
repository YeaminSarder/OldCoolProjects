:bigin
@echo off
color fc
for /l %%i in (0,1,130) do set /a s%%i = 0
'for /l %%j in (-30,1,130) do set /a x%%j = 0
:desplay
cls
echo                      0   1   2   3   4   5   6   7   8   9
echo                     ---------------------------------------
echo                  0 : %s0% : %s10% : %s20% : %s30% : %s40% : %s50% : %s60% : %s70% : %s80% : %s90% : 0
echo                     ---------------------------------------
echo                  1 : %s1% : %s11% : %s21% : %s31% : %s41% : %s51% : %s61% : %s71% : %s81% : %s91% : 1
echo                    ---------------------------------------
echo                  2 : %s2% : %s12% : %s22% : %s32% : %s42% : %s52% : %s62% : %s72% : %s82% : %s92% : 2
echo                     ---------------------------------------
echo                  3 : %s3% : %s13% : %s23% : %s33% : %s43% : %s53% : %s63% : %s73% : %s83% : %s93% : 3
echo                     ---------------------------------------
echo                  4 : %s4% : %s14% : %s24% : %s34% : %s44% : %s54% : %s64% : %s74% : %s84% : %s94% : 4
echo                     ---------------------------------------
echo                  5 : %s5% : %s15% : %s25% : %s35% : %s45% : %s55% : %s65% : %s75% : %s85% : %s95% : 5
echo                     ---------------------------------------
echo                  6 : %s6% : %s16% : %s26% : %s36% : %s46% : %s56% : %s66% : %s76% : %s86% : %s96% : 6
echo                     ---------------------------------------
echo                  7 : %s7% : %s17% : %s27% : %s37% : %s47% : %s57% : %s67% : %s77% : %s87% : %s97% : 7
echo                     ---------------------------------------
echo                  8 : %s8% : %s18% : %s28% : %s38% : %s48% : %s58% : %s68% : %s78% : %s88% : %s98% : 8
echo                     ---------------------------------------
echo                  9 : %s9% : %s19% : %s29% : %s39% : %s49% : %s59% : %s69% : %s79% : %s89% : %s99% : 9
echo                     ---------------------------------------
echo                      0   1   2   3   4   5   6   7   8   9
set /p "setn=>"
set set=s%setn%
if !%set%!==0 (set /a %set% = 1) else set /a %set% = 0
if %setn%==quit goto end
if %setn%==a goto check
if %setn%==reset goto bigin
if %setn%==d goto right
goto desplay
:check
for /l %%c in (11,1,99) do (set /a c=%%c & call :sum)
for /l %%c in (11,1,99) do set /a s%%c=!x%%c!
for /l %%j in (-30,1,130) do set /a x%%j = 0
goto desplay
:sum
set /a m1=%c% - 1
set /a p1=%c% + 1
set /a m11=%c% - 11
set /a m10=%c% - 10
set /a m9=%c% - 9
set /a p10=%c% + 10
set /a p11=%c% + 11
set /a p9=%c% + 9
set /a sum=(!s%p1%!)+(!s%m1%!)+(!s%p9%!)+(!s%m9%!)+(!s%p10%!)+(!s%m10%!)+(!s%p11%!)+(!s%m11%!)
if %sum%==2 set /a x%c%=!s%c%!
if %sum%==3 set /a x%c%=1
if %sum%==1 set /a x%c%=0
if /i %sum% gtr 3 set /a x%c%=0
exit /b
:right
for /l %%k in (11,1,99) do set /a l=%%k - 1 & set /a s%%k=s%%l
goto desplay










:end