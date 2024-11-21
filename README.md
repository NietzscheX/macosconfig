# macosconfig
* ~/.tmux.conf
* ~/.Hammerspoon
* ~/.zshrc


## 经过测试发现，其实只需要使用Raycast + tmux.conf + zshrc 就够了，hammerspoon还经常存在移动窗口的bug可以废弃了。

* 因为Raycast使用了command +K作为内置的卸载功能，防止冲突就不设置command +k
* 
* command + H 移动到左边屏幕
* command + L 移动到右边屏幕
* control + shift + H 左侧一半
* control + shift + L 右侧一半
* control + shift + J 下边一半
* control + shift + K 上边一半
* control + shift + M 最大化
* control + shift + F 全屏
* control + shift + N 合适
* control + shift + C 中间
* option + Q  QQ
* option + W  微信
* option + E  edge
* option + R  rustover
* option + T  iterm
* option + D  dingtalk
* option + Z  zed
* option + C  chrome
* option + V  vscode
* option + space Raycast的搜索启动

## 使用karabiner把capslock映射成注释符号//
```shell
{
    "description": "Caps Lock to // ",
    "enabled": false,
    "manipulators": [
        {
            "from": {
                "key_code": "caps_lock",
                "modifiers": { "optional": ["any"] }
            },
            "to": [{ "shell_command": "osascript -e 'tell application \"System Events\" to keystroke \"//\"'" }],
            "type": "basic"
        }
    ]
}
```
  
