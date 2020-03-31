# sudo apt-get install winetricks
# winetricks prefix=default
# winetricks dotnet45

build:
	GOOS=windows GOARCH=386 go build -o simple.exe .
b:
	cd wix311-binaries/ && wine candle.exe ../Product.wxs -out _Product.wixobj -nologo

# exec {candle.exe -out ..\simple.wixobj ..\simple.wxs}
# exec {light.exe -b ..\ -ext WixUIExtension ..\simple.wixobj -out .\simple.msi}