

---输出信息到控制台\n这是为了方便输出信息而设计的便捷函数
---@param data1? any 
---@param data2? any 
---@param data3?  
---@return nil 
function log(data1,data2,data3)
end

---输出带颜色文本
---@param color string 此行输出的颜色
---@param data1? any 
---@param data2? any 
---@return nil 
function colorLog(color,data1,data2)
end

---推迟一段时间执行函数
---@param func fun(:): 待执行的函数
---@param msec number 推迟执行的时间（毫秒）
---@return number 此任务ID
function setTimeout(func,msec)
end