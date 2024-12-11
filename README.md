# DWM + slstatus Configuration

This repository contains my customized configuration files for [dwm](https://dwm.suckless.org/) (Dynamic Window Manager) and [slstatus](https://tools.suckless.org/slstatus/) (status monitor for dwm). These configurations are tailored for a minimalist, efficient workflow with a clean aesthetic.

## Features

- **Customized dwm:**
  - Keybindings for enhanced productivity.
  - Patched with useful features like:
  - Gaps between windows.
  - Systray support.
  - Additional layout options.
  - Theme with a focus on simplicity and readability.

- **slstatus Integration:**
  - CPU usage.
  - Memory usage.
  - Free disk space
  - Volume level.
  - Battery status.
  - Minimal and non-intrusive.

## Screenshots

Add screenshots here to showcase your setup. For example:

![image](https://github.com/user-attachments/assets/c06fe5fd-3b7f-4e99-8cc4-586488d5a57d)

![image](https://github.com/user-attachments/assets/1904da73-0eb1-4d55-ba56-32c9ff7624b8)


## Installation

### Prerequisites

- A working C compiler (e.g., `gcc`).
- `make` tool.
- X11 server.

### Steps

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/roman-zvir/dwm_config.git
   cd dwm_config
   ```
2. **Replace the `config.h` Files:**
   - Copy the provided `config.h` files into the respective directories of your dwm and slstatus installations:
     
     ```bash
     cp dwm-config.h /path/to/dwm/config.h
     cp slstatus-config.h /path/to/slstatus/config.h
     ```

3. **Rebuild dwm and slstatus:**
   - For dwm:
     ```bash
     cd /path/to/dwm
     sudo make clean install
     ```
   - For slstatus:
     ```bash
     cd /path/to/slstatus
     sudo make clean install
     ```

4. **Restart dwm:**
   
   Log out and log back in to start using the customized dwm with slstatus.


## License

This configuration is available under the MIT License. See the `LICENSE` file for details.

## Acknowledgments

- [suckless.org](https://suckless.org/) for creating such minimal and efficient software.
- The open-source community for patches and inspirations.
