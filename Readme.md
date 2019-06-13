# Linux PHP-Switcher
Locates and lists the currently installed PHP-Versions of a Linux and let's you switch between them.

### Usage:
```bash
sh ./phpswitcher
# or
bash ./phpswitcher
```
  
---
  
### Global usage:
```bash
# Add to your `~/.profile`|`~/.bashrc`|`~/.zshrc` file
export PATH="/path/to/phpswitcher:$PATH"

# make the binary executable
chmod +x /path/to/phpswitcher
```
   
  ---
   
### Requirements:
- sudo privileges
- update-alternatives
- sed
   
  ---
  
### Compatibility:
- Shell
- Bash
   
  ---
      
### Tested:
- Ubuntu Terminal
- ZSH
- Terminator
- Xterm
- Tilix
