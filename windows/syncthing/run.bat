if not exist %appdata%\syncthing (
    mkdir %appdata%\syncthing
    curl -L -o %appdata%\syncthing\syncthing.zip https://github.com/syncthing/syncthing/releases/download/v1.28.1/syncthing-windows-amd64-v1.28.1.zip
    powershell.exe Expand-Archive -Path %appdata%\syncthing\syncthing.zip -DestinationPath %appdata%\syncthing
    xcopy %appdata%\syncthing\syncthing-windows-amd64-v1.28.1 %appdata%\syncthing /s
    rmdir %appdata%\syncthing\syncthing-windows-amd64-v1.28.1 /s /q
    del %appdata%\syncthing\syncthing.zip

    echo [InternetShortcut]> gui.url
    echo URL=http://127.0.0.1:8384/>> gui.url
)

%appdata%\syncthing\syncthing.exe --no-console