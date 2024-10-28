local _M = {}

_M.name = "app_launch"
_M.description = "app启动或切换"

local apps = require "keybindings_config".apps

local log = hs.logger.new("appLaunch")

-- App显示或隐藏
local function toggleAppByBundleId(bundleID)
    local frontApp = hs.application.frontmostApplication()
    local app = hs.application.get(bundleID)
    -- 应用不存在，启动
    if not app then
        log.d(string.format("launch app: %s", bundleID))
        hs.application.launchOrFocusByBundleID(bundleID)
        return
    end
    -- 应用存在，获取窗口列表
    local windows = app:allWindows()
    -- 没有窗口，启动
    if #windows == 0 then
        log.d(string.format("launch app: %s", bundleID))
        hs.application.launchOrFocusByBundleID(bundleID)
        return
    end

    -- 有多个窗口，遍历窗口
    local focusedWindow = app:focusedWindow()
    if #windows > 1 then
        local nextWindow
        if focusedWindow then
            -- 当前有聚焦窗口，获取下一个窗口
            for i, w in ipairs(windows) do
                if w:id() == focusedWindow:id() then
                    nextWindow = windows[(i % #windows) + 1]
                    break
                end
            end
        else
            -- 当前没有聚焦窗口，获取第一个窗口
            nextWindow = windows[1]
        end
        log.d(string.format("focus window: %s", nextWindow:title()))
        nextWindow:focus()
        return
    end
    -- 只有一个窗口，判断是否隐藏
    if frontApp:bundleID() == bundleID and frontApp:focusedWindow() then
        log.d(string.format("hide app: %s", bundleID))
        frontApp:hide()
    else
        log.d(string.format("launch app: %s", bundleID))
        hs.application.launchOrFocusByBundleID(bundleID)
    end
end

hs.fnutils.each(
    apps,
    function(item)
        hs.hotkey.bind(
            item.prefix,
            item.key,
            item.message,
            function(pressed)
                toggleAppByBundleId(item.bundleId)
            end
        )
    end
)
