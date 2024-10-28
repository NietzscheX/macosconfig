local _M = {}

_M.name = "keybindings_config"
_M.description = "快捷键配置"

-- 快捷键备忘单展示
_M.keybindings_cheatsheet = {
    prefix = {"Option"},
    key = "/",
    message = "Toggle Keybindings Cheatsheet",
    description = "⌥/: Toggle Keybindings Cheatsheet"
}

-- 系统管理
_M.system = {
    restart = {
        prefix = {"Ctrl", "Option", "Command", "Shift"},
        key = "R",
        message = "Restart Computer"
    },
    shutdown = {
        prefix = {"Ctrl", "Option", "Command", "Shift"},
        key = "S",
        message = "Shutdown Computer"
    },
    lock_screen = {
        prefix = {"Ctrl", "Option", "Command", "Shift"},
        key = "L",
        message = "Lock Screen"
    },
    sleep = {
        prefix = {"Ctrl", "Option", "Command", "Shift"},
        key = "Z",
        message = "Sleep Computer"
    }
}

-- 调用默认浏览器快速打开URL
_M.websites = {{
    prefix = {"Option"},
    key = "3",
    message = "ucloud.cn",
    target = "https://passport.ucloud.cn/login?service=https%3A%2F%2Fconsole.ucloud.cn%2F#login"
}, {
    prefix = {"Option"},
    key = "4",
    message = "aws.com",
    target = "https://signin.aws.amazon.com/signin?client_id=arn%3Aaws%3Asignin%3A%3A%3Aconsole%2Fcanvas&redirect_uri=https%3A%2F%2Fconsole.aws.amazon.com%2Fconsole%2Fhome%3FhashArgs%3D%2523%26isauthcode%3Dtrue%26nc2%3Dh_ct%26src%3Dheader-signin%26state%3DhashArgsFromTB_us-east-2_d4e8ede7c168aa03&page=resolve&code_challenge=SRiR4RmByvfBnkVi8gpw0_9ux6qZB3_HOPcpsxDKgpQ&code_challenge_method=SHA-256"
}, {
    prefix = {"Option"},
    key = "5",
    message = "cloudflare.com",
    target = "https://dash.cloudflare.com/login"
}, {
    prefix = {"Option"},
    key = "6",
    message = "bilibili.com",
    target = "https://www.bilibili.com"
}, {
    prefix = {"Option"},
    key = "7",
    message = "youtube.com",
    target = "https://www.youtube.com"
}, {
    prefix = {"Option"},
    key = "8",
    message = "qianwen",
    target = "https://tongyi.aliyun.com/qianwen/"
}, {
    prefix = {"Option"},
    key = "9",
    message = "google.com",
    target = "https://www.google.com"
}, {
    prefix = {"Option"},
    key = "0",
    message = "learn",
    target = "https://v2.scrimba.com/home"
}}
-- > hs.keycodes.currentSourceID() 在console中执行
-- hs.keycodes.currentSourceID()可以获取到当前的输入法
-- com.baidu.inputmethod.BaiduIM.pinyin
-- 简体拼音
-- local pinyin = "com.apple.inputmethod.SCIM.ITABC"
-- 百度输入法
-- local baidu = "com.baidu.inputmethod.BaiduIM.pinyin"

-- 微信输入法
local pinyin = "com.tencent.inputmethod.wetype.pinyin"

-- abc  输入法
local abc = "com.apple.keylayout.ABC"

-- abc extended
-- 需要先添加English 输入法之后才能删除 abc 输入法
local abc_extended = "com.apple.keylayout.USExtended"

-- 手动切换到目标输入法
_M.manual_input_methods = { -- NOTE: message的值不能是中文, 会导致快捷键列表面板显示错位.
{
    prefix = {"Option"},
    key = "1",
    input_method = abc,
    message = "ABC"
}, {
    prefix = {"Option"},
    key = "2",
    input_method = pinyin,
    message = "Pinyin"
}}

-- 自动切换App所对应的输入法, 格式: 应用的bundleID = 输入法简称
-- NOTE: 获取某个App的bundleId的方法举例: osascript -e 'id of app "chrome"'
_M.auto_input_methods = {
    ["com.alibaba.DingTalkMac"] = pinyin,
    ["com.tencent.xinWeChat"] = pinyin,
    ["com.tencent.qq"] = pinyin,
    ["com.microsoft.VSCode"] = abc,
    ["dev.zed.zed"] = abc,
    ["com.apple.finder"] = pinyin,
    ["com.apple.Spotlight"] = pinyin,
    ["org.alacritty"] = pinyin,
    ["md.obsidian"] = pinyin,
    ["com.google.Chrome"] = pinyin,
    ["org.hammerspoon.Hammerspoon"] = abc,
    ["org.virtualbox.app.VirtualBox"] = abc,
    ["com.postmanlabs.mac"] = abc,
    ["com.apple.mail"] = pinyin,
    ["com.microsoft.Excel"] = abc,
    ["mac.im.qihoo.net"] = pinyin,
    ["com.netease.163music"] = pinyin,
    ["com.googlecode.iterm2"] = abc,
    ["dev.warp.Warp-Stable"] = abc,
    ["com.apple.Terminal"] = abc,
    ["com.microsoft.edgemac"] = pinyin
}

-- App启动或隐藏
-- NOTE: 获取某个App的bundleId的方法举例: osascript -e 'id of app "chrome"'
-- 这个需要新增一个功能，如果在双屏的时候，刚好两个屏幕上都是同一个应用的不同实例，如何切换？
-- 比如左侧右侧都是浏览器如何获取焦点
_M.apps = { --    {
--    prefix = {"Option"},
--    key = "H",
--    message = "Hammerspoon Console",
--    bundleId = "org.hammerspoon.Hammerspoon"
-- },
{
    prefix = {"Option"},
    key = "F",
    message = "Finder",
    bundleId = "com.apple.finder"
}, {
    prefix = {"Option"},
    key = "M",
    message = "music",
    bundleId = "com.netease.163music"
}, {
    prefix = {"Option"},
    key = "R",
    message = "Windows App",
    bundleId = "com.microsoft.rdc.macos"
}, {
    prefix = {"Option"},
    key = "C",
    message = "Chrome",
    bundleId = "com.google.Chrome"
}, {
    prefix = {"Option"},
    key = "D",
    message = "DingTalk",
    bundleId = "com.alibaba.DingTalkMac"
}, {
    prefix = {"Option"},
    key = "O",
    message = "Obsidian",
    bundleId = "md.obsidian"
}, {
    prefix = {"Option"},
    key = "P",
    message = "Postman",
    bundleId = "com.postmanlabs.mac"
}, {
    prefix = {"Option"},
    key = "E",
    message = "edge",
    bundleId = "com.microsoft.edgemac"
}, {
    prefix = {"Option"},
    key = "V",
    message = "VSCode",
    bundleId = "com.microsoft.VSCode"
}, {
    prefix = {"Option"},
    key = "T",
    message = "iterm2",
    bundleId = "com.googlecode.iterm2"
    -- bundleId = "com.apple.Terminal"
    -- message = "iterm2",
    -- bundleId = "com.googlecode.iterm2"
    -- bundleId = "dev.warp.Warp-Stable"
}, {
    prefix = {"Option"},
    key = "W",
    message = "WeChat",
    bundleId = "com.tencent.xinWeChat"
}, {
    prefix = {"Option"},
    key = "Q",
    message = "QQ",
    bundleId = "com.tencent.qq"
}}

-- 窗口管理: 改变窗口位置
_M.window_position = {
    -- **************************************
    -- 居中
    center = {
        prefix = {"Ctrl", "Option"},
        key = "C",
        message = "Center Window"
    },
    -- **************************************
    -- 左半屏
    left = {
        prefix = {"Ctrl", "Option"},
        key = "H",
        message = "Left Half of Screen"
    },
    -- 右半屏
    right = {
        prefix = {"Ctrl", "Option"},
        key = "L",
        message = "Right Half of Screen"
    },
    -- 上半屏
    up = {
        prefix = {"Ctrl", "Option"},
        key = "K",
        message = "Up Half of Screen"
    },
    -- 下半屏
    down = {
        prefix = {"Ctrl", "Option"},
        key = "J",
        message = "Down Half of Screen"
    },
    -- **************************************
    -- 左上角
    top_left = {
        prefix = {"Ctrl", "Option"},
        key = "Y",
        message = "Top Left Corner"
    },
    -- 右上角
    top_right = {
        prefix = {"Ctrl", "Option"},
        key = "O",
        message = "Top Right Corner"
    },
    -- 左下角
    bottom_left = {
        prefix = {"Ctrl", "Option"},
        key = "U",
        message = "Bottom Left Corner"
    },
    -- 右下角
    bottom_right = {
        prefix = {"Ctrl", "Option"},
        key = "I",
        message = "Bottom Right Corner"
    },
    -- **********************************
    -- 左 1/3（横屏）或上 1/3（竖屏）
    left_1_3 = {
        prefix = {"Ctrl", "Option"},
        key = "Q",
        message = "Left or Top 1/3"
    },
    -- 右 1/3（横屏）或下 1/3（竖屏）
    right_1_3 = {
        prefix = {"Ctrl", "Option"},
        key = "W",
        message = "Right or Bottom 1/3"
    },
    -- 左 2/3（横屏）或上 2/3（竖屏）
    left_2_3 = {
        prefix = {"Ctrl", "Option"},
        key = "E",
        message = "Left or Top 2/3"
    },
    -- 右 2/3（横屏）或下 2/3（竖屏）
    right_2_3 = {
        prefix = {"Ctrl", "Option"},
        key = "R",
        message = "Right or Bottom 2/3"
    }
}

-- 窗口操作: 移动窗口.
_M.window_movement = {
    -- 向上移动窗口
    to_up = {
        prefix = {"Ctrl", "Option", "Command"},
        key = "K",
        message = "Move Upward"
    },
    -- 向下移动窗口
    to_down = {
        prefix = {"Ctrl", "Option", "Command"},
        key = "J",
        message = "Move Downward"
    },
    -- 向左移动窗口
    to_left = {
        prefix = {"Ctrl", "Option", "Command"},
        key = "H",
        message = "Move Leftward"
    },
    -- 向右移动窗口
    to_right = {
        prefix = {"Ctrl", "Option", "Command"},
        key = "L",
        message = "Move Rightward"
    }
}

-- 窗口操作: 改变窗口大小
_M.window_resize = {
    -- 最大化
    max = {
        prefix = {"Ctrl", "Option"},
        key = "M",
        message = "Max Window"
    },
    -- 等比例放大窗口
    stretch = {
        prefix = {"Ctrl", "Option"},
        key = "=",
        message = "Stretch Outward"
    },
    -- 等比例缩小窗口
    shrink = {
        prefix = {"Ctrl", "Option"},
        key = "-",
        message = "Shrink Inward"
    },
    -- 底边向上伸展窗口
    --    stretch_up = {
    --        prefix = {"Ctrl", "Option", "Command", "Shift"},
    --        key = "K",
    --        message = "Bottom Side Stretch Upward"
    --    },
    -- 底边向下伸展窗口
    stretch_down = {
        prefix = {"Ctrl", "Option", "Command", "Shift"},
        key = "J",
        message = "Bottom Side Stretch Downward"
    },
    -- 右边向左伸展窗口
    stretch_left = {
        prefix = {"Ctrl", "Option", "Command", "Shift"},
        key = "H",
        message = "Right Side Stretch Leftward"
    },
    -- 右边向右伸展窗口
    stretch_right = {
        prefix = {"Ctrl", "Option", "Command", "Shift"},
        key = "L",
        message = "Right Side Stretch Rightward"
    }
}

-- 窗口管理: 批量处理
_M.window_batch = {
    -- 最小化所有窗口.
    minimize_all_windows = {
        prefix = {"Ctrl", "Option", "Command"},
        key = "M",
        message = "Minimize All Windows"
    },
    -- 恢复所有最小化的窗口.
    un_minimize_all_windows = {
        prefix = {"Ctrl", "Option", "Command"},
        key = "U",
        message = "Unminimize All Windows"
    },
    -- 关闭所有窗口.
    close_all_windows = {
        prefix = {"Ctrl", "Option", "Command"},
        key = "Q",
        message = "Close All Windows"
    },
    -- 关闭当前激活的窗口.
    close_current_active_window = {
        prefix = {"Ctrl", "Option", "Command", "Shift"},
        key = "K",
        message = "Close current active Window"
    }

}

-- 窗口操作: 移动到上下左右或下一个显示器
_M.window_monitor = {
    to_above_screen = {
        prefix = {"Ctrl", "Option"},
        key = "up",
        message = "Move to Above Monitor"
    },
    to_below_screen = {
        prefix = {"Ctrl", "Option"},
        key = "down",
        message = "Move to Below Monitor"
    },
    to_left_screen = {
        prefix = {"Ctrl", "Option"},
        key = "left",
        message = "Move to Left Monitor"
    },
    to_right_screen = {
        prefix = {"Ctrl", "Option"},
        key = "right",
        message = "Move to Right Monitor"
    },
    to_next_screen = {
        prefix = {"Ctrl", "Option"},
        key = "space", -- 扩展显示器比较少的情况只用这个就可以.
        message = "Move to Next Monitor"
    }
}

return _M
