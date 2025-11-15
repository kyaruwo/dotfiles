if not exist %appdata%\syncthing (
    mkdir %appdata%\syncthing
    curl -L -o %appdata%\syncthing\syncthing.zip https://github.com/syncthing/syncthing/releases/download/v2.0.11/syncthing-windows-amd64-v2.0.11.zip
    powershell.exe Expand-Archive -Path %appdata%\syncthing\syncthing.zip -DestinationPath %appdata%\syncthing
    xcopy %appdata%\syncthing\syncthing-windows-amd64-v2.0.11 %appdata%\syncthing /s
    rmdir %appdata%\syncthing\syncthing-windows-amd64-v2.0.11 /s /q
    del %appdata%\syncthing\syncthing.zip

    echo [InternetShortcut]> "(web)GUI.url"
    echo URL=http://127.0.0.1:8384/>> "(web)GUI.url"

    echo taskkill /F /IM syncthing.exe> "(re)start.bat"
    echo taskkill /F /IM syncthing.exe>> "(re)start.bat"
    echo taskkill /F /IM syncthing.exe>> "(re)start.bat"
    echo taskkill /F /IM syncthing.exe>> "(re)start.bat"
    echo %appdata%\syncthing\syncthing.exe --no-console>> "(re)start.bat"
)
