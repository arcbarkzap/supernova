# Install a wifi menu and bluetooth menu for fuzzel
install-fuzzel-menus:
    #!/usr/bin/bash
    if ! command -v rustc &> /dev/null; then
        echo "Rust is not installed. Installing Rust..."
        curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
        source $HOME/.cargo/env
    else
        echo "Rust is already installed."
    fi
    if ! command -v iwmenu &> /dev/null; then
        echo "iwmenu is not installed. Installing..."
        cd /tmp
        git clone https://github.com/e-tho/iwmenu
        cd iwmenu
        cargo build --release
    else
        echo "iwmenu is already installed."
    fi
    if ! command -v bzmenu &> /dev/null; then
        echo "bzmenu is not installed. Installing..."
        cd /tmp
        git clone https://github.com/e-tho/bzmenu
        cd bzmenu
        cargo build --release
    else
        echo "bzmenu is already installed."
    fi