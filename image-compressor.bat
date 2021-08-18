@echo off

:: loop throught all the images in the current directory
for %%f in (*.png *.jpg *.jpeg) do (
	:: compress the image
	ffmpeg -i "%%f" "%%~nf-compressed.webp"
	:: minify the image resolution
	:: scale width = 257
	:: scale height = -1 = auto
	ffmpeg -i "%%f" -vf scale=275:-1 "%%~nf-compressed-min.webp"
)

:: all done
echo.
echo.
echo.
pause