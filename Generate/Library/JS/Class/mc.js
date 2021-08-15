/**
 * mc通用接口
 */ 
class mc {
    
  




/**
 * 生成一个浮点数坐标对象
 * @param {Float} x x 坐标
 * @param {Float} y y 坐标
 * @param {Float} z z 坐标
 * @param {number} dimid  维度ID：0 代表主世界，1 代表下界，2 代表末地
 * @returns {FloatPos} 一个浮点数坐标对象
 */
 static newFloatPos(x,y,z,dimid )

/**
 * 获取BDS服务端版本号
 * @returns {string} 服务端版本号字符串，格式形如v1.17.10
 */
 static getBDSVersion()

/**
 * 执行一条后台命令
 * @param {string} cmd 待执行的命令
 * @returns {boolean} 是否执行成功
 */
 static runcmd(cmd)

/**
 * 执行一条后台命令（强化版）
 * @param {string} cmd 指令内容
 * @returns {ObjectRuncmdEx} 命令执行结果Object
 */
 static runcmdEx(cmd)

/**
 * 通过方块坐标手动生成方块对象
通过此函数来手动生成对象，注意，你要获取的方块必须处于已被加载的范围中，否则会出现问题
 * @param {IntPos} pos 方块坐标对象（或者使用x, y, z, dimid来确定方块位置）
 * @returns {Block|null} 如返回值为 null 则表示获取方块失败
注意：不要长期保存一个方块对象
当方块对象对应的方块被销毁时，对应的方块对象将变得无效。因此，如果有长期操作某个方块的需要，请通过上述途径获取实时的方块对象
 */
 static getBlock(pos)

/**
 * 通过方块坐标手动生成方块对象
通过此函数来手动生成对象，注意，你要获取的方块必须处于已被加载的范围中，否则会出现问题
 * @param {number} x 方块x坐标
 * @param {number} y 方块y坐标
 * @param {number} z 方块z坐标
 * @param {number} dimid 方块维度
 * @returns {Block|null} 如返回值为 null 则表示获取方块失败
注意：不要长期保存一个方块对象
当方块对象对应的方块被销毁时，对应的方块对象将变得无效。因此，如果有长期操作某个方块的需要，请通过上述途径获取实时的方块对象
 */
 static getBlock(x,y,z,dimid)

/**
 * 设置指定位置的方块
 * @param {IntPos} pos 目标方块位置
 * @param {Block|string} block 要设置成的方块对象或者方块名
 * @returns {boolean} 是否成功设置
 */
 static setBlock(pos,block)

/**
 * 设置指定位置的方块
通过此函数，将一个坐标对应的方块设置成另一个，类似于命令 /setblock
如果使用方块名称，则方块名称须为标准类型名，且首字母大写，类似于 Stone
否则，函数将执行失败
 * @param {number} x 方块x坐标
 * @param {number} y 方块y坐标
 * @param {number} z 方块z坐标
 * @param {number} dimid 方块维度
 * @param {Block|string} block 要设置成的方块对象或者方块名
 * @returns {boolean} 是否成功设置
 */
 static setBlock(x,y,z,dimid,block)

/**
 * 在指定位置生成粒子效果
 * @param {IntPos} pos 目标方块位置
 * @param {string} type 要生成的粒子效果名称（可查阅wiki得知）
 * @returns {boolean} 是否成功生成
 */
 static spawnParticle(pos,type)

/**
 * 在指定位置生成粒子效果
 * @param {number} x 方块x坐标
 * @param {number} y 方块y坐标
 * @param {number} z 方块z坐标
 * @param {string} type 要生成的粒子效果名称（可查阅wiki得知）
 * @returns {boolean} 是否成功生成
 */
 static spawnParticle(x,y,z,type)

/**
 * 注册一个新的玩家命令
 * @param {string} cmd 待注册的命令
 * @param {string} description 命令描述文本
 * @param {(player:Player,args:Array@string)boolean} callback 注册的这个命令被执行时，接口自动调用的回调函数
 * @param {number} level （可选参数）命令的注册等级，默认为 0 ，即所有人都可以执行
 * @returns {boolean} 是否成功注册
 */
 static regPlayerCmd(cmd,description,callback,level)

/**
 * 注册一个新的后台控制台命令
 * @param {string} cmd 待注册的命令
 * @param {string} description 命令描述文本
 * @param {(args:Array@string)boolean} callback 注册的这个命令被执行时，接口自动调用的回调函数
 * @returns {boolean} 是否成功注册
 */
 static regConsoleCmd(cmd,description,callback)

/**
 * 模拟产生一个控制台命令输出
 * @param {string} output 模拟产生的命令输出
 * @returns {boolean} 是否成功执行
 */
 static sendCmdOutput(output)

/**
 * 获取一个玩家对象
 * @param {string} info 玩家的名字或者Xuid
 * @returns {Player} 生成的玩家对象
 */
 static getPlayer(info)

/**
 * 获取所有在线玩家的列表
 * @returns {Player[]} 在线的玩家对象列表
 */
 static getOnlinePlayers()

/**
 * 广播一个文本消息给所有玩家
 * @param {string} msg 待发送的文本
 * @param {number} type? 发送的文本消息类型，默认为0
 * @returns {boolean} 是否成功发送
 */
 static broadcast(msg,type)




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
 * @param {(player:Player)function} callback 事件回调
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
 * @param {(player:Player)function} callback 事件回调
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
 * @param {(player:Player)function} callback 事件回调
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
 * @param {(player:Player)function} callback 事件回调
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
 * @param {(player:Player)function} callback 事件回调
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
 * @param {(player:Player)function} callback 事件回调
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
 * @param {(player:Player)function} callback 事件回调
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
 * @param {(player:Player,isSneaking:boolean)function} callback 事件回调
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
 * @param {(player:Player,item:Item)function} callback 事件回调
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
 * @param {(player:Player,block:Block)function} callback 事件回调
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
 * @param {(player:Player,slotNum:number,oldItem:Item,newItem:Item)function} callback 事件回调
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
 * @param {(player:Player,pos:FloatPos)function} callback 事件回调
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
 * @param {(player:Player,slotNum:number,item:Item)function} callback 事件回调
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
