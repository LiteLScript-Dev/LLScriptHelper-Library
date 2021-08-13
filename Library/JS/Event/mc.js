/**
 * 
 */ 
class mc {
  
  
  


/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onPreJoin"} event 玩家开始连接服务器
 * @param {(player:Player)} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onJoin"} event 玩家进入游戏（加载世界完成）
 * @param {(player:Player)} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onLeft"} event 玩家离开游戏
 * @param {(player:Player)} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onRespawn"} event 玩家重生
 * @param {(player:Player)} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onPlayerDie"} event 玩家死亡
 * @param {(player:Player)} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onPlayerCmd"} event 玩家执行命令
 * @param {(player:Player,cmd:string)boolean} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onChat"} event 玩家发送聊天信息
 * @param {(player:Player,msg:string)boolean} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onChangeDim"} event 玩家切换维度
 * @param {(player:Player)} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onJump"} event 玩家跳跃
 * @param {(player:Player)} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onSneak"} event 玩家切换潜行状态
 * @param {(player:Player,isSneaking:boolean)} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onAttack"} event 玩家攻击实体
 * @param {(player:Player,entity:Entity)boolean} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onUseItem"} event 玩家使用物品
 * @param {(player:Player,item:Item)boolean} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onUseItemOn"} event 玩家对方块使用物品（点击右键）
 * @param {(player:Player,item:Item,block:Block)boolean} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onTakeItem"} event 玩家捡起物品
 * @param {(player:Player,entity:Entity)boolean} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onDropItem"} event 玩家丢出物品
 * @param {(player:Player,item:Item)boolean} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onEat"} event 玩家食用食物
 * @param {(player:Player,item:Item)} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onStartDestroyBlock"} event 玩家开始破坏方块 / 点击左键
 * @param {(player:Player,block:Block)} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onDestroyBlock"} event 玩家破坏方块完成
 * @param {(player:Player,block:Block)boolean} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onPlaceBlock"} event 玩家放置方块
 * @param {(player:Player,block:Block)boolean} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onOpenContainer"} event 玩家打开容器方块
 * @param {(player:Player,block:Block)boolean} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onCloseContainer"} event 玩家关闭容器方块
 * @param {(player:Player,block:Block)boolean} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onInventoryChange"} event 玩家物品栏变化
 * @param {(player:Player,slotNum:number,oldItem:Item,newItem:Item)} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onMove"} event 玩家移动
 * @param {(player:Player,pos:FloatPos)} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onSetArmor"} event 玩家改变盔甲栏
 * @param {(player:Player,slotNum:number,item:Item)} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onUseRespawnAnchor"} event 玩家使用重生锚
 * @param {(player:Player,pos:IntPos)boolean} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)

/**
 * 新增监听器
拦截事件
在LXL的事件监听系统中，一般你可以通过return false来拦截某个可以被拦截的事件。拦截事件意味着在脚本拦截之后BDS将不再处理这个事件，就像他从没发生过一样。
举例：拦截某条聊天事件，会造成所有人都看不到这条聊天消息
不过，拦截事件仅对BDS有效。
也就是说，拦截事件并不影响其他有对应监听的LXL脚本处理这个事件，只是BDS无法再接收到它。
避开误区
有些时候，在某些事件监听内部调用特定的API会造成死循环崩服，请务必避免这些情况的发生
举例：在onConsoleCmd事件监听中调用mc.runcmd(Ex)系列函数执行后台指令，将导致死循环
 * @param {"onOpenContainerScreen"} event 玩家打开容器类GUI
 * @param {(player:Player)boolean} callback 事件回调
 * @returns {boolean} 是否添加成功
 */
 static listen(event,callback)  



}