---📅 通用日志 API\n---@class logger 
 logger = {}

---设置日志是否输出到控制台
---@param isOpen boolean 设置日志是否输出到控制台
---@param logLevel? number （可选参数）控制台的日志输出等级，默认为4
---@return any 
function logger.setConsole(isOpen,logLevel)
end

---设置日志是否输出到文件
---@param filepath string 设置日志输出到的文件路径
---@param logLevel number （可选参数）文件的最小日志输出等级，默认为4
---@return any 
function logger.setFile(filepath,logLevel)
end

---
---@return  
function logger.()
end