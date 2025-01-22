# Update Manager Script

This script serves as a management tool for updating system packages and applications across various package managers. It allows you to update APT, Snap, and Flatpak packages and also provides options to list available updates.

## Features

- List available updates for APT, Snap, and Flatpak.
- Update all packages (APT, Snap, Flatpak) at once.
- Update each package manager separately (APT, Snap, or Flatpak).
- Simple and interactive menu for easy use.

## How It Works

### Menu Options:
1. **List Available Updates**: Displays the available updates for APT, Snap, and Flatpak.
2. **Update All (APT, Snap, Flatpak)**: Updates all packages in APT, Snap, and Flatpak.
3. **Update APT**: Updates only APT packages.
4. **Update Snap**: Updates only Snap packages.
5. **Update Flatpak**: Updates only Flatpak packages.
6. **Exit**: Exits the script.

### Functions:
- **list_updates**: Lists all available updates for APT, Snap, and Flatpak.
- **update_apt**: Updates APT packages.
- **update_snap**: Updates Snap packages.
- **update_flatpak**: Updates Flatpak packages.

## Usage

1. Clone this repository:
    ```bash
    git clone https://github.com/yourusername/update-manager.git
    cd update-manager
    ```

2. Make the script executable:
    ```bash
    chmod +x all-update.sh
    ```

3. Run the script:
    ```bash
    ./all-update.sh
    ```

4. Follow the on-screen menu to choose the desired option for updating your system.

## Requirements

- `sudo` privileges to run package management commands.
- APT, Snap, and Flatpak package managers installed.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE.txt) file for details.

