
---时间对象
---@class Time
---@field Y Number 年份数值（4位）
---@field M Number 月份数值
---@field D Number 天数数值
---@field h Number 小时数值（24小时制）
---@field m Number 分钟数值
---@field s Number 秒数值
---@field ms Number 毫秒数值
Time ={}

---获取当前时间字符串
---@return string 当前的时间字符串，使用当地时区和24小时制。形如`2021-04-03 19:15:01`
---[文档](https://lxl.litetitle.com/#/zh_CN/Development/SystemAPI/SystemInfo)
---LiteXLoader 系统功能接口
function system.getTimeStr() end

---获取当前的时间对象
---@return Time 当前的时间对象
---[文档](https://lxl.litetitle.com/#/zh_CN/Development/SystemAPI/SystemInfo)
---LiteXLoader 系统功能接口
function system.getTimeObj() end

---随机生成一个 GUID  字符串
---@return string 一个随机生成的唯一标识符GUID
---[文档](https://lxl.litetitle.com/#/zh_CN/Development/SystemAPI/SystemInfo)
---LiteXLoader 系统功能接口
function system.randomGuid() end