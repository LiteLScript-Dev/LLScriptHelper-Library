---mc通用接口
---@class mc 
 mc = {}

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onPreJoin"" 玩家开始连接服务器
---@param callback fun(player:Player):function 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onJoin"" 玩家进入游戏（加载世界完成）
---@param callback fun(player:Player):function 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onLeft"" 玩家离开游戏
---@param callback fun(player:Player):function 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onRespawn"" 玩家重生
---@param callback fun(player:Player):function 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onPlayerDie"" 玩家死亡
---@param callback fun(player:Player):function 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onPlayerCmd"" 玩家执行命令
---@param callback fun(player:Player,cmd:string):boolean 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onChat"" 玩家发送聊天信息
---@param callback fun(player:Player,msg:string):boolean 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onChangeDim"" 玩家切换维度
---@param callback fun(player:Player):function 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onJump"" 玩家跳跃
---@param callback fun(player:Player):function 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onSneak"" 玩家切换潜行状态
---@param callback fun(player:Player,isSneaking:boolean):function 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onAttack"" 玩家攻击实体
---@param callback fun(player:Player,entity:Entity):boolean 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onUseItem"" 玩家使用物品
---@param callback fun(player:Player,item:Item):boolean 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onUseItemOn"" 玩家对方块使用物品（点击右键）
---@param callback fun(player:Player,item:Item,block:Block):boolean 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onTakeItem"" 玩家捡起物品
---@param callback fun(player:Player,entity:Entity):boolean 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onDropItem"" 玩家丢出物品
---@param callback fun(player:Player,item:Item):boolean 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onEat"" 玩家食用食物
---@param callback fun(player:Player,item:Item):function 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onStartDestroyBlock"" 玩家开始破坏方块 / 点击左键
---@param callback fun(player:Player,block:Block):function 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onDestroyBlock"" 玩家破坏方块完成
---@param callback fun(player:Player,block:Block):boolean 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onPlaceBlock"" 玩家放置方块
---@param callback fun(player:Player,block:Block):boolean 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onOpenContainer"" 玩家打开容器方块
---@param callback fun(player:Player,block:Block):boolean 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onCloseContainer"" 玩家关闭容器方块
---@param callback fun(player:Player,block:Block):boolean 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onInventoryChange"" 玩家物品栏变化
---@param callback fun(player:Player,slotNum:number,oldItem:Item,newItem:Item):function 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onMove"" 玩家移动
---@param callback fun(player:Player,pos:FloatPos):function 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onSetArmor"" 玩家改变盔甲栏
---@param callback fun(player:Player,slotNum:number,item:Item):function 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onUseRespawnAnchor"" 玩家使用重生锚
---@param callback fun(player:Player,pos:IntPos):boolean 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end

---新增监听器
---拦截事件
---在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
---举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
---不过，拦截事件仅对BDS有效。
---也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
---避开误区
---有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
---举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
---@param event ""onOpenContainerScreen"" 玩家打开容器类GUI
---@param callback fun(player:Player):boolean 事件回调
---@return boolean 是否添加成功
function mc.listen(event,callback)
end