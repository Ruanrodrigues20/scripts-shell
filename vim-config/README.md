# Vim Configuration and Management Scripts

This repository contains two shell scripts for managing Vim configurations and NPM packages. These scripts help with installing, configuring, and removing Vim along with necessary plugins, and also handle the installation and removal of NPM packages.

## Scripts Overview

### `vim-config.sh`

This script automates the setup of Vim and its essential configurations. It performs the following actions:
- Installs Vim Plug for managing Vim plugins.
- Installs necessary NPM packages (`curl`, `nodejs`, `npm`, `pyright`, `bash-language-server`).
- Copies the Vim configuration file (`config.txt`) to the user's home and root directories.
- Installs Vim plugins for both the user and root.

#### Functions:
- **instalVimPlug**: Installs Vim Plug.
- **intallNPM**: Installs `curl`, `nodejs`, `npm`, `pyright`, and `bash-language-server` globally.
- **copVimrcHome**: Copies the `.vimrc` configuration file for the root user.
- **installPlugins**: Installs the Vim plugins for the root user.
- **configVimUser**: Configures Vim for the regular user and installs plugins.

### `remove-vim-config.sh`

This script removes Vim, its configuration, and NPM packages. It also reinstalls Vim if needed. It performs the following actions:
- Removes NPM and its packages globally.
- Restores the default Vim configuration.
- Removes Vim completely.
- Optionally, reinstalls Vim.

#### Functions:
- **removeNPM**: Removes `npm`, `nodejs`, and all globally installed NPM packages.
- **uninstallNPM**: Uninstalls `pyright` and `bash-language-server` packages.
- **restoreVimrc**: Restores the original Vim configuration.
- **removeVim**: Uninstalls Vim completely.
- **installVim**: Reinstalls Vim.
- **reinstallVim**: A combination of the above functions for a full Vim reinstallation.

## Installation

To use these scripts, follow these steps:

1. Clone this repository:
    ```bash
    git clone https://github.com/yourusername/vim-config.git
    cd vim-config
    ```

2. Make the scripts executable:
    ```bash
    chmod +x vim-config.sh remove-vim-config.sh
    ```

3. Run the configuration script to set up Vim and NPM packages:
    ```bash
    ./vim-config.sh
    ```

4. Run the removal script if you need to uninstall Vim and related packages:
    ```bash
    ./remove-vim-config.sh
    ```

## Requirements

- `curl`
- `nodejs`
- `npm`
- Vim

Make sure these are installed on your system before running the scripts.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

