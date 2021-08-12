---@class mc mc通用接口 
 mc = {}


---生成一个浮点数坐标对象
---@param x Float x 坐标
---@param y Float y 坐标
---@param z Float z 坐标
---@param dimid  number 维度ID：0 代表主世界，1 代表下界，2 代表末地
---@return FloatPos 一个浮点数坐标对象
function mc.newFloatPos(x,y,z,dimid )
end

---获取BDS服务端版本号
---@return string 服务端版本号字符串，格式形如v1.17.10
function mc.getBDSVersion()
end

---执行一条后台命令
---@param cmd string 待执行的命令
---@return boolean 是否执行成功
function mc.runcmd(cmd)
end

---执行一条后台命令（强化版）
---@param cmd string 指令内容
---@return ObjectRuncmdEx 命令执行结果Object
function mc.runcmdEx(cmd)
end

---通过方块坐标手动生成方块对象
---通过此函数来手动生成对象，注意，你要获取的方块必须处于已被加载的范围中，否则会出现问题
---@param pos IntPos 方块坐标对象（或者使用x, y, z, dimid来确定方块位置）
---@return Block|nil 如返回值为 nil 则表示获取方块失败
---注意：不要长期保存一个方块对象
---当方块对象对应的方块被销毁时，对应的方块对象将变得无效。因此，如果有长期操作某个方块的需要，请通过上述途径获取实时的方块对象
function mc.getBlock(pos)
end

---通过方块坐标手动生成方块对象
---通过此函数来手动生成对象，注意，你要获取的方块必须处于已被加载的范围中，否则会出现问题
---@param x number 方块x坐标
---@param y number 方块y坐标
---@param z number 方块z坐标
---@param dimid number 方块维度
---@return Block|nil 如返回值为 nil 则表示获取方块失败
---注意：不要长期保存一个方块对象
---当方块对象对应的方块被销毁时，对应的方块对象将变得无效。因此，如果有长期操作某个方块的需要，请通过上述途径获取实时的方块对象
function mc.getBlock(x,y,z,dimid)
end

---设置指定位置的方块
---@param pos IntPos 目标方块位置
---@param block Block|string 要设置成的方块对象或者方块名
---@return boolean 是否成功设置
function mc.setBlock(pos,block)
end

---设置指定位置的方块
---通过此函数，将一个坐标对应的方块设置成另一个，类似于命令 /setblock
---如果使用方块名称，则方块名称须为标准类型名，且首字母大写，类似于 Stone
---否则，函数将执行失败
---@param x number 方块x坐标
---@param y number 方块y坐标
---@param z number 方块z坐标
---@param dimid number 方块维度
---@param block Block|string 要设置成的方块对象或者方块名
---@return boolean 是否成功设置
function mc.setBlock(x,y,z,dimid,block)
end

---在指定位置生成粒子效果
---@param pos IntPos 目标方块位置
---@param type string 要生成的粒子效果名称（可查阅wiki得知）
---@return boolean 是否成功生成
function mc.spawnParticle(pos,type)
end

---在指定位置生成粒子效果
---@param x number 方块x坐标
---@param y number 方块y坐标
---@param z number 方块z坐标
---@param type string 要生成的粒子效果名称（可查阅wiki得知）
---@return boolean 是否成功生成
function mc.spawnParticle(x,y,z,type)
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
---@param event ""onPreJoin"" 玩家开始连接服务器
---@param callback fun(player:Player): 事件回调
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
---@param callback fun(player:Player): 事件回调
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
---@param callback fun(player:Player): 事件回调
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
---@param callback fun(player:Player): 事件回调
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
---@param callback fun(player:Player): 事件回调
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
---@param callback fun(player:Player): 事件回调
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
---@param callback fun(player:Player): 事件回调
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
---@param callback fun(player:Player,isSneaking:boolean): 事件回调
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
---@param callback fun(player:Player,item:Item): 事件回调
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
---@param callback fun(player:Player,block:Block): 事件回调
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
---@param callback fun(player:Player,slotNum:number,oldItem:Item,newItem:Item): 事件回调
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
---@param callback fun(player:Player,pos:FloatPos): 事件回调
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
---@param callback fun(player:Player,slotNum:number,item:Item): 事件回调
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