# My EFI. Not yours.

I do not accept help requests, issues, or queries about my EFI. End of story.

# Hardware

- Form factor: Laptop
- Model: HP Notebook 17 by1022cl
- PSU: Laptop Battery
- CPU: Intel Core i5-8265U
- iGPU: Intel UHD 620
- dGPU: none
- Memory (*): 16GB DDR4 RAM
- Storage (*): SATA SSD
- Optical drive (*): none
- Wi-Fi (*): Intel AX200NGW
- Bluetooth (*): Intel AX200NGW
- Ethernet: Realtek RTL8111 Gigabit Ethernet
- Audio: Realtek ALC236

- macOS: Sequoia
- Bootloader: OpenCore 1.0.4

(*): Hardware has been changed from the original.

# Tools

- editefi: An editing script for my EFI. It opens the config in ProperTree, then copies and (optionally) pushes the result to GitHub.

# Notes

- CFG lock disable
    - F.72: `setup_var_cv CpuSetup 0x3E 0x01 0x00`
