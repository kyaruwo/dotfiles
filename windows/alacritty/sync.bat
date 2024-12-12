if not exist %appdata%\alacritty (
    mkdir %appdata%\alacritty
    curl -L -o  %appdata%\alacritty\alacritty.exe https://github.com/alacritty/alacritty/releases/download/v0.14.0/Alacritty-v0.14.0-portable.exe

    echo [InternetShortcut]> alacritty.url
    echo URL=file:///%appdata%\alacritty\alacritty.exe>> alacritty.url
    echo IconFile=%appdata%\alacritty\alacritty.exe>> alacritty.url
    echo IconIndex=^0>> alacritty.url
)

copy alacritty.toml %appdata%\alacritty\alacritty.toml