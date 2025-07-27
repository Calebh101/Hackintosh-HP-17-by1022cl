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

(*): Hardware has been changed from the original.

# Tools

- editefi: An editing script for my EFI. It opens the config in ProperTree, then copies and (optionally) pushes the result to GitHub.

# Resources

- A copy of my BIOS, from HP's website.

# Notes

- CFG lock disable
    - Command:
        - F.72: `setup_var_cv CpuSetup 0x3E 0x01 0x00`
- Set DVMT
    - Command:
        - F.72: `setup_var_cv SaSetup 0x107 0x01 VALUE`
    - Values (replace `VALUE` with the hexadecimal format (E.G. 0x02)):
        - OMB: 0
        - 4MB: 240
        - 8MB: 241
        - 12MB: 242
        - 16MB: 243
        - 20MB: 244
        - 24MB: 245
        - 28MB: 246
        - 32MB: 1 (default)
        - 32MB/F7: 247
        - 36MB: 248
        - 40MB: 249
        - 44MB: 250
        - 48MB: 251
        - 52MB: 252
        - 56MB: 253
        - 60MB: 254
        - 64MB: 2
