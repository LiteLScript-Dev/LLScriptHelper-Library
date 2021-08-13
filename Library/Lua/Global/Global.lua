

---输出信息到控制台\n这是为了方便输出信息而设计的便捷函数
---@vararg any
---@return nil 
function log(...)
end

---输出带颜色文本
---@param color string 此行输出的颜色
---@vararg any
---@return nil 
function colorLog(color,...)
end

---推迟一段时间执行函数
---@param func fun(:): 待执行的函数
---@param msec number 推迟执行的时间（毫秒）
---@return number 此任务ID
function setTimeout(func,msec)
end