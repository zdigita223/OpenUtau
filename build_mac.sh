dotnet restore OpenUtau -r osx-x64
dotnet msbuild OpenUtau -t:BundleApp -p:Configuration=Release -p:RuntimeIdentifier=osx-x64 -p:UseAppHost=true
cp OpenUtau/Assets/OpenUtau.icns OpenUtau/bin/Release/netcoreapp3.1/osx-x64/publish/OpenUtau.app/Contents/Resources/
rm *.dmg
create-dmg OpenUtau/bin/Release/netcoreapp3.1/osx-x64/publish/OpenUtau.app
