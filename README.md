# my-dotfiles

Look at my greatest creation. This dotfiles allow me to be highly productive in my long hours of work !

### What does this configuration contain?

This configuration allows you to quickly install tools that allow you to develop. It contains for example tools for git, text editors, communication tools, testing tools, virtualization and dockerization tools, debugging tools, storage. (see /homebrew/apps.sh)


### Files Structure

```
├── homebrew
│   ├── apps.sh
│   └── install.sh
├── macos
│   └── defaults.sh
├── README.md
├── start.sh
└── zsh
```

### How to use ?

Clone repository


```
git clone https://github.com/brunoxd13/my-dotfiles
```

* Install full tools
Run start
```
cd ./my-dotfiles
./start.sh
```

This scripts run to update your macOS and install developers tools.

* Install only zsh config
| Please see [How to install oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)

```
cp ./my-dotfiles/zsh/.zshrc $HOME/.zshrc
```

* Install only apps
```
cd ./my-dotfiles/homebrew
./install.sh
```

### Warning

This repository contains tools that allow you to quickly install applications that speed up the development process.
Please check all files before installing or configuring these files on your respective computer.