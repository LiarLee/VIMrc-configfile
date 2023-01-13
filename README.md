## Change Log
2022-05-31 迁移Neovim， 修复了之前配置中的一些不能正常工作的部分。  
2022-07-21 补充Nerdtree。  
2022-10-13 添加vim-kubernetes plugin 和 keybinding.  
2023-01-01 检查之前的配置， 移除无效的配置文件， 添加新的功能， 使用快捷键检查缩进。
2023-03-01 添加了一个奇怪的动画 - LEADER+m。


## Installation guide
迁移和安装的说明： 
1. clone the project to temp foloder.
```bash
git clone git@github.com:LiarLee/VIMrc-configfile.git
```

2. move to .config
```bash
mv ./VIMrc-configfile ~/.config/nvim/
```

3. VIMPLUG Install or update.
```bash
PlugInstall
``` 

4. Coc install or update.
```bash
CocInstall
```

5. DONE. 
