---@diagnostic disable: undefined-global
---获取所有在线玩家的列表
---
---此函数会返回一个玩家对象的数组，其中每个对象都对应了一个服务器中的玩家
---@return table
function mc.getOnlinePlayers() return table end


---@param info string 玩家的名字或者Xuid
---@return Player 生成的玩家对象
function mc.getPlayer(info) return Player end

---@class Player 玩家对象
---@field name string 玩家名称
---@field pos FloatPos 玩家当前坐标对象
---@field realName string 玩家的真实名字
---@field xuid string 玩家Xuid字符串
---@field uuid string 玩家Uuid字符串
---@field ip string 玩家设备的IP地址
---@field permLevel number 玩家的操作权限等级（0 - 4）	
---@field gameMode number 玩家的游戏模式（0 - 3）
---@field maxHealth number 玩家最大生命值
---@field health number 玩家当前生命值
---@field inAir boolean 玩家当前是否悬空
---@field sneaking boolean 玩家当前是否正在潜行	
Player = {}

---判断玩家是否为OP
---@return boolean 玩家是否为OP
function Player.isOP() end

---断开玩家连接
---@param msg? string 被踢出玩家出显示的断开原因
---如果不传入，默认为“正在从服务器断开连接
function Player.kick(msg) end

---断开玩家连接
---@param msg string (可选参数) 被踢出玩家出显示的断开原因
---如果不传入，默认为“正在从服务器断开连接
function Player.disconnect(msg) end


---@alias msgtype
---|>'0'   # --- '普通消息（Raw）'
---| '1'   # --- '聊天消息（Chat）'
---| '5'   # --- '物品栏上方的消息（Tip）'
---| '9'   # --- 'Json格式消息（Json）'

---发送一个文本消息给玩家
---@param msg string 待发送的文本
---@param type? msgtype 发送的文本消息类型，默认为0
function Player.tell(msg,type) end